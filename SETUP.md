# Installation Guide - BMAD Expert Author Development Environment

This guide will help you set up the complete development environment for the BMAD Expert Author Expansion Pack.

## Prerequisites Overview

You'll need to install:
- **Claude Code** - AI-powered development assistant (CLI tool)
- **Git** - Version control system
- **Make** - Build automation tool
- **Node.js** - JavaScript runtime (if needed for future extensions)

---

## macOS Installation

### 1. Install Homebrew (Package Manager)

Homebrew makes installing developer tools on macOS simple.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

After installation, follow the on-screen instructions to add Homebrew to your PATH.

### 2. Install Git

```bash
brew install git
```

Verify installation:
```bash
git --version
```

### 3. Install Make

Make is usually pre-installed on macOS. Verify:
```bash
make --version
```

If not available, install via Xcode Command Line Tools:
```bash
xcode-select --install
```

### 4. Install Node.js

```bash
brew install node
```

Verify installation:
```bash
node --version
npm --version
```

### 5. Install Claude Code

```bash
# Install Claude Code CLI
npm install -g @anthropic-ai/claude-code

# Or using Homebrew (if available)
brew install claude-code
```

**Alternative:** Download from [Anthropic's official website](https://claude.ai/claude-code)

Verify installation:
```bash
claude --version
```

### 6. Authenticate Claude Code

```bash
claude auth login
```

Follow the prompts to authenticate with your Anthropic account.

---

## Windows Installation (Git Bash)

**Important:** We'll use **Git Bash** for everything on Windows - it provides a Unix-like environment with consistent commands across all platforms.

### 1. Install Git for Windows (includes Git Bash)

Download and install Git for Windows from [git-scm.com](https://git-scm.com/download/win)

**Installation tips:**
- Keep all default options during installation
- Ensure "Git Bash Here" context menu option is enabled
- This automatically adds Git Bash to your system

After installation, open Git Bash:
- **Start Menu:** Search for "Git Bash"
- **From any folder:** Right-click → "Git Bash Here"

Verify installation in Git Bash:
```bash
git --version
```

### 2. Install Make

Download Make for Windows:
1. Go to [ezwinports on SourceForge](https://sourceforge.net/projects/ezwinports/files/)
2. Download `make-*-without-guile-w32-bin.zip` (latest version)
3. Extract the ZIP file
4. Copy the contents to `C:\Program Files\Git\mingw64\` (merge with existing folders)
   - This adds Make to your Git Bash environment

Verify installation in **Git Bash**:
```bash
make --version
```

### 3. Install Node.js

Download and run the installer from [nodejs.org](https://nodejs.org/) - choose the LTS (Long Term Support) version.

After installation, **restart Git Bash** and verify:
```bash
node --version
npm --version
```

### 4. Install Claude Code

Open **Git Bash** and run:
```bash
npm install -g @anthropic-ai/claude-code
```

**Alternative:** Download from [Anthropic's official website](https://claude.ai/claude-code)

Verify installation:
```bash
claude --version
```

### 5. Authenticate Claude Code

```bash
claude auth login
```

Follow the prompts to authenticate with your Anthropic account.

---

**🎯 Important: From now on, use Git Bash for all project commands!**

All subsequent commands (`git`, `make`, `claude`, etc.) should be run in Git Bash, not PowerShell or cmd.exe.

---

## Linux Installation

Instructions for Debian/Ubuntu-based distributions. Adjust package manager for other distros (e.g., `dnf` for Fedora, `pacman` for Arch).

### 1. Update Package Lists

```bash
sudo apt update
```

### 2. Install Git

```bash
sudo apt install git -y
```

Verify installation:
```bash
git --version
```

### 3. Install Make

```bash
sudo apt install build-essential -y
```

This installs Make, GCC, and other essential build tools.

Verify installation:
```bash
make --version
```

### 4. Install Node.js

**Option A - Via NodeSource (Recommended for latest versions):**

```bash
# Install Node.js 20.x (LTS)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install nodejs -y
```

**Option B - Via apt (may be older version):**

```bash
sudo apt install nodejs npm -y
```

Verify installation:
```bash
node --version
npm --version
```

### 5. Install Claude Code

```bash
# Install via npm
sudo npm install -g @anthropic-ai/claude-code
```

**Alternative for non-root install:**
```bash
# Configure npm to install global packages in your home directory
mkdir -p ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# Now install without sudo
npm install -g @anthropic-ai/claude-code
```

Verify installation:
```bash
claude --version
```

### 6. Authenticate Claude Code

```bash
claude auth login
```

Follow the prompts to authenticate with your Anthropic account.

---

## Post-Installation: Clone and Setup BMAD Expert Author

Once all tools are installed, set up the project:

### 1. Clone the Repository

```bash
git clone <your-repository-url> ki-agent
cd ki-agent
```

### 2. Install the Expansion Pack

**All platforms (macOS/Linux/Windows Git Bash):**
```bash
make install
```

This command:
- Copies expansion pack files from `expansion-packs/bmad-expert-author/` to `.bmad-expert-author/`
- Creates Claude Code slash commands in `.claude/commands/BMad/agents/`
- Updates installation manifest

### 3. Verify Installation

Check that the installation was successful:

```bash
# Check that .bmad-expert-author/ was created
ls -la .bmad-expert-author/

# Check that agents are available
ls .claude/commands/BMad/agents/
```

### 4. Start Using Claude Code

```bash
# Start Claude Code in the project directory
claude
```

You should now have access to all BMAD Expert Author agents via slash commands like:
- `/BMad:agents:book-strategist`
- `/BMad:agents:book-author`
- `/BMad:agents:lector`
- etc.

---

## Recommended: Install a Markdown Reader

This project extensively uses **Markdown files (.md)** for:
- Documentation (README.md, CLAUDE.md, SETUP.md)
- Agent definitions (all agent files)
- Templates and workflows
- Project guides and references

While you can read Markdown files in any text editor, a dedicated Markdown reader provides:
- **Live preview** with proper formatting
- **Table of contents** navigation
- **Syntax highlighting** for code blocks
- **Better readability** of complex documentation

### Recommended Free Markdown Readers

#### macOS
- **[Marked 2](https://marked2app.com/)** - Professional Markdown preview (paid, but has free trial)
- **[MacDown](https://macdown.uranusjr.com/)** - Free, open-source editor with live preview
- **[Typora](https://typora.io/)** - Clean WYSIWYG editor (free for beta versions)
- **[Visual Studio Code](https://code.visualstudio.com/)** - Free code editor with built-in Markdown preview (Cmd+Shift+V)

#### Windows
- **[Typora](https://typora.io/)** - Clean WYSIWYG editor (free for beta versions)
- **[MarkText](https://www.marktext.cc/)** - Free, open-source, simple and elegant
- **[Visual Studio Code](https://code.visualstudio.com/)** - Free code editor with built-in Markdown preview (Ctrl+Shift+V)
- **[Obsidian](https://obsidian.md/)** - Free for personal use, great for linked documents

#### Linux
- **[Typora](https://typora.io/)** - Available for Linux (free for beta versions)
- **[MarkText](https://www.marktext.cc/)** - Free, open-source, works great on Linux
- **[Visual Studio Code](https://code.visualstudio.com/)** - Free, cross-platform with Markdown preview
- **[ReText](https://github.com/retext-project/retext)** - Lightweight, native Linux Markdown editor
  ```bash
  # Install on Debian/Ubuntu
  sudo apt install retext
  ```
- **[Ghostwriter](https://ghostwriter.kde.org/)** - Distraction-free Markdown editor
  ```bash
  # Install on Debian/Ubuntu
  sudo apt install ghostwriter
  ```

### Quick Tip: VS Code Setup

If you're already using Visual Studio Code (recommended for development), you can:

1. **View Markdown Preview:** Open any .md file and press:
   - **macOS:** `Cmd + Shift + V`
   - **Windows/Linux:** `Ctrl + Shift + V`

2. **Side-by-Side View:** Press:
   - **macOS:** `Cmd + K` then `V`
   - **Windows/Linux:** `Ctrl + K` then `V`

3. **Install Markdown Extensions (Optional):**
   - "Markdown All in One" - Enhanced Markdown features
   - "Markdown Preview Enhanced" - Advanced preview with diagrams
   - "markdownlint" - Linting for consistent formatting

---

## Troubleshooting

### Claude Code Command Not Found

**macOS/Linux:**
```bash
# Check if npm global bin is in PATH
npm config get prefix
# Add to PATH if needed (in ~/.bashrc or ~/.zshrc)
export PATH="$(npm config get prefix)/bin:$PATH"
```

**Windows PowerShell:**
```powershell
# Check npm global path
npm config get prefix
# Add to PATH via System Properties > Environment Variables
```

### Make Command Not Found (Windows)

Ensure Make is in your PATH:
1. Open System Properties → Environment Variables
2. Add Make installation directory to PATH
3. Restart PowerShell

### Permission Denied Errors (Linux)

Use `sudo` for system-wide installations, or configure npm for local installs (see Linux Node.js section above).

### Git Authentication Issues

Configure Git with your credentials:
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

---

## Platform-Specific Notes

### macOS
- Xcode Command Line Tools may be required for some operations
- Homebrew greatly simplifies package management
- M1/M2 Macs: Ensure Rosetta 2 is installed if needed

### Windows
- **Always use Git Bash** (included with Git for Windows) - not PowerShell or cmd.exe
- Git Bash provides full Unix-like environment (Bash, sed, grep, make, etc.)
- Open via Start Menu or right-click folder → "Git Bash Here"
- Windows Terminal can be used to run Git Bash for better experience

### Linux
- Package names may vary by distribution
- `build-essential` package includes Make and compilers
- Consider using `nvm` (Node Version Manager) for flexible Node.js version management

---

## Next Steps

After completing this setup:

1. **Read Project Documentation:**
   - `README.md` - Project overview
   - `CLAUDE.md` - Claude Code specific instructions
   - `expansion-packs/bmad-expert-author/README.md` - Expansion pack details

2. **Explore Available Agents:**
   ```bash
   # In Claude Code
   /BMad:agents:architect
   # Then run: *help
   ```

3. **Start Your First Book Project:**
   Follow the workflow in `expansion-packs/bmad-expert-author/workflows/README.md`

---

**Need Help?**
- Check GitHub Issues for known problems
- Consult official documentation for each tool
- Join BMAD Community discussions

**Last Updated:** 2025-10-29
