#!/usr/bin/env bash

################################################################################
# BMAD Expert Author Expansion Pack - Installation Script
#
# This script installs the BMAD Expert Author expansion pack into your
# BMAD-METHOD project. It is idempotent and safe to run multiple times.
#
# Compatible with: Linux, macOS, Windows (Git Bash/WSL)
################################################################################

# set -e  # Exit on error - Disabled to allow continuing on non-critical errors

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Expansion pack metadata
PACK_ID="bmad-expert-author"
PACK_NAME="BMAD Expert Author"
PACK_VERSION="1.0.0"

################################################################################
# Helper Functions
################################################################################

log_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

log_success() {
    echo -e "${GREEN}✓${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

log_error() {
    echo -e "${RED}✗${NC} $1"
}

################################################################################
# Detect project root
################################################################################

detect_project_root() {
    local current_dir="$(pwd)"
    local script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

    # Check if we're running from the expansion pack directory
    if [[ "$(basename "$script_dir")" == "$PACK_ID" ]]; then
        # Try to find project root by looking for .bmad-core
        local test_dir="$script_dir"
        while [[ "$test_dir" != "/" ]]; do
            if [[ -d "$test_dir/.bmad-core" ]]; then
                echo "$test_dir"
                return 0
            fi
            test_dir="$(dirname "$test_dir")"
        done
    fi

    # Check if current directory has .bmad-core
    if [[ -d "$current_dir/.bmad-core" ]]; then
        echo "$current_dir"
        return 0
    fi

    # Not found
    return 1
}

################################################################################
# Validation
################################################################################

validate_environment() {
    log_info "Validating environment..."

    # Detect project root
    if ! PROJECT_ROOT=$(detect_project_root); then
        log_error "Could not find BMAD project root."
        log_error "Please ensure .bmad-core/ directory exists in your project."
        log_error "Run this script from your project root or from the expansion pack directory."
        exit 1
    fi

    log_success "Found BMAD project at: $PROJECT_ROOT"

    # Find source directory
    SOURCE_DIR="$PROJECT_ROOT/expansion-packs/$PACK_ID"
    if [[ ! -d "$SOURCE_DIR" ]]; then
        log_error "Could not find expansion pack source at: $SOURCE_DIR"
        exit 1
    fi

    # Check if this is an update
    INSTALL_DIR="$PROJECT_ROOT/.$PACK_ID"
    if [[ -d "$INSTALL_DIR" ]]; then
        log_warning "Existing installation found. Will update."
        IS_UPDATE=true
    else
        log_info "New installation."
        IS_UPDATE=false
    fi
}

################################################################################
# Installation Functions
################################################################################

create_installation_directory() {
    log_info "Creating installation directory..."
    mkdir -p "$INSTALL_DIR"
    log_success "Installation directory ready: .$PACK_ID/"
}

copy_expansion_files() {
    log_info "Copying expansion pack files..."

    # Define directories to copy
    local dirs=("agents" "tasks" "templates" "checklists" "data" "workflows")

    for dir in "${dirs[@]}"; do
        if [[ -d "$SOURCE_DIR/$dir" ]]; then
            log_info "  Copying $dir/..."
            mkdir -p "$INSTALL_DIR/$dir"
            cp -r "$SOURCE_DIR/$dir"/* "$INSTALL_DIR/$dir/" 2>/dev/null || true
        fi
    done

    # Copy README
    if [[ -f "$SOURCE_DIR/README.md" ]]; then
        cp "$SOURCE_DIR/README.md" "$INSTALL_DIR/"
    fi

    # Copy QUICK-START if exists
    if [[ -f "$SOURCE_DIR/QUICK-START.md" ]]; then
        cp "$SOURCE_DIR/QUICK-START.md" "$INSTALL_DIR/"
    fi

    log_success "Files copied successfully"
}

setup_claude_commands() {
    log_info "Setting up Claude Code integration..."

    local claude_dir="$PROJECT_ROOT/.claude/commands/BMad/agents"

    if [[ ! -d "$PROJECT_ROOT/.claude" ]]; then
        log_warning "Claude Code directory not found. Skipping Claude integration."
        return 0
    fi

    # Create commands directory
    mkdir -p "$claude_dir"

    # Copy agent files to Claude commands
    if [[ -d "$INSTALL_DIR/agents" ]]; then
        local agent_count=0
        for agent_file in "$INSTALL_DIR/agents"/*.md; do
            if [[ -f "$agent_file" ]]; then
                local agent_name=$(basename "$agent_file")
                cp "$agent_file" "$claude_dir/$agent_name"
                ((agent_count++))
            fi
        done
        log_success "Installed $agent_count agent slash commands"
    fi
}

update_manifest() {
    log_info "Updating install manifest..."

    local manifest_file="$PROJECT_ROOT/.bmad-core/install-manifest.yaml"

    if [[ ! -f "$manifest_file" ]]; then
        log_warning "Install manifest not found. Skipping manifest update."
        return 0
    fi

    local timestamp=$(date -u +"%Y-%m-%dT%H:%M:%S.000Z")

    # Check if expansion pack is already in manifest
    if grep -q "id: $PACK_ID" "$manifest_file" 2>/dev/null; then
        # Update existing entry
        log_info "  Updating existing manifest entry..."

        # Update version line
        if [[ "$OSTYPE" == "darwin"* ]]; then
            sed -i '' "s/version: .*\$/version: $PACK_VERSION/g" "$manifest_file"
        else
            sed -i "s/version: .*\$/version: $PACK_VERSION/g" "$manifest_file"
        fi
    else
        # Add new entry
        log_info "  Adding new manifest entry..."

        # Create temporary file
        local temp_file=$(mktemp)

        # Check if expansion_packs array exists and is empty
        if grep -q "expansion_packs: \[\]" "$manifest_file" 2>/dev/null; then
            # Replace empty array with our entry
            sed "s/expansion_packs: \[\]/expansion_packs:\n  - id: $PACK_ID\n    name: $PACK_NAME\n    version: $PACK_VERSION\n    installed_at: '$timestamp'/" "$manifest_file" > "$temp_file"
            mv "$temp_file" "$manifest_file"
        else
            # Insert before 'files:' section
            while IFS= read -r line; do
                if [[ "$line" == "files:" ]]; then
                    echo "expansion_packs:" >> "$temp_file"
                    echo "  - id: $PACK_ID" >> "$temp_file"
                    echo "    name: $PACK_NAME" >> "$temp_file"
                    echo "    version: $PACK_VERSION" >> "$temp_file"
                    echo "    installed_at: '$timestamp'" >> "$temp_file"
                fi
                echo "$line" >> "$temp_file"
            done < "$manifest_file"
            mv "$temp_file" "$manifest_file"
        fi
    fi

    log_success "Manifest updated"
}

create_gitignore_entry() {
    log_info "Checking .gitignore configuration..."

    local gitignore="$PROJECT_ROOT/.gitignore"

    if [[ ! -f "$gitignore" ]]; then
        log_warning ".gitignore not found. Skipping."
        return 0
    fi

    # Check if entry exists
    if grep -q "^.$PACK_ID/$" "$gitignore" 2>/dev/null; then
        log_info "  .gitignore already configured"
    else
        echo "" >> "$gitignore"
        echo "# $PACK_NAME expansion pack installation" >> "$gitignore"
        echo ".$PACK_ID/" >> "$gitignore"
        log_success "Added .$PACK_ID/ to .gitignore"
    fi
}

################################################################################
# Main Installation Flow
################################################################################

main() {
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "  $PACK_NAME - Expansion Pack Installation"
    echo "  Version: $PACK_VERSION"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""

    # Validate environment
    validate_environment

    echo ""
    log_info "Starting installation..."
    echo ""

    # Run installation steps
    create_installation_directory
    copy_expansion_files
    setup_claude_commands
    update_manifest
    create_gitignore_entry

    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    if [[ "$IS_UPDATE" == true ]]; then
        log_success "Update completed successfully!"
    else
        log_success "Installation completed successfully!"
    fi
    echo "═══════════════════════════════════════════════════════════════"
    echo ""

    # Show next steps
    log_info "Next steps:"
    echo "  1. Restart your IDE to load the new agents"
    echo "  2. In Claude Code, type: /BMad:agents:book-strategist"
    echo "  3. Once activated, type: *help to see available commands"
    echo ""
    log_info "Available agents:"
    echo "  - /BMad:agents:book-strategist"
    echo "  - /BMad:agents:book-author"
    echo "  - /BMad:agents:lector"
    echo "  - /BMad:agents:learning-architect"
    echo "  - /BMad:agents:skill-analyzer"
    echo "  - /BMad:agents:exercise-designer"
    echo "  - /BMad:agents:case-study-curator"
    echo "  - /BMad:agents:content-structurer"
    echo "  - /BMad:agents:clarity-editor"
    echo "  - /BMad:agents:workbook-developer"
    echo "  - /BMad:agents:publishing-strategist"
    echo ""
    log_info "For documentation, see: .$PACK_ID/README.md"
    echo ""
}

# Run main function
main "$@"
