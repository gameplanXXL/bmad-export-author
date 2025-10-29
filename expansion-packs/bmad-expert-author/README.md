# BMAD Expert Author Expansion Pack

## Overview

The **BMAD Expert Author Expansion Pack** extends the BMAD-METHOD™ framework with specialized AI agents designed to help authors create high-quality, transformative non-fiction books that enable readers to master practical skills.

This expansion pack provides a complete toolkit for creating educational books that combine compelling narratives, practical exercises, and proven learning methodologies.

## Core Philosophy

This expansion pack is built on proven instructional design principles:

- **ADDIE Model** - Analysis, Design, Development, Implementation, Evaluation for systematic learning design
- **Practice-Based Learning** - Hands-on exercises, worksheets, and real-world applications
- **Transformation-Focused** - Clear before/after outcomes with measurable skill progression
- **Accessibility** - Making complex skills learnable for complete beginners
- **Motivation & Engagement** - Storytelling, case studies, and inspirational elements

## Installation

This expansion pack is not part of the official BMAD distribution. To install it, use the provided Makefile:

### Quick Installation

```bash
# From your project root
make install
```

This will:
- Install all necessary tools
- Run the expansion pack installation script automatically

The installation script:
- Works on Linux, macOS, and Windows (Git Bash/WSL)
- Is idempotent (safe to run multiple times)
- Creates `.bmad-expert-author/` directory in your project root
- Copies all agents, tasks, templates, checklists, and data files
- Creates Claude Code slash commands in `.claude/commands/BMad/agents/`
- Updates `.bmad-core/install-manifest.yaml` to track the installation
- Automatically updates existing installations when run again

### Requirements

- BMAD-METHOD™ core framework must be installed (`.bmad-core/` directory exists)
- For Claude Code users: `.claude/commands/` directory structure
- Bash-compatible shell (Linux, macOS, Git Bash on Windows, or WSL)

### What Gets Installed

After installation, you'll see the following in your project:

```
your-project/
├── .bmad-core/                    # Core BMAD framework
│   ├── install-manifest.yaml      # Updated with expansion pack info
│   └── ...
├── .bmad-expert-author/           # Expansion pack files (NEW)
│   ├── agents/                    # Specialized agents
│   ├── tasks/                     # Task workflows
│   ├── templates/                 # Document templates
│   ├── checklists/                # Quality checklists
│   ├── data/                      # Reference data (ADDIE framework, etc.)
│   ├── workflows/                 # Complete workflow guides
│   └── README.md                  # Expansion pack documentation
├── .claude/                       # Claude Code integration (if using Claude Code)
│   └── commands/
│       └── BMad/
│           └── agents/
│               ├── book-author.md
│               ├── book-strategist.md
│               ├── lector.md
│               └── ...            # All expansion pack agents
└── expansion-packs/               # Source expansion packs
    └── bmad-expert-author/        # This directory (source)
```

The `.bmad-expert-author/` directory is the working installation, while `expansion-packs/bmad-expert-author/` is the source that can be version-controlled and shared.

## Usage

### Activating Agents (Claude Code)

After installation, activate agents using slash commands with the configured prefix:

```bash
/BMad:agents:ea-book-strategist       # Create book strategy and planning
/BMad:agents:ea-researcher            # Gather and organize source materials
/BMad:agents:ea-learning-architect    # Design your book's learning framework
/BMad:agents:ea-book-author           # Write book content following specifications
/BMad:agents:ea-lector                # Review and provide quality feedback
/BMad:agents:ea-skill-analyzer        # Break down skills into teachable steps
/BMad:agents:ea-exercise-designer     # Create practical exercises
/BMad:agents:ea-case-study-curator    # Develop examples and stories
/BMad:agents:ea-content-structurer    # Organize your material
/BMad:agents:ea-clarity-editor        # Ensure beginner-friendly explanations
/BMad:agents:ea-workbook-developer    # Create companion materials
/BMad:agents:ea-publishing-strategist # Plan your launch
```

**Note**: The command prefix (e.g., `BMad:agents:`) is determined by your BMAD installation configuration. Check your `.claude/commands/` directory structure for the exact commands available in your environment.

### Using Agent Commands

Once an agent is activated, use their internal commands (prefixed with `*`):

```bash
*help                    # Show all available commands for the active agent
*create-book-blueprint   # Create a comprehensive book plan (book-strategist)
*write-chapter 1         # Write chapter 1 (book-author)
*review-chapter          # Review chapter content (lector)
*exit                    # Exit agent mode
```

## Core Workflow

The BMAD Expert Author workflow follows a structured process similar to software development:

```
1. Book Strategist → Book Blueprint Document (BBD)
   Define target reader, transformation, unique approach, market positioning

2. Researcher → Source Materials Inventory
   Gather and organize all author materials, references, stories, and resources

3. Learning Architect → Learning Framework
   Design progressive skill building, learning outcomes, exercise strategy

4. Content Structurer → Chapter Outlines
   Create detailed structure and chapter specifications

5. Book Author → Content Writing
   Write chapters based on specifications

6. Lector → Quality Review
   Comprehensive review and feedback cycle
```

### Supporting Agents

- **Researcher** - Gather and organize all source materials (NEW - runs after Book Strategist)
- **Exercise Designer** - Create practical exercises and worksheets
- **Case Study Curator** - Develop compelling examples and success stories
- **Skill Analyzer** - Break down complex skills into teachable components
- **Clarity Editor** - Optimize text clarity for target audience
- **Workbook Developer** - Create companion workbooks
- **Publishing Strategist** - Plan publication and launch strategy

## Primary Use Cases

### 1. **Skill-Building Non-Fiction**
Write books that teach practical skills (financial literacy, productivity, communication, health, etc.) with clear learning outcomes and practice exercises.

### 2. **Professional Development Books**
Create career-focused books with actionable strategies, templates, and frameworks for workplace success.

### 3. **Self-Improvement Guides**
Develop transformation-focused books that combine personal stories, research, and practical exercises.

### 4. **Educational Workbooks**
Build companion workbooks with exercises, worksheets, and assessment tools.

### 5. **Online Course Adaptation**
Transform book content into structured online courses with modules, lessons, and interactive elements.

## Key Features

- **Comprehensive Writing Style Guide** - Central style authority inspired by Bodo Schäfer's clear, practical, and motivating approach for laypeople
- **Learning Outcome Mapping** - Every chapter linked to specific, measurable skills
- **Exercise Database** - Library of proven exercise formats and activity types
- **Case Study Templates** - Structured frameworks for compelling examples
- **Clarity Standards** - Readability analysis (Flesch 60-70, Grade 6-8) and beginner-friendly language checking
- **Voice & Tone Guidelines** - "The Encouraging Mentor" voice with context-adaptive tone
- **Educational Writing Best Practices** - Cognitive Load Theory, Scaffolding, Active Learning, and more
- **Plain Language Guidelines** - Techniques for making complex topics accessible
- **Progress Tracking** - Tools for creating skill assessments and progress measures
- **Market Research** - Competitive analysis for educational non-fiction categories

## Example Projects

This expansion pack can help you create books like:

- Financial literacy guides (à la "Der Weg zur finanziellen Freiheit", "Rich Dad Poor Dad")
- Productivity systems (à la "Getting Things Done", "Atomic Habits")
- Communication skills (à la "Crucial Conversations", "How to Win Friends")
- Health transformation (à la "The 4-Hour Body")
- Creative skills (à la "The Artist's Way")
- Business skills (à la "The E-Myth Revisited", "Zero to One")

## Key Success Principles

### 1. Don't Skip the Foundation
Invest time in Book Blueprint and Learning Framework first. The strategic foundation prevents major rework later.

### 2. Follow the Workflow
Each phase builds on the previous:
- BBD defines WHAT and WHY
- Learning Framework defines HOW
- Chapter outlines define SPECIFICALLY
- Writing executes the plan
- Lector ensures quality

### 3. Use the Lector Extensively
Quality reviews prevent publishing content that doesn't work:
- Review early and often
- Address feedback thoroughly
- Iterate until excellent

### 4. Work Chapter-by-Chapter
Don't write the entire book then review:
- Write one chapter
- Review and revise that chapter
- Get approval
- Move to next

This prevents cascading issues.

### 5. Think Like a Teacher, Not Just a Writer
Your job isn't just to share information—it's to enable transformation:
- Every chapter must have clear learning outcomes
- Exercises aren't optional—they're where learning happens
- Examples make abstract concepts concrete
- Assessments help readers measure progress

## Writing Style Resources

The expansion pack includes comprehensive style guides in the `data/` directory:

### Core Style Documents

- **`writing-style-guide.md`** - 🔴 **PRIMARY REFERENCE** - Central style authority with 7 core principles inspired by Bodo Schäfer:
  1. Klarheit für Laien (Clarity for laypeople)
  2. Persönliche Ansprache (Personal address)
  3. Praxisnahe Veranschaulichung (Practical examples)
  4. Aktive und lebendige Sprache (Active, lively language)
  5. Ermutigende Tonalität (Encouraging tone)
  6. Persönliche Geschichten (Personal stories)
  7. Zusammenfassungen & Merksätze (Summaries & key takeaways)

### Supporting Documents

- **`readability-standards.md`** - Flesch Reading Ease (60-70), Grade Level (6-8), sentence/word length guidelines
- **`voice-tone-guidelines.md`** - "The Encouraging Mentor" voice definition and tone adaptation strategies
- **`educational-writing-best-practices.md`** - Cognitive Load Theory, Scaffolding, Active Learning, ADDIE structure
- **`plain-language-guidelines.md`** - 10 Plain Language rules for making complex topics accessible
- **`transition-phrases.md`** - Comprehensive library of transition words and phrases for smooth flow
- **`README.md`** - Overview and usage guide for all style resources

**📌 Quick Start:** Begin with `data/writing-style-guide.md` - it's your compass for all writing tasks.

---

## File Organization

Your project will generate these key documents:

```
project-folder/
├── book-blueprint.yaml          # Strategic foundation (from book-strategist)
├── learning-framework.yaml      # Instructional design (from learning-architect)
├── book-structure.yaml          # Overall structure (from content-structurer)
├── outlines/
│   ├── chapter-01-outline.yaml
│   ├── chapter-02-outline.yaml
│   └── ...
├── drafts/
│   ├── chapter-01-draft.md
│   ├── chapter-02-draft.md
│   └── ...
├── reviews/
│   ├── review-chapter-01.yaml
│   ├── review-chapter-02.yaml
│   └── ...
└── resources/
    ├── exercises/
    ├── case-studies/
    └── templates/
```

## Contributing

We welcome contributions! Please see the main BMAD-METHOD contributing guidelines.

## License

This expansion pack is part of the BMAD-METHOD™ framework. See LICENSE file for details.

## Credits

Created for the BMAD community by integrating instructional design best practices, adult learning theory, and proven educational publishing methodologies.

---

**Ready to create transformative books?** Install the expansion pack using `make install` and activate your first agent!
