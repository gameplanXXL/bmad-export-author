# Naming Conventions for Sharded Modules

**Purpose:** Standardized naming patterns for document modules created by EA Document Sharder

**Version:** 1.0
**Last Updated:** 2025-10-29

---

## Core Principles

### 1. Self-Documenting
Filenames should immediately convey content and purpose without needing to open the file.

**Examples:**
- ✅ `instructional-approach.md` - Clear what's inside
- ❌ `section-01.md` - Generic, unhelpful

### 2. Kebab-Case Format
All lowercase with hyphens separating words.

**Examples:**
- ✅ `learning-progression.md`
- ✅ `vision-and-audience.md`
- ❌ `LearningProgression.md` (CamelCase)
- ❌ `learning_progression.md` (snake_case)

### 3. Descriptive but Concise
Long enough to be clear, short enough to be manageable.

**Examples:**
- ✅ `outcomes-by-chapter.md` (4 words, clear)
- ⚠️ `learning-outcomes-organized-by-chapter-number.md` (too long)
- ❌ `outcomes.md` (too generic)

### 4. Consistent Patterns
Use consistent naming patterns within a document set.

**Example Set:**
```
content-structure/
├── chapter-01-introduction.md
├── chapter-02-history.md
├── chapter-03-week1.md
└── chapter-04-week2.md
```
✅ Consistent `chapter-NN-{name}` pattern

---

## Standard Naming Patterns

### Pattern A: Functional/Thematic Names

**Format:** `{function}.md` or `{theme}.md`

**Use for:** Book Blueprints, Learning Frameworks, Strategy documents

**Examples:**
- `instructional-approach.md`
- `learning-progression.md`
- `marketing-strategy.md`
- `transformation-journey.md`
- `vision-and-audience.md`
- `exercise-design.md`
- `assessments.md`
- `resources.md`

**Guidelines:**
- Describe the function or theme of content
- Use 1-4 words
- Avoid abbreviations (use `assessments.md` not `assess.md`)

---

### Pattern B: Chapter-Based Names

**Format:** `chapter-{NN}-{chapter-title}.md`

**Use for:** Content Structure documents, books with clear chapter divisions

**Examples:**
- `chapter-01-introduction.md`
- `chapter-02-history.md`
- `chapter-03-week1.md`
- `chapter-07-conclusion.md`

**Guidelines:**
- Always use 2-digit chapter numbers (01, 02, not 1, 2)
- Include chapter title/theme after number
- Keep title portion short (1-3 words)
- Use descriptive keywords: `week1` not `w1`, `introduction` not `intro`

**Special Cases:**
```
chapter-00-preface.md          # Preface/Foreword
chapter-01-introduction.md     # First chapter
chapter-99-epilogue.md         # Epilogue (if needed)
appendix-exercises.md          # Appendices
appendix-resources.md
```

---

### Pattern C: Section-Based Names

**Format:** `{section-name}.md`

**Use for:** Generic documents, multi-section documents without chapters

**Examples:**
- `architecture-overview.md`
- `getting-started.md`
- `technical-requirements.md`
- `glossary.md`
- `references.md`
- `appendix.md`

**Guidelines:**
- Use clear section descriptor
- Avoid generic terms like `section-X`
- Be specific: `technical-requirements.md` not `requirements.md`

---

### Pattern D: Master Index

**Format:** `README.md` (always uppercase)

**Use for:** Every sharded subdirectory

**Purpose:** Master index, navigation, overview

**Guidelines:**
- Always named `README.md` (GitHub/GitLab convention)
- Contains overview, navigation, module list
- Always in uppercase: `README.md` not `readme.md`
- Never use alternative names like `INDEX.md` or `master.md`

---

## Document Type Specific Conventions

### Book Blueprint Modules

**Standard names:**
```
book-blueprint/
├── README.md
├── vision-and-audience.md
├── transformation-journey.md
├── book-structure.md
└── marketing-strategy.md
```

**Additional if needed:**
```
├── competitive-analysis.md
├── unique-value-proposition.md
├── content-strategy.md
├── launch-plan.md
└── success-metrics.md
```

---

### Learning Framework Modules

**Standard names:**
```
learning-framework/
├── README.md
├── instructional-approach.md
├── learning-progression.md
├── outcomes-by-chapter.md
├── exercise-design.md
├── assessments.md
└── resources.md
```

**Additional if needed:**
```
├── cognitive-load-strategy.md
├── skill-ladders.md
├── mastery-criteria.md
├── feedback-mechanisms.md
└── learning-materials.md
```

---

### Content Structure Modules

**Standard names:**
```
content-structure/
├── README.md
├── architecture-overview.md
├── chapter-01-{name}.md
├── chapter-02-{name}.md
├── chapter-NN-{name}.md
└── appendix.md
```

**Additional if needed:**
```
├── reading-flow.md
├── content-distribution.md
├── appendix-exercises.md
├── appendix-resources.md
└── appendix-templates.md
```

---

## Naming Decision Tree

```
What type of content?
│
├─ Master Index / Overview?
│  └─ → README.md
│
├─ Chapter-based content?
│  └─ → chapter-{NN}-{name}.md
│
├─ Functional/Thematic section?
│  ├─ Strategy/approach? → {function}-strategy.md or {name}-approach.md
│  ├─ Design/planning? → {name}-design.md or {name}-plan.md
│  ├─ Analysis/research? → {name}-analysis.md or {name}-research.md
│  └─ Resources/tools? → {name}-resources.md or {name}-materials.md
│
├─ Appendix/supplementary?
│  ├─ Multiple appendices? → appendix-{type}.md
│  └─ Single appendix? → appendix.md
│
└─ Generic section?
   └─ → {descriptive-section-name}.md
```

---

## Common Naming Components

### Prefix Words (for specificity)
- `instructional-` (e.g., `instructional-approach.md`)
- `learning-` (e.g., `learning-progression.md`)
- `content-` (e.g., `content-strategy.md`)
- `marketing-` (e.g., `marketing-strategy.md`)
- `technical-` (e.g., `technical-requirements.md`)

### Suffix Words (for type/function)
- `-approach` (methodology/framework)
- `-strategy` (high-level planning)
- `-design` (detailed planning)
- `-plan` (execution planning)
- `-overview` (summary/introduction)
- `-analysis` (research/evaluation)
- `-resources` (materials/tools)
- `-materials` (resources/assets)
- `-guidelines` (rules/standards)
- `-criteria` (requirements/standards)

### Middle Words (connectors)
- `-and-` (e.g., `vision-and-audience.md`)
- `-by-` (e.g., `outcomes-by-chapter.md`)
- `-for-` (e.g., `exercises-for-week1.md`)

---

## Special Cases

### Multi-Part Modules

If a section is too large and needs splitting into parts:

**Format:** `{section-name}-part{N}.md`

**Example:**
```
learning-framework/
├── outcomes-by-chapter-part1.md  (Chapters 1-3)
├── outcomes-by-chapter-part2.md  (Chapters 4-7)
```

**Note:** Try to avoid this. Better to split semantically:
```
├── outcomes-chapters-1-3.md
├── outcomes-chapters-4-7.md
```

### Temporary/Draft Modules

If creating temporary files during sharding:

**Format:** `{name}-temp.md` or `{name}-draft.md`

**Example:**
```
├── transformation-journey-temp.md
```

**Note:** Clean up temp files after sharding complete.

---

## Anti-Patterns (Avoid These)

### ❌ Generic Numbering
```
section-01.md
section-02.md
module-001.md
part-1.md
```
**Why bad:** Not self-documenting, requires reading to know content

### ❌ Abbreviations
```
intro.md          → introduction.md
strat.md          → strategy.md
req.md            → requirements.md
lf-prog.md        → learning-progression.md
```
**Why bad:** Ambiguous, harder to search, not universally understood

### ❌ CamelCase or snake_case
```
LearningProgression.md
learning_progression.md
```
**Why bad:** Inconsistent with web/unix conventions, harder to read

### ❌ Overly Long Names
```
complete-guide-to-instructional-design-approach-and-methodology.md
detailed-learning-outcomes-organized-by-chapter-with-bloom-taxonomy.md
```
**Why bad:** Unwieldy, hard to type, cluttered directory listings

### ❌ Non-Descriptive Names
```
module.md
content.md
text.md
document.md
```
**Why bad:** Meaningless, doesn't convey purpose

---

## Validation Checklist

Before finalizing module names:

- [ ] **Kebab-case:** All lowercase, hyphens only
- [ ] **Self-documenting:** Name clearly describes content
- [ ] **Concise:** 1-5 words max
- [ ] **Consistent:** Follows pattern within document set
- [ ] **No abbreviations:** Unless universally known (e.g., `faq.md` OK)
- [ ] **Descriptive:** Not generic (no `section-X.md`)
- [ ] **Searchable:** Keywords in filename match content
- [ ] **README:** Master index named `README.md`

---

## Examples by Quality

### ✅ Excellent Names
```
instructional-approach.md         # Clear, specific, concise
outcomes-by-chapter.md            # Describes organization method
chapter-03-week1.md               # Numbered, descriptive
vision-and-audience.md            # Multi-concept, clear
marketing-strategy.md             # Function clear
```

### ⚠️ Acceptable but Not Ideal
```
approach.md                       # Too generic (but OK if context clear)
week1.md                          # OK for weekly content
assessments-and-rubrics.md        # Slightly long but acceptable
part1.md                          # OK if temporary or no better option
```

### ❌ Poor Names
```
section-01.md                     # Generic numbering
doc.md                            # Meaningless
LearningOutcomes.md               # Wrong case
learning_outcomes.md              # Wrong case
lo.md                             # Abbreviation
complete-comprehensive-guide.md   # Too long, redundant
```

---

## Quick Reference

| Content Type | Naming Pattern | Example |
|-------------|----------------|---------|
| Master Index | `README.md` | `README.md` |
| Functional | `{function}.md` | `instructional-approach.md` |
| Chapter | `chapter-{NN}-{name}.md` | `chapter-01-introduction.md` |
| Section | `{section-name}.md` | `architecture-overview.md` |
| Appendix (single) | `appendix.md` | `appendix.md` |
| Appendix (multiple) | `appendix-{type}.md` | `appendix-exercises.md` |
| Strategy | `{name}-strategy.md` | `marketing-strategy.md` |
| Design | `{name}-design.md` | `exercise-design.md` |
| Resources | `{name}-resources.md` | `learning-resources.md` |

---

**Conventions Owner:** EA Document Sharder Agent
**Version:** 1.0
**Last Updated:** 2025-10-29
