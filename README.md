# BMAD Expert Author Expansion Pack

**Transform Your Expertise into Transformative Educational Books**

This is a specialized expansion pack for the BMAD-METHOD™ framework that provides AI agents for creating high-quality educational non-fiction books.

---

## Quick Links

- **📖 [Complete Documentation](expansion-packs/bmad-expert-author/README.md)** - Full agent list, workflows, and features
- **🚀 [Installation Guide](#installation)** - Get started quickly
- **🛠️ [Developer Guide](CLAUDE.md)** - For development and maintenance
- **📋 [Project Structure](expansion-packs/bmad-expert-author/PROJECT-STRUCTURE.md)** - File organization details
- **🔄 [Workflows](expansion-packs/bmad-expert-author/workflows/README.md)** - Step-by-step process guides

---

## What Is This?

The **BMAD Expert Author Expansion Pack** extends the BMAD-METHOD™ framework with **17 specialized AI agents** designed to help you create transformative non-fiction books that teach practical skills.

### Target Audience

Authors writing educational books about:
- Financial literacy
- Productivity and time management
- Communication skills
- Health and personal transformation
- Creative skills
- Business skills

### Core Philosophy

Built on proven instructional design principles:
- **ADDIE Model** - Systematic learning design
- **Practice-Based Learning** - Hands-on exercises and real-world applications
- **Transformation-Focused** - Clear before/after outcomes
- **Accessibility** - Making complex skills learnable for beginners

---

## Installation

### Prerequisites

- Git
- Make
- Node.js (for document processing tools)
- Claude Code (or compatible IDE)

### Quick Install

```bash
# Clone or navigate to your project
cd your-project

# Install the expansion pack
make install
```

This will:
1. Install document processing tools (mammoth, pdf-parse, turndown, mdpdf)
2. Copy expansion pack files to `.bmad-expert-author/`
3. Create 17 Claude Code slash commands in `.claude/commands/BMad/agents/`
4. Update installation manifest

**Verification:**
```bash
# Check installation
ls -la .bmad-expert-author/
ls -la .claude/commands/BMad/agents/

# You should see 17 agent files
```

---

## Getting Started

### 1. Activate Your First Agent

In Claude Code, start with the Book Strategist:

```bash
/BMad:agents:ea-book-strategist
```

### 2. Create Your Book Blueprint

Once activated, run:

```bash
*help                      # See all available commands
*create-blueprint          # Start your book planning
```

### 3. Follow the Workflow

The expansion pack guides you through a proven process:

```
1. Book Strategist → Book Blueprint (strategic foundation)
2. Researcher → Source Materials (gather existing content) [OPTIONAL]
3. Learning Architect → Learning Framework (instructional design)
4. Content Structurer → Chapter Outlines (detailed structure)
5. Book Author → Content Writing (execute the plan)
6. Fact Checker → Citations & Verification [NEW]
7. Visual Designer → Images & Diagrams [NEW]
8. Lector → Quality Review (iterative feedback)
9. Publishing Strategist → Launch Planning
```

**📖 For complete workflow details**, see [workflows/README.md](expansion-packs/bmad-expert-author/workflows/README.md)

---

## Available Agents (17 Total)

### Strategic Planning (2)
- 📊 **Book Strategist** - Creates Book Blueprint Document
- 🚀 **Publishing Strategist** - Plans publication and launch

### Instructional Design (3)
- 🎓 **Learning Architect** - Designs learning framework
- 🔬 **Skill Analyzer** - Decomposes complex skills
- 📐 **Content Structurer** - Organizes content structure

### Content Creation (4)
- ✍️ **Book Author** - Writes chapter content (with auto PDF generation)
- ✍️ **Exercise Designer** - Creates practice exercises
- 📖 **Case Study Curator** - Develops examples and stories
- 🔬 **Researcher** - Gathers and organizes source materials

### Utility (2)
- 📄 **Document Processor** - Converts DOCX, PDF, HTML to Markdown
- 🔪 **EA Sharder** - Splits large documents intelligently

### Quality & Enhancement (6)
- 🔍 **Fact Checker** - Verifies claims and adds citations
- 🎨 **Visual Designer** - Plans and embeds images
- 🔍 **Lector** - Comprehensive quality review
- 💡 **Clarity Editor** - Optimizes readability
- 🔥 **Reader Motivation** - Weaves narrative techniques (optional)
- 📝 **Workbook Developer** - Creates companion workbooks

**📖 For detailed agent documentation**, see [expansion-packs/bmad-expert-author/README.md](expansion-packs/bmad-expert-author/README.md)

---

## Key Features

✅ **17 Specialized Agents** - Complete toolkit for book authoring
✅ **Proven Workflow** - Based on ADDIE instructional design model
✅ **Auto PDF Generation** - Book Author generates full book PDF after each chapter
✅ **Document Processing** - Converts existing materials (DOCX, PDF, HTML)
✅ **Fact Checking** - Verifies claims and adds authoritative citations
✅ **Visual Design** - Plans and embeds images, diagrams, charts
✅ **Narrative Techniques** - Optional crisis arcs and frame stories
✅ **Quality Assurance** - Comprehensive review and feedback system
✅ **Document Sharding** - Manages large documents efficiently

---

## Example Use Cases

This expansion pack helps you create books like:

- 💰 Financial literacy guides ("Der Weg zur finanziellen Freiheit", "Rich Dad Poor Dad")
- ⚡ Productivity systems ("Getting Things Done", "Atomic Habits")
- 💬 Communication skills ("Crucial Conversations", "How to Win Friends")
- 🏃 Health transformation ("The 4-Hour Body")
- 🎨 Creative skills ("The Artist's Way")
- 💼 Business skills ("The E-Myth Revisited", "Zero to One")

---

## Project Structure

Your book project will look like this:

```
your-book-project/
├── book-blueprint.yaml              # Strategic foundation
├── learning-framework.yaml          # Instructional design
├── book-structure.yaml              # Overall structure
├── chapters/                        # Chapter markdown files
├── outlines/                        # Chapter specifications
├── reviews/                         # Quality reviews
├── resources/                       # Exercises, case studies
├── source-materials/                # Input files (DOCX, PDF, etc.)
├── processed-materials/             # Converted markdown
├── output/                          # Generated PDFs
└── publishing/                      # Launch planning
```

**📖 For complete structure details**, see [PROJECT-STRUCTURE.md](expansion-packs/bmad-expert-author/PROJECT-STRUCTURE.md)

---

## Documentation

### For Users
- **[Complete Agent Documentation](expansion-packs/bmad-expert-author/README.md)** - All agents, features, and usage
- **[Workflow Guide](expansion-packs/bmad-expert-author/workflows/README.md)** - Step-by-step process
- **[Project Structure](expansion-packs/bmad-expert-author/PROJECT-STRUCTURE.md)** - File organization

### For Developers
- **[Development Guide](CLAUDE.md)** - Development vs. User mode, Git workflow
- **[Expansion Pack Source](expansion-packs/bmad-expert-author/)** - Source code and templates

---

## Key Success Principles

### 1. Don't Skip the Foundation
Invest time in Book Blueprint and Learning Framework first. The strategic foundation prevents major rework later.

### 2. Follow the Workflow
Each phase builds on the previous - don't skip steps.

### 3. Use the Lector Extensively
Review early and often. Iterate until excellent.

### 4. Work Chapter-by-Chapter
Write one chapter → Review → Approve → Next chapter. This prevents cascading issues.

### 5. Think Like a Teacher
Your job is to enable transformation through clear learning outcomes, practical exercises, and concrete examples.

---

## Contributing

We welcome contributions! Please see the main BMAD-METHOD contributing guidelines.

---

## Version

**Current Version:** 1.2
**Last Updated:** 2025-10-31
**Framework:** BMAD-METHOD™

### Recent Updates (v1.2)
- Added Fact Checker agent for citation verification
- Added Visual Designer agent for image planning
- Added Reader Motivation agent for narrative engagement
- Updated to 17 total agents
- Added Researcher agent documentation
- Updated workflows with all agents

**📖 For complete version history**, see [expansion-packs/bmad-expert-author/README.md](expansion-packs/bmad-expert-author/README.md)

---

## License

Part of the BMAD-METHOD™ Framework

---

## Support

- **Issues:** GitHub Issues for bug reports and feature requests
- **Community:** BMAD Community for discussions
- **Documentation:** See links above

---

**Ready to create your transformative educational book?**

```bash
make install
/BMad:agents:ea-book-strategist
*create-blueprint
```

Let's get started! 📚
