# Task: Shard Document

**Purpose:** Intelligently split a large document into semantically coherent modules organized in a subdirectory structure.

**When to use:** Document has >500 lines and would benefit from modular organization.

---

## Task Metadata

```yaml
task_id: shard-document
task_type: interactive
elicit: true
difficulty: medium
estimated_time: 15-30 minutes
requires_human_input: true
agent: ea-shard
```

---

## Input Requirements

**Required:**
- `source_file`: Path to document to split (e.g., `docs/learning-framework.md`)

**Optional:**
- `target_lines_per_module`: Target lines per module (default: 150-250)
- `preserve_original`: Keep original file after splitting (default: true, move to backup/)

---

## Task Workflow

### STEP 1: Validate Input

1. **Check file exists and is readable**
2. **Verify file size > 500 lines** (if not, skip sharding and inform user)
3. **Detect file type** (markdown expected)

### STEP 2: Analyze Document Structure

**Action:** Read entire document and analyze structure

**Analysis Tasks:**

1. **Parse Heading Hierarchy:**
   - Identify all headings (# ## ### ####)
   - Build heading tree (parent-child relationships)
   - Detect logical sections

2. **Identify Logical Boundaries:**
   - Find natural splitting points (major sections, chapters, themes)
   - Calculate estimated lines per section
   - Detect tightly coupled content (keep together)

3. **Detect Document Type:**
   - Book Blueprint (split by: Vision, Transformation, Structure, Marketing)
   - Learning Framework (split by: Approach, Progression, Outcomes, Exercises)
   - Content Structure (split by: Chapter-01, Chapter-02, etc.)
   - Generic (split by major ## headings)

**Output:** Analysis report showing:
```
Document: learning-framework.md (1242 lines)
Type: Learning Framework
Sections detected: 6 major sections
Proposed modules: 6
Estimated lines per module: 150-250
```

### STEP 3: Generate Splitting Strategy (ELICIT)

**Action:** Present proposed splitting strategy to user for approval

**Required Format:**
```markdown
## Proposed Splitting Strategy

**Source:** docs/learning-framework.md (1242 lines)
**Target Directory:** docs/learning-framework/

**Proposed Modules:**

1. **README.md** (60 lines) - Master Index
   - Document overview
   - Module navigation
   - Loading instructions

2. **instructional-approach.md** (180 lines)
   - Sections: Instructional Design Model, Core Learning Principles, Cognitive Load Strategy
   - Lines: 1-180

3. **learning-progression.md** (220 lines)
   - Sections: Entry Point, Skill Progression Map, Mastery Definition
   - Lines: 181-400

4. **outcomes-by-chapter.md** (420 lines)
   - Sections: Learning Outcomes for all 7 chapters
   - Lines: 401-820

5. **exercise-design.md** (180 lines)
   - Sections: Exercise Types, Design Patterns, Implementation
   - Lines: 821-1000

6. **assessments.md** (150 lines)
   - Sections: Assessment Strategy, Rubrics, Feedback
   - Lines: 1001-1150

7. **resources.md** (92 lines)
   - Sections: Materials, Tools, References
   - Lines: 1151-1242

**Questions:**
1. Approve this splitting strategy? (yes/no/modify)
2. Any sections to merge or split differently?
3. Any filename changes?
```

**Elicitation:**
```
USER_RESPONSE: {approval_status}
```

**If "modify":** Ask specific questions and adjust strategy

### STEP 4: Generate Master Index (README.md)

**Action:** Create comprehensive README.md for subdirectory

**Master Index Template:**
```markdown
# {Document Name}

**Original file:** {source_file}
**Split date:** {date}
**Total modules:** {count}
**Agent:** EA Document Sharder v1.0

---

## 📋 Overview

{Brief description of document purpose and content}

---

## 📁 Module Structure

This document is split across {count} modules for maintainability and efficient loading:

### 1. [{module-name}.md](./{module-name}.md)
**Lines:** ~{line_count} | **Purpose:** {description}

{Repeat for each module}

---

## 🧭 Quick Navigation

**Need {use-case-1}?** → `{module-file-1}`
**Need {use-case-2}?** → `{module-file-2}`
{Repeat for key use cases}

---

## 🤖 Loading Instructions

**For Claude Code Agents:**
```
# Load master index only
Read: docs/{subdir}/README.md

# Load specific module
Read: docs/{subdir}/{module-name}.md

# Load all modules
Glob: docs/{subdir}/*.md
```

**For full document view:**
```bash
cat docs/{subdir}/*.md > {original-name}-full.md
```

---

## 📊 Module Size Distribution

| Module | Lines | Purpose |
|--------|-------|---------|
| {module-1} | {lines} | {purpose} |
{Repeat}

**Total:** {total_lines} lines across {count} modules

---

## 🔗 Related Documents

- {Related document 1}
- {Related document 2}

---

**Maintainer:** EA Document Sharder
**Last updated:** {date}
```

### STEP 5: Split Document into Modules

**Action:** Create module files with appropriate content

**For each module:**

1. **Extract content** from source file (specified line ranges)

2. **Add module header:**
```markdown
# {Module Title}

> **Part of:** {Parent Document Name}
> **Module:** {X of Y}
> **Purpose:** {Brief description}
> **Related:** {Links to related modules}

---

{CONTENT STARTS HERE}
```

3. **Preserve all formatting** (headings, lists, code blocks, etc.)

4. **Update internal links** if needed:
   - Cross-references to other sections → point to appropriate module files
   - Example: "See Section 2" → "See [learning-progression.md](./learning-progression.md)"

5. **Write to file:** `docs/{subdir}/{module-name}.md`

### STEP 6: Create Directory Structure

**Actions:**

1. **Create subdirectory:** `docs/{document-name}/`

2. **Move/copy files:**
   - Write README.md to subdirectory
   - Write all module files to subdirectory

3. **Handle original file:**
   - If `preserve_original=true`: Move to `docs/{document-name}-backup.md`
   - If `preserve_original=false`: Delete original

4. **Create .gitignore entry if needed:**
   - Add `*-backup.md` to `docs/.gitignore` if not already present

### STEP 7: Verify & Report

**Verification Checks:**

1. **All content preserved:**
   - Total lines in modules ≈ original file lines
   - No content lost

2. **All files created:**
   - README.md exists
   - All module files exist
   - Original backed up (if requested)

3. **File sizes reasonable:**
   - Most modules 150-250 lines
   - Exceptions acceptable for coherence

**Final Report:**
```markdown
## ✅ Sharding Complete

**Source:** docs/learning-framework.md (1242 lines)
**Target:** docs/learning-framework/

**Files Created:**
- docs/learning-framework/README.md (60 lines)
- docs/learning-framework/instructional-approach.md (180 lines)
- docs/learning-framework/learning-progression.md (220 lines)
- docs/learning-framework/outcomes-by-chapter.md (420 lines)
- docs/learning-framework/exercise-design.md (180 lines)
- docs/learning-framework/assessments.md (150 lines)
- docs/learning-framework/resources.md (92 lines)

**Total modules:** 7 files
**Total lines:** 1302 lines (original: 1242, includes headers/README)
**Original file:** Backed up to docs/learning-framework-backup.md

**Navigation:** Start with docs/learning-framework/README.md

✅ All content verified and preserved
✅ All cross-references updated
✅ Master index created
```

---

## Success Criteria

- [ ] Source file analyzed successfully
- [ ] Logical splitting strategy generated
- [ ] User approved strategy
- [ ] Subdirectory created
- [ ] README.md master index created with navigation
- [ ] All module files created with semantic names
- [ ] Module headers added
- [ ] Internal cross-references updated
- [ ] Original file preserved (if requested)
- [ ] All content verified (no loss)
- [ ] File sizes within target range (mostly 150-250 lines)

---

## Error Handling

**File not found:**
```
❌ Error: File not found: {file_path}
Please verify the file path and try again.
```

**File too small (<500 lines):**
```
ℹ️ File only has {line_count} lines.
Sharding recommended only for files >500 lines.
Skip sharding? (yes/no)
```

**Subdirectory already exists:**
```
⚠️ Warning: Directory docs/{subdir}/ already exists.
Options:
1. Overwrite existing files
2. Create backup of existing directory
3. Cancel operation
```

---

## Notes

- **Semantic naming:** Filenames should be self-documenting and meaningful
- **Coherence over size:** Keep related content together even if module exceeds target size
- **Navigation first:** Master index (README.md) is critical for usability
- **Preserve everything:** No content should be lost in splitting
- **Test loading:** After splitting, test that agents can load modules efficiently

---

**Task Owner:** EA Document Sharder Agent
**Version:** 1.0
**Last Updated:** 2025-10-29
