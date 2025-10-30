# BMAD Expert Author Expansion Pack

**Transform Your Expertise into Transformative Educational Books**

Version: 1.1
Last Updated: 2025-10-29
Framework: BMAD-METHOD™

---

## Overview

The **BMAD Expert Author Expansion Pack** provides specialized AI agents for creating high-quality educational non-fiction books that teach practical skills to readers. It combines narrative elements, hands-on exercises, and proven instructional design methods (ADDIE model) to help authors write books that truly transform their readers.

### Target Audience

Authors writing educational books about:
- Financial literacy
- Productivity and time management
- Communication skills
- Health and personal transformation
- Creative skills
- Business skills

---

## Quick Start

### Installation

```bash
# Install the expansion pack
make install

# Verify installation
ls -la .bmad-expert-author/
ls -la .claude/commands/BMad/agents/
```

### First Steps

1. **Start with strategy**: `/BMad:agents:book-strategist`
2. **Create Book Blueprint**: `*create-blueprint`
3. **Follow the workflow**: See `workflows/README.md`

---

## Core Workflow

```
1. Book Strategist → Book Blueprint Document (BBD)
   └─ Step 6.5: Elicits existing materials (Word, PDF, URLs)
   └─ AUTOMATICALLY converts files in source-materials/
   └─ Reads converted content and incorporates into BBD
   ↓
2. Learning Architect → Learning Framework
   ↓
3. Content Structurer → Chapter Outlines
   ↓
4. Book Author → Content Writing
   ↓
5. Fact Checker → Verify Claims & Add Citations (NEW!)
   └─ Identifies factual claims (numbers, statistics, research)
   └─ Finds primary sources (studies, official data)
   └─ Creates fact-check report with verified sources
   ↓
6. Visual Designer → Plan & Embed Images (NEW!)
   └─ Identifies opportunities for visuals
   └─ Creates AI prompts or suggests stock images
   └─ Embeds diagrams, charts, photos in chapter
   ↓
7. Lector → Quality Review & Feedback Loop
   ↓
8. (Optional) EA Sharder → Modular Document Organization
   ↓
9. (Optional) Enhancement → Clarity/Workbook
   ↓
10. Publishing Strategist → Launch Planning
```

**Full workflow details**: See `workflows/README.md`

---

## Available Agents

### Strategic Planning

#### 📊 Book Strategist (`/BMad:agents:book-strategist`)
**Purpose**: Creates the strategic foundation (Book Blueprint Document)

**Key outputs**:
- Target audience analysis
- Reader transformation journey
- Market positioning
- Learning objectives
- Content scope & approach

**When to use**: First step of every book project

---

#### 🚀 Publishing Strategist (`/BMad:agents:publishing-strategist`)
**Purpose**: Plans publication and launch strategy

**Key outputs**:
- Launch plan
- Pricing strategy
- Distribution channels
- Marketing approach

**When to use**: After content is complete, before publication

---

### Instructional Design

#### 🎓 Learning Architect (`/BMad:agents:learning-architect`)
**Purpose**: Designs the instructional framework

**Key outputs**:
- Learning progression map
- Learning outcomes per chapter
- Assessment strategy
- Scaffolding approach

**When to use**: After Book Blueprint is approved

---

#### 🔬 Skill Analyzer (`/BMad:agents:skill-analyzer`)
**Purpose**: Decomposes complex skills into teachable micro-skills

**Key outputs**:
- Skill decomposition map
- Prerequisites identification
- Skill progression sequence

**When to use**: After Learning Framework, before Content Structure

---

#### 📐 Content Structurer (`/BMad:agents:content-structurer`)
**Purpose**: Organizes content into optimal learning flow

**Key outputs**:
- Book structure (parts, chapters, sections)
- Chapter outlines with learning outcomes
- Exercise placement strategy

**When to use**: After Learning Framework and Skill Analysis

---

### Content Creation

#### ✍️ Book Author (`/BMad:agents:book-author`)
**Purpose**: Writes chapter content based on specifications

**✨ Automatic PDF Generation**: After completing each chapter, automatically generates **full book PDF** for review!

**Key outputs**:
- Chapter drafts (Markdown)
- Full book PDF (automatically generated after each chapter)
- Integrated exercises
- Woven case studies and examples

**Key commands**:
- `*write-chapter {N}` - Write chapter N, auto-generates full book PDF
- `*generate-pdf` - Manually generate full book PDF

**How PDF generation works**:
1. Book Author completes chapter → saves to `chapters/chapter-NN.md`
2. Automatically runs: `make pdf`
3. Combines ALL chapters → generates `output/book.pdf`
4. User sees complete book with new chapter in context

**Why full book PDF?**
- See new chapter in context of entire book
- Review flow and transitions between chapters
- Check narrative consistency across all chapters

**When to use**: After chapter outlines are complete

---

#### ✍️ Exercise Designer (`/BMad:agents:exercise-designer`)
**Purpose**: Creates practice exercises and worksheets

**Key outputs**:
- Practice exercises
- Structured worksheets
- Skill assessments

**When to use**: Before or during content writing (Phase 3/4)

---

#### 📖 Case Study Curator (`/BMad:agents:case-study-curator`)
**Purpose**: Develops examples and transformation stories

**Key outputs**:
- Case studies
- Success stories
- Diverse examples library

**When to use**: Before or during content writing (Phase 3/4)

---

### Utility Agents

#### 📄 Document Processor (`/BMad:agents:document-processor`)
**Purpose**: Converts user's existing materials into usable formats

**✨ Automatic Integration**: Book Strategist automatically converts documents during Step 6.5 - no manual invocation needed!

**Key capabilities**:
- Converts Word (.docx) → Markdown
- Extracts text from PDF → Markdown
- Converts HTML → Markdown
- Batch processes entire directories
- Generates conversion reports

**How it works**:
1. User places files in `source-materials/` directory
2. Book Strategist detects files during `*create-blueprint`
3. Conversion happens automatically
4. Converted files appear in `processed-materials/`
5. Book Strategist reads and incorporates insights

**Manual use (optional)**:
- Standalone document processing: `/BMad:agents:document-processor`
- Useful for processing materials outside of blueprint creation

**Supported formats**: DOCX, PDF, HTML, TXT

---

### Quality & Enhancement

#### 🔍 Fact Checker (`/BMad:agents:fact-checker`) **NEW!**
**Purpose**: Verifies factual claims and adds authoritative citations

**Key outputs**:
- Fact-check reports with verified sources
- Bibliography with primary sources
- Citation recommendations
- Accuracy verification for statistics and claims

**Key commands**:
- `*check-chapter {N}` - Comprehensive fact-check of chapter
- `*find-claims {N}` - Identify all factual claims
- `*add-citations {N}` - Add inline citations to chapter

**When to use**: After chapter draft, BEFORE lector review

**How it works**:
1. Scans chapter for factual claims (percentages, statistics, research claims)
2. Uses WebSearch to find primary sources (peer-reviewed studies, official data)
3. Verifies accuracy of each claim against sources
4. Creates detailed fact-check report
5. Optionally adds inline citations to chapter text

**Example**:
- Finds claim: "50% der Bevölkerung leidet unter Stress"
- Searches for primary source
- Verifies with: Schmidt et al. (2023) European stress meta-analysis
- Recommends: Add citation [^1] and adjust scope to "European adults"

---

#### 🎨 Visual Designer (`/BMad:agents:visual-designer`) **NEW!**
**Purpose**: Plans and embeds images, diagrams, and visual elements

**Key outputs**:
- Visual plan with placement recommendations
- AI image generation prompts (DALL-E, Midjourney)
- Mermaid diagrams and charts
- Image organization system
- Embedded visuals with captions and alt text

**Key commands**:
- `*plan-visuals {N}` - Create comprehensive visual plan for chapter
- `*create-prompt {description}` - Generate AI image prompt
- `*organize-author-images` - Process author-provided images
- `*embed-visuals {N}` - Add visual embeds to chapter

**When to use**: After fact-checking, BEFORE lector review

**How it works**:
1. Analyzes chapter for visualization opportunities
2. Categorizes needs (photos, diagrams, charts, illustrations)
3. Creates detailed image prompts for AI generation OR suggests stock keywords
4. Organizes images in structured folder system
5. Embeds visuals in chapter with proper captions and alt text

**Visual Types**:
- 📸 Photos/Stock Images (real-world context, examples)
- 📊 Charts/Graphs (data visualization, comparisons)
- 🔀 Diagrams (processes, workflows, relationships)
- 🎨 Illustrations (conceptual ideas, metaphors)
- 📱 Screenshots (software tutorials, UI demos)

**Example Prompt** (AI-generated image):
```
"Professional woman reviewing budget spreadsheet at desk,
modern minimalist photography, warm natural lighting,
over-shoulder view showing laptop with charts,
photorealistic, high detail, 8k"
```

---

#### 🔍 Lector (`/BMad:agents:lector`)
**Purpose**: Comprehensive quality review and feedback

**Key outputs**:
- Chapter reviews
- Alignment verification
- Exercise evaluation
- Clarity assessment
- Actionable feedback

**When to use**: After fact-checking and visual design, iteratively until approval

---

#### 💡 Clarity Editor (`/BMad:agents:clarity-editor`)
**Purpose**: Optimizes clarity and accessibility

**Key outputs**:
- Simplified explanations
- Readability optimization
- Jargon elimination

**When to use**: After Lector approval, for final polish (optional)

---

#### 📝 Workbook Developer (`/BMad:agents:workbook-developer`)
**Purpose**: Creates companion workbooks

**Key outputs**:
- Standalone workbook
- Additional practice materials
- Tracking tools

**When to use**: After main book is complete (optional)

---

### Document Management

#### 🔪 EA Document Sharder (`/BMad:agents:ea-shard`)
**Purpose**: Intelligently splits large documents into modular files

**Key commands**:
- `*shard {file}` - Split single document
- `*shard-all` - Batch process all large files in docs/
- `*analyze {file}` - Preview splitting strategy
- `*preview {file}` - Show proposed module structure

**When to use**:
- Documents exceed 500 lines
- Performance issues with large files
- Better modular organization needed
- Typically after Phase 2 (Learning Architecture) or Phase 5 (QA)

**What it does**:
- Analyzes document structure semantically
- Proposes intelligent splitting strategy
- Creates subdirectory with modules (~150-250 lines each)
- Generates master `README.md` with navigation
- Uses meaningful filenames (not generic numbering)
- Preserves all content (original deleted, Git history preserved)

**Example result**:
```
docs/
├── learning-framework/
│   ├── README.md                    # Master index & navigation
│   ├── instructional-approach.md    # ~180 lines
│   ├── learning-progression.md      # ~220 lines
│   ├── outcomes-by-chapter.md       # ~420 lines
│   └── exercise-design.md           # ~180 lines
```

**Benefits**:
- ⚡ Faster loading for Claude Code agents
- 🧭 Better navigation with indexes
- 📝 Easier maintenance of focused modules
- 🎯 Load only needed sections

**See also**: `PROJECT-STRUCTURE.md` section "Document Sharding"

---

## Project Structure

When working with this expansion pack, your book project will have this structure:

```
your-book-project/
├── book-blueprint.yaml              # Strategic foundation
├── learning-framework.yaml          # Instructional design
├── book-structure.yaml              # Overall structure
├── outlines/                        # Chapter specifications
├── drafts/                          # Written content
├── reviews/                         # Quality reviews
├── resources/                       # Exercises, case studies
├── docs/                            # Large documents (may be sharded)
├── workbooks/                       # Companion materials (optional)
└── publishing/                      # Launch planning (optional)
```

**Full structure details**: See `PROJECT-STRUCTURE.md`

---

## Expansion Pack Contents

### Agents (11 total)
Located in: `agents/`

All agents follow BMAD Core patterns with specialized personas for book authoring.

### Tasks
Located in: `tasks/`

Executable workflows for:
- Blueprint creation
- Framework design
- Content writing
- Quality review
- Document sharding
- And more

### Templates
Located in: `templates/`

YAML templates for:
- Book Blueprint
- Learning Framework
- Chapter Outlines
- Reviews
- And more

### Checklists
Located in: `checklists/`

Quality checklists for:
- Blueprint validation
- Content review
- Exercise effectiveness
- Clarity assessment

### Data
Located in: `data/`

Reference materials:
- ADDIE model guidelines
- Instructional design principles
- Quality standards

### Workflows
Located in: `workflows/`

Complete workflow guides:
- Core workflow (skill-building book development)
- Phase-by-phase instructions
- Agent coordination

---

## Installation Details

The expansion pack is installed via `make install`, which:

1. Copies all files from `expansion-packs/bmad-expert-author/` to `.bmad-expert-author/`
2. Creates Claude Code slash commands in `.claude/commands/BMad/agents/`
3. Updates `.bmad-core/install-manifest.yaml`

**Installed directories** (ignored by Git):
- `.bmad-expert-author/` - Full expansion pack installation
- `.claude/commands/BMad/agents/` - Claude Code integration

**Source directory** (tracked in Git):
- `expansion-packs/bmad-expert-author/` - Source code

---

## Key Principles

1. **Sequential Foundation**: Book Blueprint must be completed before learning design
2. **Specification-Driven Writing**: Author works from detailed specifications
3. **Iterative Quality**: Review-revise cycle for each chapter
4. **Checkpoint Approvals**: Major transitions require review/approval
5. **Specialized Expertise**: Each agent focuses on their domain
6. **Document-Centric**: Book Blueprint is single source of truth
7. **Modular Organization**: Large documents can be sharded for better maintainability

---

## Comparison to BMAD Core

| BMAD Core (Software) | Expert Author (Books) |
|---------------------|----------------------|
| Analyst → PRD | Book Strategist → Book Blueprint |
| Architect → Architecture | Learning Architect → Learning Framework |
| PM → User Stories | Content Structurer → Chapter Specs |
| Dev → Code | Book Author → Content |
| QA → Testing | Lector → Review & Feedback |

---

## Getting Help

### Commands
All agents support:
- `*help` - Show available commands
- `*exit` - Exit agent

### Documentation
- `workflows/README.md` - Complete workflow guide
- `PROJECT-STRUCTURE.md` - Project organization details
- `CLAUDE.md` (project root) - Context for Claude Code

### Development
See `CLAUDE.md` in project root for:
- Development vs. User mode
- Git workflow
- Installation process
- Making changes to expansion pack

---

## Version History

### v1.1 (2025-10-29)
- Added EA Document Sharder agent
- Integrated sharding into workflow
- Updated documentation with sharding guidance
- Removed backup functionality (Git history is primary)

### v1.0 (Initial Release)
- 10 core agents for book authoring
- Complete workflow implementation
- ADDIE-based instructional design
- Quality review system

---

## License

Part of the BMAD-METHOD™ Framework

---

## Contact & Support

- GitHub Issues for bug reports and feature requests
- BMAD Community for discussions
- Documentation: This README and linked files

---

**Ready to create your transformative educational book?**

Start with: `/BMad:agents:book-strategist`
