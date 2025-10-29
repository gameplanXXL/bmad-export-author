# BMAD Educational Non-Fiction Workflows

This directory contains complete workflow guides for creating different types of educational non-fiction books using the BMAD expansion pack.

## Core Workflow: Skill-Building Book Development

This is the primary workflow, analogous to the BMAD-METHOD core software development process.

### Phase 1: Strategic Foundation (ANALYSIS)
**Agent: Book Strategist** 📊

**Output: Book Blueprint Document (BBD)**

Similar to how the Analyst creates a PRD in BMAD core, the Book Strategist creates the foundational Book Blueprint Document.

Steps:
1. **Activate Book Strategist**: `/book-strategist`
2. **Run Analysis**: `*create-blueprint`
   - The blueprint creation process includes comprehensive elicitation
   - **Step 6.5: Gathers existing materials** (documents, URLs, notes)
   - **Automatically converts documents** - just place files in `source-materials/`
   - Book Strategist detects files and runs conversion automatically
   - No manual agent switching needed!
3. **Automatic Document Processing** (if files provided):
   - Book Strategist detects files in `source-materials/`
   - Converts Word, PDF, HTML → Markdown automatically
   - Reads converted content from `processed-materials/`
   - Incorporates insights into Book Blueprint
   - ℹ️ Manual processing: `/BMad:agents:ea-document-processor` (if needed)
4. **Deep Dive Research**:
   - `*analyze-audience` - Understand target readers deeply
   - `*research-market` - Competitive landscape analysis
   - `*define-transformation` - Articulate reader's before/after journey
   - `*assess-learning-needs` - Identify skill gaps to address

**Book Blueprint Document (BBD) Contains:**
- Target Audience Profile (demographics, psychographics, pain points, goals)
- Reader Transformation Journey (current state → desired state)
- Unique Value Proposition (what makes this book essential and different)
- Learning Objectives (specific, measurable outcomes)
- Market Positioning (competitive analysis, differentiation)
- Content Scope & Approach (topics covered, depth, methodology)
- Success Metrics (reader outcomes, market goals)
- Publishing Strategy (format, distribution, pricing approach)

**Checkpoint**: BBD reviewed and approved before proceeding

---

### Phase 2: Learning Architecture Design
**Agents: Learning Architect + Content Structurer**

**Output: Learning Framework + Book Structure**

With approved BBD, design the instructional framework and content organization.

#### 2A: Learning Framework Design
**Agent: Learning Architect** 🎓

1. **Activate**: `/learning-architect`
2. **Design Framework**: `*create-learning-framework`
   - Maps learning progression from novice to competent
   - Defines learning outcomes for each chapter/section
   - Specifies assessment points
   - Plans scaffolding and support structures

**Agent: Skill Analyzer** 🔬

3. **Decompose Skills**: `/skill-analyzer` → `*decompose-skill {main_skill}`
   - Breaks complex skills into teachable micro-skills
   - Identifies prerequisites
   - Creates skill progression map

#### 2B: Content Structure Design
**Agent: Content Structurer** 📐

4. **Activate**: `/content-structurer`
5. **Create Structure**: `*structure-book`
   - Organizes content into parts, chapters, sections
   - Sequences topics for optimal learning flow
   - Places exercises strategically
   - Balances content distribution

**Output: Detailed book structure with chapter-by-chapter learning outcomes**

**Checkpoint**: Learning Framework and Structure reviewed and approved

---

### Phase 3: Supporting Materials Development
**Agents: Exercise Designer + Case Study Curator**

**Output: Exercise Library + Case Study Collection**

Before writing begins, prepare the exercises and examples that will be integrated.

#### 3A: Exercise Creation
**Agent: Exercise Designer** ✍️

1. **Activate**: `/exercise-designer`
2. **Design Exercises**: For each chapter:
   - `*design-exercise {skill_name}` - Create practice exercises
   - `*create-worksheet` - Develop structured worksheets
   - `*design-assessment` - Create skill checks

#### 3B: Example Development
**Agent: Case Study Curator** 📖

3. **Activate**: `/case-study-curator`
4. **Develop Examples**:
   - `*develop-case-study {topic}` - Create transformation stories
   - `*create-success-story` - Develop inspiring narratives
   - `*build-example-library` - Curate diverse examples

**Output: Complete library of exercises, worksheets, case studies, examples ready for integration**

---

### Phase 4: Content Writing (DEVELOPMENT)
**Agent: Book Author** ✍️

**Similar to dev-agent in BMAD core** - executes based on specifications

1. **Activate**: `/book-author`
2. **Write Iteratively** (chapter by chapter):
   - `*write-chapter {chapter_number}` - Draft complete chapter
   - **Automatically generates PDF** after completion
   - Integrate exercises from library
   - Weave in case studies and examples
   - Follow specifications from Learning Framework
   - Maintain voice and readability standards

**Writing Process Per Chapter:**
- Review chapter specifications (learning outcomes, structure, exercises)
- Write introduction
- Develop main content sections
- Integrate exercises and examples
- Write transitions and summary
- **Automatic PDF generation**: `make pdf-latest` (no manual action needed)
- Submit to Lector for review

**Output for each chapter:**
- Markdown file: `chapters/chapter-NN.md`
- PDF preview: `output/chapter-NN.pdf` (automatically generated)

---

### Phase 5: Quality Review (QA)
**Agent: Lector** 🔍

**Similar to qa-agent in BMAD core** - systematic quality assurance

1. **Activate**: `/lector`
2. **Review Content**: After each chapter/section:
   - `*review-chapter {chapter_number}` - Comprehensive review
   - `*check-alignment` - Verify BBD and framework alignment
   - `*verify-exercises` - Evaluate exercise quality
   - `*check-clarity` - Assess readability for target audience
   - `*validate-examples` - Review case study authenticity

**Lector Reviews Against:**
- Book Blueprint specifications
- Learning Framework outcomes
- Quality checklists
- Readability standards
- Completeness requirements
- Voice and tone consistency

**Feedback Loop:**
- Lector provides detailed, actionable feedback
- Book Author revises: `*revise-content {section}`
- Lector verifies revisions: `*verify-revisions`
- Iterate until approval
- Move to next chapter

**Final Approval:**
- `*final-approval` - Complete book quality gate before publication

---

### Phase 5.5: Document Organization (Optional)
**Agent: EA Document Sharder** 🔪

**When to use:** When documents exceed 500 lines and become unwieldy for agents or manual editing

**Purpose:** Split large documents into semantically coherent, modular files organized in subdirectories

**Typical candidates:**
- `docs/learning-framework.md` (>1000 lines)
- `docs/content-structure.md` (>1000 lines)
- `docs/book-blueprint.md` (>500 lines)
- Any other large planning documents

**Usage:**

1. **Activate**: `/ea-shard`
2. **Analyze first** (preview only):
   - `*analyze docs/learning-framework.md` - See proposed structure without changes
3. **Shard individual document**:
   - `*shard docs/learning-framework.md` - Split with intelligent naming and navigation
4. **Batch process all large files**:
   - `*shard-all` - Process all docs/ files >500 lines

**What happens:**
- Agent analyzes document structure (headings, logical sections)
- Proposes splitting strategy with meaningful filenames
- Creates subdirectory (e.g., `docs/learning-framework/`)
- Splits content into semantic modules (~150-250 lines each)
- Generates master `README.md` with navigation and loading instructions
- Adds module headers with cross-references
- Deletes original file (Git preserves history)

**Result structure:**
```
docs/
├── learning-framework/
│   ├── README.md                    # Master index & navigation
│   ├── instructional-approach.md    # ~180 lines
│   ├── learning-progression.md      # ~220 lines
│   ├── outcomes-by-chapter.md       # ~420 lines
│   ├── exercise-design.md           # ~180 lines
│   └── assessments.md               # ~150 lines
```

**Benefits:**
- ⚡ Faster loading for Claude Code agents
- 🧭 Better navigation with master indexes
- 📝 Easier maintenance of focused modules
- 🎯 Agents load only needed sections

**Important:**
- Original files are deleted after sharding (Git history preserves them)
- Recovery: `git checkout HEAD~1 -- docs/filename.md`
- Semantic naming: Files have meaningful names (not `module-01.md`)
- All content preserved during splitting

**When to shard:**
- After Phase 2 (Learning Architecture) if documents are large
- After Phase 4 (Content Writing) if drafts are extensive
- During Phase 5 (QA) if review documents become unwieldy
- Anytime documents exceed 500 lines and impact workflow efficiency

---

### Phase 6: Enhancement (Optional)
**Agents: Clarity Editor + Workbook Developer**

#### 6A: Clarity Enhancement
**Agent: Clarity Editor** 💡

1. **Activate**: `/clarity-editor`
2. **Enhance Clarity**:
   - `*clarify-text {section}` - Simplify complex explanations
   - `*assess-readability` - Optimize reading level
   - `*eliminate-jargon` - Ensure accessibility

#### 6B: Companion Workbook
**Agent: Workbook Developer** 📝

3. **Activate**: `/workbook-developer`
4. **Create Workbook**: `*develop-workbook`
   - Extract exercises into standalone format
   - Add additional practice materials
   - Design for independent use

---

### Phase 7: Publication Planning
**Agent: Publishing Strategist** 🚀

1. **Activate**: `/publishing-strategist`
2. **Plan Launch**:
   - `*create-launch-plan` - Comprehensive launch strategy
   - `*analyze-pricing` - Optimal pricing research
   - `*plan-distribution` - Channel strategy
   - `*design-marketing` - Promotion approach

---

## Complete Workflow Summary

```
1. Book Strategist → Book Blueprint Document (BBD) ✓
   └─ Defines target audience, transformation, value, strategy
   └─ Step 6.5: Elicits existing materials (Word, PDF, URLs)
   └─ AUTOMATICALLY converts files in source-materials/
   └─ Reads converted content from processed-materials/
   └─ Incorporates insights into BBD

   (Optional: Document Processor agent 📄 for manual processing)

2. Learning Architect → Learning Framework ✓
   └─ Designs instructional approach and outcomes

3. Skill Analyzer → Skill Decomposition Map ✓
   └─ Breaks skills into teachable components

4. Content Structurer → Book Structure ✓
   └─ Organizes into chapters with optimal flow

5. Exercise Designer → Exercise Library ✓
   └─ Creates practice materials

6. Case Study Curator → Example Collection ✓
   └─ Develops case studies and stories

7. Book Author → Draft Content ✓
   └─ Writes chapters based on specifications

8. Lector → Quality Review & Feedback ✓
   └─ Reviews, provides feedback, verifies revisions

9. [Loop 7-8 until all chapters complete and approved]

10. EA Document Sharder → Modular Document Structure (optional) 🔪
    └─ Splits large documents (>500 lines) into semantic modules
    └─ Use when: docs become unwieldy, performance issues, better organization needed
    └─ Commands: *analyze, *shard {file}, *shard-all

11. Clarity Editor → Enhanced Clarity (optional) ✓
    └─ Optimizes accessibility

12. Workbook Developer → Companion Workbook (optional) ✓
    └─ Creates practice materials

13. Publishing Strategist → Launch Plan ✓
    └─ Prepares for publication and marketing
```

## Comparison to BMAD Core Workflow

| BMAD Core (Software) | Educational Non-Fiction |
|---------------------|------------------------|
| Analyst → PRD | Book Strategist → Book Blueprint |
| Architect → Architecture Doc | Learning Architect → Learning Framework |
| PM → User Stories | Content Structurer → Chapter Specs |
| Dev → Code | Book Author → Content |
| QA → Testing & Feedback | Lector → Review & Feedback |
| Scrum Master (orchestration) | (User orchestrates workflow) |

## Key Principles

1. **Sequential Foundation**: BBD must be completed before learning design
2. **Specification-Driven Writing**: Author works from detailed specifications
3. **Iterative Quality**: Review-revise cycle for each chapter
4. **Checkpoint Approvals**: Major transitions require review/approval
5. **Specialized Expertise**: Each agent focuses on their domain
6. **Document-Centric**: BBD is single source of truth for project vision

## Getting Started

For your first book project:
1. Start with `/book-strategist` and `*create-blueprint`
2. Follow the phase sequence above
3. Don't skip the foundation phases - they ensure quality
4. Use the Lector extensively - quality reviews prevent major rework
5. Be iterative - perfect each chapter before moving forward

Ready to create your transformative educational book? Start with `/book-strategist`!
