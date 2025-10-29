# Quick Start Guide: BMAD Educational Non-Fiction

## Welcome!

This expansion pack helps you create transformative educational non-fiction books that teach practical skills to beginners. Think books like:
- Bodo Schäfer's "Der Weg zur finanziellen Freiheit"
- "Atomic Habits" by James Clear
- "The 4-Hour Workweek" by Tim Ferriss

## The Core Workflow (Similar to BMAD Software Development)

```
BMAD Core (Software)          →    Educational Non-Fiction
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
1. Analyst → PRD              →    Book Strategist → Book Blueprint (BBD)
2. Architect → Architecture   →    Learning Architect → Learning Framework
3. PM → User Stories          →    Content Structurer → Chapter Outlines
4. Dev → Code                 →    Book Author → Content Writing
5. QA → Testing               →    Lector → Quality Review
```

## Getting Started: 5-Minute Setup

### Step 1: Start with Strategy 🎯

```bash
/book-strategist
```

The Book Strategist will guide you through creating your **Book Blueprint Document (BBD)** - the strategic foundation for your entire book project.

You'll define:
- Your target reader (who are they? what do they struggle with?)
- The transformation (what will they be able to do after your book?)
- Your unique approach (what makes your book different?)
- Market positioning (how does it fit in the market?)

**Time**: 45-90 minutes
**Output**: Complete Book Blueprint Document (like a PRD for your book)

### Step 2: Design the Learning Journey 🎓

```bash
/learning-architect
```

The Learning Architect transforms your Book Blueprint into a **Learning Framework**:
- How skills build progressively
- What learning outcomes each chapter achieves
- How exercises reinforce learning
- Assessment strategy

**Time**: 60-120 minutes
**Output**: Complete Learning Framework Document

### Step 3: Structure the Content 📐

```bash
/content-structurer
```

Creates your book's detailed structure:
- Part and chapter organization
- Optimal topic sequence
- Chapter outlines with specifications

**Time**: 30-60 minutes per detailed outline
**Output**: Book Structure + Detailed Chapter Outlines

### Step 4: Create Supporting Materials ✍️

Before writing chapters, prepare your exercises and examples:

**Exercises:**
```bash
/exercise-designer
*design-exercise {skill_name}
```

**Case Studies & Examples:**
```bash
/case-study-curator
*develop-case-study {topic}
```

**Time**: Ongoing as needed
**Output**: Library of exercises, worksheets, examples, case studies

### Step 5: Write Content ✍️

```bash
/book-author
*write-chapter 1
```

The Book Author writes chapters based on the detailed specifications:
- Follows chapter outline precisely
- Integrates prepared exercises and examples
- Maintains voice and readability standards
- Works iteratively, chapter by chapter

**Time**: 4-8 hours per chapter (varies by length/complexity)
**Output**: Complete chapter draft

### Step 6: Quality Review 🔍

```bash
/lector
*review-chapter 1
```

The Lector conducts comprehensive QA:
- Verifies alignment with Book Blueprint
- Checks learning outcomes achievement
- Evaluates clarity for target audience
- Reviews exercise quality
- Provides detailed, actionable feedback

**Feedback Loop:**
1. Lector reviews → Provides feedback
2. Book Author revises based on feedback
3. Lector verifies revisions
4. Iterate until approved
5. Move to next chapter

**Time**: 2-4 hours per chapter review
**Output**: Detailed review report with feedback

### Step 7: Enhancement (Optional) 💡

**Clarity Optimization:**
```bash
/clarity-editor
*clarify-text {section}
```

**Companion Workbook:**
```bash
/workbook-developer
*develop-workbook
```

### Step 8: Publication Planning 🚀

```bash
/publishing-strategist
*create-launch-plan
```

Develops your publishing and launch strategy:
- Pricing analysis
- Distribution channels
- Marketing approach
- Launch timeline

## Your First Book Project: Step-by-Step

### Week 1: Foundation
- [ ] Day 1-2: Create Book Blueprint with book-strategist
- [ ] Day 3-4: Design Learning Framework with learning-architect
- [ ] Day 5: Structure book with content-structurer

### Weeks 2-3: Preparation
- [ ] Create detailed outlines for first 3 chapters
- [ ] Develop exercise library for these chapters
- [ ] Curate case studies and examples

### Weeks 4-12: Writing & Review Cycle
For each chapter:
- [ ] Write draft (book-author)
- [ ] Submit for review (lector)
- [ ] Revise based on feedback
- [ ] Get approval
- [ ] Move to next chapter

### Week 13-14: Enhancement
- [ ] Clarity editing pass
- [ ] Create companion workbook (if desired)
- [ ] Final lector review

### Week 15: Publication Prep
- [ ] Develop launch plan (publishing-strategist)
- [ ] Prepare marketing materials
- [ ] Set up distribution

## Key Success Principles

### 1. Don't Skip the Foundation
❌ Jumping straight to writing
✅ Invest time in Book Blueprint and Learning Framework first

The strategic foundation prevents major rework later.

### 2. Follow the Workflow
Each phase builds on the previous:
- BBD defines WHAT and WHY
- Learning Framework defines HOW
- Chapter outlines define SPECIFICALLY
- Writing executes the plan
- Lector ensures quality

### 3. Use the Lector Extensively
Quality reviews prevent publishing content that doesn't work.
- Review early and often
- Address feedback thoroughly
- Iterate until excellent

### 4. Work Chapter-by-Chapter
Don't write the entire book then review.
- Write one chapter
- Review and revise that chapter
- Get approval
- Move to next

This prevents cascading issues.

### 5. Think Like a Teacher, Not Just a Writer
Your job isn't just to share information—it's to enable transformation.
- Every chapter must have clear learning outcomes
- Exercises aren't optional—they're where learning happens
- Examples make abstract concepts concrete
- Assessments help readers measure progress

## Common Workflows

### Creating a Skill-Building Book (Like "Financial Freedom" Books)
1. book-strategist → Book Blueprint
2. learning-architect → Learning Framework
3. skill-analyzer → Break skill into micro-skills
4. content-structurer → Progressive chapter sequence
5. exercise-designer → Worksheets and practice exercises
6. case-study-curator → Success stories and transformations
7. book-author → Write content
8. lector → Quality review
9. workbook-developer → Companion workbook
10. publishing-strategist → Launch plan

### Creating a How-To Manual
1. book-strategist → Book Blueprint
2. skill-analyzer → Task decomposition
3. content-structurer → Step-by-step structure
4. exercise-designer → Practice exercises
5. book-author → Write procedures
6. lector → Clarity and completeness review
7. clarity-editor → Simplify language
8. publishing-strategist → Distribution plan

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

## Getting Help

### Available Commands Summary

**Strategic Planning:**
- `/book-strategist` - Create Book Blueprint
- `/publishing-strategist` - Plan launch

**Instructional Design:**
- `/learning-architect` - Design learning framework
- `/skill-analyzer` - Break down skills
- `/content-structurer` - Organize content

**Content Creation:**
- `/book-author` - Write chapters
- `/exercise-designer` - Create exercises
- `/case-study-curator` - Develop examples

**Quality & Enhancement:**
- `/lector` - Comprehensive quality review
- `/clarity-editor` - Optimize clarity
- `/workbook-developer` - Create workbooks

### When to Use Which Agent

**"I have a book idea but need to refine it"**
→ `/book-strategist`

**"I have my Book Blueprint, now what?"**
→ `/learning-architect`

**"I need to organize my chapters"**
→ `/content-structurer`

**"I need to break down this complex skill"**
→ `/skill-analyzer`

**"I need practice exercises for this chapter"**
→ `/exercise-designer`

**"I need compelling examples"**
→ `/case-study-curator`

**"I'm ready to write a chapter"**
→ `/book-author`

**"I need my chapter reviewed"**
→ `/lector`

**"This section is too complex"**
→ `/clarity-editor`

**"I want to create a workbook"**
→ `/workbook-developer`

**"I'm ready to publish"**
→ `/publishing-strategist`

## Realistic Timeline Estimates

**Short Book (30,000-40,000 words, 8-10 chapters):**
- Foundation (BBD + Learning Framework): 1-2 weeks
- Detailed Planning (Chapter Outlines): 1 week
- Writing & Review: 8-12 weeks
- Enhancement: 1-2 weeks
- **Total: 3-4 months**

**Standard Book (50,000-70,000 words, 12-15 chapters):**
- Foundation: 2 weeks
- Planning: 1-2 weeks
- Writing & Review: 12-20 weeks
- Enhancement: 2-3 weeks
- **Total: 4-6 months**

**Comprehensive Book (80,000+ words, 15-20 chapters):**
- Foundation: 2-3 weeks
- Planning: 2 weeks
- Writing & Review: 20-30 weeks
- Enhancement: 3-4 weeks
- **Total: 6-9 months**

## Tips for Success

1. **Schedule regular writing blocks** - Consistency beats sporadic bursts
2. **Complete one chapter fully before moving on** - Including all review iterations
3. **Build exercise library as you go** - Don't save all exercises for the end
4. **Test exercises with real people** - Ideal reader volunteers are invaluable
5. **Keep Book Blueprint visible** - Regularly reference to stay aligned
6. **Celebrate milestones** - Each approved chapter is an achievement
7. **Join writing community** - Accountability accelerates progress

## Ready to Start?

Launch your first agent:

```bash
/book-strategist
```

And begin creating your transformative educational book! 📚✨

---

**Questions? Issues?**
See the full README.md for detailed information about all agents, workflows, and capabilities.
