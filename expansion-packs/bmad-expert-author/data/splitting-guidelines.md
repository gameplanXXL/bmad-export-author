# Document Splitting Guidelines

**Purpose:** Guidelines for intelligent document sharding by EA Document Sharder Agent

**Version:** 1.0
**Last Updated:** 2025-10-29

---

## General Principles

### 1. Semantic Boundaries First
- Split at logical section boundaries (## or ### headings)
- Never split mid-paragraph or mid-thought
- Keep related content together (coherence > arbitrary line counts)

### 2. Target Size Guidelines
- **Ideal module size:** 150-250 lines
- **Acceptable range:** 100-300 lines
- **Exceptions allowed:** For semantic coherence (e.g., keep entire chapter together even if 350 lines)

### 3. Self-Documenting Names
- Use descriptive, semantic filenames
- Kebab-case format: `instructional-approach.md`
- Avoid generic numbering: NOT `section-01.md`, BETTER `instructional-approach.md`
- Chapter-based content: Use chapter numbers: `chapter-01-introduction.md`

---

## Document Type-Specific Rules

### Book Blueprint Documents

**Split by major themes:**
- `vision-and-audience.md` - Target audience, value proposition, positioning
- `transformation-journey.md` - Reader transformation, before/after states
- `book-structure.md` - Chapter outline, flow, progression
- `marketing-strategy.md` - Launch plan, marketing channels, metrics

**Typical module count:** 4-5 modules

### Learning Framework Documents

**Split by instructional design phases:**
- `instructional-approach.md` - ADDIE model, learning principles, cognitive load
- `learning-progression.md` - Entry point, skill ladders, mastery timeline
- `outcomes-by-chapter.md` - Learning outcomes for each chapter
- `exercise-design.md` - Exercise types, design patterns, implementation
- `assessments.md` - Assessment strategy, rubrics, feedback mechanisms
- `resources.md` - Materials, tools, references

**Typical module count:** 6-7 modules

### Content Structure Documents

**Split by chapters:**
- `README.md` - Architecture overview, reading flow, statistics
- `chapter-01-{name}.md` - Complete chapter outline
- `chapter-02-{name}.md` - Complete chapter outline
- `chapter-NN-{name}.md` - Complete chapter outline
- `appendix.md` - Supplementary materials

**Typical module count:** 8-10 modules (depends on chapter count)

### Generic Documents

**Split by major sections:**
- Identify level-2 headings (##)
- Group related level-3 headings (###) under same module
- Create modules of ~200 lines each

---

## Splitting Decision Tree

```
Document to split?
│
├─ Is it a Book Blueprint?
│  └─ YES → Split by: Vision, Transformation, Structure, Marketing
│
├─ Is it a Learning Framework?
│  └─ YES → Split by: Approach, Progression, Outcomes, Exercises, Assessments
│
├─ Is it a Content Structure?
│  └─ YES → Split by: Overview + Chapter-NN files
│
└─ Generic document?
   └─ YES → Analyze ## headings, group related content, target 200 lines/module
```

---

## Module Naming Patterns

### Pattern 1: Descriptive Function
**Format:** `{function-or-purpose}.md`
**Examples:**
- `instructional-approach.md`
- `learning-progression.md`
- `marketing-strategy.md`
- `vision-and-audience.md`

**When to use:** Functional/thematic splits (Blueprint, Framework)

### Pattern 2: Chapter-Based
**Format:** `chapter-{NN}-{chapter-name}.md`
**Examples:**
- `chapter-01-introduction.md`
- `chapter-02-history.md`
- `chapter-03-week1.md`

**When to use:** Content Structure or chapter-based documents

### Pattern 3: Section-Based
**Format:** `{section-name}.md`
**Examples:**
- `architecture-overview.md`
- `resources.md`
- `appendix.md`

**When to use:** Generic documents with clear section names

---

## Special Handling

### Appendices and References
- Keep appendices together unless very large (>400 lines)
- Split large appendices by type: `appendix-exercises.md`, `appendix-resources.md`

### Tables and Lists
- Never split a table across modules
- Keep related list items together
- If list is very long (>100 items), consider splitting by logical groups

### Code Examples
- Keep complete code examples in single module
- Never split code blocks across files

### Cross-References
- Update internal links after splitting
- "See Section X" → "See [module-name.md](./module-name.md)"
- Maintain anchor links if used

---

## Master Index (README.md) Requirements

Every sharded document must have a **README.md** in its subdirectory with:

### Required Sections:
1. **Title & Metadata:**
   - Document name
   - Original file reference
   - Split date, agent version

2. **Overview:**
   - Brief description (2-3 sentences)
   - Document purpose

3. **Module Structure:**
   - List all modules with descriptions
   - Line counts
   - Purpose of each module

4. **Quick Navigation:**
   - Use-case based links
   - "Need X? → module-Y.md"

5. **Loading Instructions:**
   - For Claude Code agents
   - For full document view (cat command)

6. **Statistics:**
   - Module count
   - Total lines
   - Module size distribution

### Optional Sections:
- Related Documents
- Maintenance info
- Version history

---

## Verification Checklist

Before completing a shard operation:

- [ ] All content from original file present in modules
- [ ] No content duplicated across modules
- [ ] No content lost
- [ ] Module filenames are semantic and self-documenting
- [ ] README.md master index created with complete navigation
- [ ] Module headers added to each file
- [ ] Cross-references updated
- [ ] Module sizes within acceptable range (100-300 lines)
- [ ] Logical coherence maintained (no mid-thought splits)
- [ ] Directory structure clean (no orphaned files)
- [ ] Original file backed up (if requested)

---

## Common Mistakes to Avoid

### ❌ Don't:
- Split at arbitrary line counts ignoring semantics
- Use generic numbered filenames (`module-01.md`)
- Split tables, code blocks, or lists across files
- Forget to create README.md master index
- Lose content during splitting
- Create modules <50 lines (too granular)
- Create modules >400 lines (too large)

### ✅ Do:
- Split at natural semantic boundaries
- Use descriptive, self-documenting filenames
- Preserve all content exactly
- Create comprehensive master index
- Keep related content together
- Target 150-250 lines per module (flexible)
- Update cross-references

---

## Quality Standards

### Excellent Sharding:
- Clear semantic boundaries
- Self-documenting filenames
- Comprehensive README.md
- All content preserved
- Easy navigation
- Modules 150-250 lines
- Coherent modules

### Acceptable Sharding:
- Mostly semantic boundaries (minor exceptions)
- Decent filenames
- Basic README.md
- All content preserved
- Workable navigation
- Modules 100-300 lines
- Mostly coherent

### Poor Sharding:
- Arbitrary splits
- Generic numbered filenames
- Missing/incomplete README.md
- Content lost or duplicated
- No navigation aids
- Modules too large (>400) or too small (<50)
- Incoherent modules

---

## Examples

### Example 1: Learning Framework Split

**Original:** `learning-framework.md` (1242 lines)

**Result:**
```
learning-framework/
├── README.md                       (60 lines)
├── instructional-approach.md       (180 lines) ✅ Semantic name
├── learning-progression.md         (220 lines) ✅ Within target
├── outcomes-by-chapter.md          (420 lines) ⚠️ Large but coherent
├── exercise-design.md              (180 lines) ✅ Perfect size
├── assessments.md                  (150 lines) ✅ Perfect size
└── resources.md                    (92 lines)  ⚠️ Small but OK
```

**Analysis:** Excellent sharding
- Semantic boundaries preserved
- Self-documenting names
- One module >300 lines (acceptable - keeps all outcomes together)
- One module <100 lines (acceptable - resources are naturally short)

### Example 2: Content Structure Split

**Original:** `content-structure.md` (1045 lines)

**Result:**
```
content-structure/
├── README.md                       (80 lines)
├── architecture-overview.md        (80 lines)
├── chapter-01-introduction.md      (130 lines) ✅ Clear chapter-based naming
├── chapter-02-history.md           (120 lines)
├── chapter-03-week1.md             (180 lines)
├── chapter-04-week2.md             (180 lines)
├── chapter-05-week3.md             (180 lines)
├── chapter-06-week4.md             (180 lines)
├── chapter-07-conclusion.md        (120 lines)
└── appendix.md                     (75 lines)
```

**Analysis:** Excellent sharding
- One chapter per file (natural boundary)
- Consistent naming pattern
- Sizes within target range

---

**Guidelines Owner:** EA Document Sharder Agent
**Version:** 1.0
**Last Updated:** 2025-10-29
