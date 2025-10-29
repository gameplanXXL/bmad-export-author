# Task: Shard All Docs

**Purpose:** Process all large documents in docs/ directory and split them intelligently into modular subdirectories.

**When to use:** Batch processing of multiple large documents (>500 lines).

---

## Task Metadata

```yaml
task_id: shard-all-docs
task_type: batch
elicit: true
difficulty: high
estimated_time: 30-60 minutes
requires_human_input: true
agent: ea-shard
```

---

## Input Requirements

**Required:**
- `docs_directory`: Path to docs directory (default: `docs/`)

**Optional:**
- `threshold_lines`: Minimum lines to trigger sharding (default: 500)
- `exclude_patterns`: Patterns to exclude (default: `README.md`)
- `dry_run`: Preview only, no changes (default: false)

**Note:** Original files will be deleted after successful sharding (Git preserves history).

---

## Task Workflow

### STEP 1: Discover Large Documents

**Action:** Scan docs/ directory for files exceeding threshold

```bash
# Find all MD files in docs/
find docs/ -maxdepth 1 -name "*.md" -not -name "README.md"
```

**For each file:**
1. Count lines: `wc -l {file}`
2. If lines > threshold: Add to processing queue
3. If lines < threshold: Skip and log

**Output:**
```markdown
## Large Documents Found

Processing queue (files > 500 lines):

1. docs/learning-framework.md (1242 lines) ⚠️ LARGE
2. docs/content-structure.md (1045 lines) ⚠️ LARGE
3. docs/book-blueprint.md (638 lines) ⚠️ MEDIUM

Skipped (files < 500 lines):
- docs/learning-architect-summary.md (491 lines)

**Total to process:** 3 files
**Total lines:** 2925 lines
```

### STEP 2: Present Processing Plan (ELICIT)

**Action:** Show complete batch processing plan to user

**Required Format:**
```markdown
## Batch Sharding Plan

**Directory:** docs/
**Files to process:** 3
**Total lines:** 2925

**Processing Order:**

### 1. learning-framework.md (1242 lines)
**Target Directory:** docs/learning-framework/
**Estimated Modules:** 6-7 modules
**Splitting Strategy:** By major sections (Approach, Progression, Outcomes, etc.)

### 2. content-structure.md (1045 lines)
**Target Directory:** docs/content-structure/
**Estimated Modules:** 8-9 modules
**Splitting Strategy:** By chapter (Chapter-01, Chapter-02, etc.)

### 3. book-blueprint.md (638 lines)
**Target Directory:** docs/book-blueprint/
**Estimated Modules:** 4-5 modules
**Splitting Strategy:** By theme (Vision, Transformation, Structure, Marketing)

**Questions:**
1. Process all files? (yes/no/selective)
2. If selective, which files to process? (list numbers)
3. Dry run first (preview only)? (yes/no)
```

**Elicitation:**
```
USER_RESPONSE: {approval_status}
FILES_TO_PROCESS: {file_list if selective}
DRY_RUN: {yes/no}
```

### STEP 3: Process Each Document

**Action:** For each approved file, execute shard-document task

**For each file in queue:**

1. **Log start:**
```markdown
## Processing: {filename}
Status: Analyzing structure...
```

2. **Execute shard-document task:**
   - Pass file path to shard-document.md task
   - Follow full task workflow (analyze, propose, split, verify)
   - Capture result (success/failure)

3. **Log completion:**
```markdown
✅ {filename} → docs/{subdir}/ ({module_count} modules)
```

4. **Handle errors:**
   - Log error details
   - Ask user: Continue with next file? (yes/no/abort)

### STEP 4: Update Documentation

**Action:** Create/update root docs/README.md

**Root README Template:**
```markdown
# Documentation Directory

**Last updated:** {date}
**Structure:** Modular (sharded documents)

---

## 📁 Directory Structure

This directory contains modular documentation organized into subdirectories:

### 📘 Learning Framework
**Location:** [learning-framework/](./learning-framework/)
**Modules:** {count}
**Purpose:** Instructional design blueprint for the book

### 📗 Content Structure
**Location:** [content-structure/](./content-structure/)
**Modules:** {count}
**Purpose:** Detailed chapter-by-chapter content organization

### 📙 Book Blueprint
**Location:** [book-blueprint/](./book-blueprint/)
**Modules:** {count}
**Purpose:** High-level vision and strategy for the book

---

## 🧭 Quick Navigation

**Need instructional approach?** → [learning-framework/instructional-approach.md](./learning-framework/instructional-approach.md)
**Need chapter outlines?** → [content-structure/](./content-structure/)
**Need book vision?** → [book-blueprint/vision-and-audience.md](./book-blueprint/vision-and-audience.md)

---

## 📊 Documentation Stats

| Document | Modules | Total Lines | Last Updated |
|----------|---------|-------------|--------------|
| Learning Framework | {count} | {lines} | {date} |
| Content Structure | {count} | {lines} | {date} |
| Book Blueprint | {count} | {lines} | {date} |

**Total:** {total_modules} modules, {total_lines} lines

---

## 🤖 For Claude Code Agents

**Load specific document:**
```bash
# Load learning framework master index
Read: docs/learning-framework/README.md

# Load specific module
Read: docs/learning-framework/instructional-approach.md

# Load all modules from a document
Glob: docs/learning-framework/*.md
```

**Load everything:**
```bash
# Load all documentation
Glob: docs/**/*.md
```

---

## 🔧 Maintenance

**Sharding Info:**
- Sharded by: EA Document Sharder Agent
- Sharding date: {date}
- Original files: Deleted (recoverable via Git history)

**Re-shard document:**
```bash
/BMad:agents:ea-shard
*shard docs/{filename}.md
```

**Merge modules back:**
```bash
cat docs/{subdir}/*.md > docs/{filename}-merged.md
```

---

**Maintained by:** BMAD Expert Author Expansion Pack
```

### STEP 5: Generate Summary Report

**Action:** Create comprehensive summary of all sharding operations

**Report Format:**
```markdown
# 📊 Batch Sharding Summary Report

**Date:** {date}
**Agent:** EA Document Sharder v1.0
**Directory:** docs/

---

## ✅ Processing Results

### Successfully Processed: 3/3 files

#### 1. learning-framework.md → learning-framework/
- **Original:** 1242 lines (deleted)
- **Modules:** 7 files (README + 6 content modules)
- **New total:** 1302 lines (includes headers)
- **Status:** ✅ Complete

#### 2. content-structure.md → content-structure/
- **Original:** 1045 lines (deleted)
- **Modules:** 9 files (README + 8 content modules)
- **New total:** 1120 lines (includes headers)
- **Status:** ✅ Complete

#### 3. book-blueprint.md → book-blueprint/
- **Original:** 638 lines (deleted)
- **Modules:** 5 files (README + 4 content modules)
- **New total:** 698 lines (includes headers)
- **Status:** ✅ Complete

---

## 📈 Statistics

**Total files processed:** 3
**Success rate:** 100%
**Total original lines:** 2925
**Total new lines:** 3120 (includes README files and module headers)
**Total modules created:** 21 files
**Average modules per document:** 7

**Directory structure created:**
```
docs/
├── learning-framework/      (7 files)
├── content-structure/       (9 files)
├── book-blueprint/          (5 files)
└── README.md                (root index)
```

---

## 🎯 Next Steps

1. **Review sharding results:**
   - Check README.md in each subdirectory
   - Verify module content and naming
   - Test navigation and cross-references

2. **Update agents:**
   - Update agent prompts to reference new structure
   - Test agent loading of modules
   - Verify agents can find required content

3. **Commit changes:**
   - Review sharded structure
   - Commit deletion of original files and new modules
   - Push to remote repository

4. **Update templates:**
   - Update expansion pack templates if needed
   - Document new directory structure
   - Update CLAUDE.md with sharding info

---

## 🔗 Related Commands

- `/BMad:agents:ea-shard` - Shard individual document
- `*analyze {file}` - Analyze document without sharding
- `*preview {file}` - Preview sharding strategy

---

**Report generated by:** EA Document Sharder Agent
**Timestamp:** {timestamp}
```

---

## Success Criteria

- [ ] All large files (>threshold) discovered
- [ ] Processing plan presented and approved
- [ ] Each file processed successfully (or errors handled)
- [ ] All subdirectories created with modules
- [ ] Root docs/README.md created/updated
- [ ] All original files deleted (Git preserves history)
- [ ] Summary report generated
- [ ] All content verified (no loss)
- [ ] Directory structure clean and organized

---

## Error Handling

**Permission denied:**
```
❌ Error: Cannot write to docs/ directory
Check file permissions and try again.
```

**File already sharded:**
```
⚠️ Warning: docs/{subdir}/ already exists
This file may have been sharded previously.
Options:
1. Re-shard (overwrite existing)
2. Skip this file
3. Abort batch operation
```

**Partial failure:**
```
⚠️ Partial Success: 2/3 files processed

✅ learning-framework.md - Success
✅ content-structure.md - Success
❌ book-blueprint.md - Failed: {error_message}

Continue with next files? (yes/no)
```

---

## Notes

- **Interactive approval:** Each file's splitting strategy requires user approval (unless auto-approve mode)
- **Original deletion:** Original files are deleted after successful sharding (Git preserves history)
- **Dry run recommended:** For first-time users, run with dry_run=true to preview
- **Git commits:** Consider committing after each file for safe incremental progress
- **Agent updates:** After sharding, update agent prompts to reference new structure

---

**Task Owner:** EA Document Sharder Agent
**Version:** 1.1
**Last Updated:** 2025-10-29
**Changelog:** v1.1 - Removed backup functionality, original files are deleted (Git preserves history)
