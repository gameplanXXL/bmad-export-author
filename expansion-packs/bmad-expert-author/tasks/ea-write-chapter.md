# Task: Write Chapter Content

**Agent**: Book Author
**Output**: Chapter Markdown file and PDF
**Elicit**: false

## Purpose
Write complete chapter content based on specifications from Book Blueprint and Learning Framework, then automatically generate a PDF for review.

## Prerequisites
- Book Blueprint Document (BBD) exists
- Learning Framework completed
- Chapter specifications defined
- Writing Style Guide loaded (data/writing-style-guide.md)
- chapters/ directory exists

## Process

### Step 1: Load Specifications

Load required documents:
- Book Blueprint Document: `docs/book-blueprint.md`
- Learning Framework: (path from BBD)
- Chapter Specifications for this chapter
- Writing Style Guide: `.bmad-expert-author/data/writing-style-guide.md`

Verify you understand:
- Target audience and their level
- Learning outcomes for this chapter
- Key concepts to cover
- Exercises/examples to integrate
- Voice and tone requirements

### Step 2: Create Chapter File

Determine chapter number and create file:
- Format: `chapters/chapter-{NN}.md` (e.g., chapter-01.md, chapter-03.md)
- Use zero-padded numbers (01, 02, 03, not 1, 2, 3)
- Create chapters/ directory if it doesn't exist

```bash
mkdir -p chapters
```

### Step 3: Write Chapter Content

Write complete chapter following this structure:

#### Chapter Header
```markdown
# Chapter {N}: {Title}

*{Brief chapter overview - 2-3 sentences}*

---
```

#### Learning Objectives
```markdown
## What You'll Learn

By the end of this chapter, you'll be able to:

- {Objective 1}
- {Objective 2}
- {Objective 3}
- {Objective 4}
```

#### Main Content Sections
- Follow chapter specifications exactly
- Use clear, descriptive section headings
- Write at appropriate reading level (Flesch 60-70, Grade 6-8)
- Use active voice and action verbs
- Include concrete examples before abstract concepts
- Integrate exercises and case studies seamlessly
- Add smooth transitions between sections

#### Summary
```markdown
## Chapter Summary

In this chapter, you learned:

- {Key takeaway 1}
- {Key takeaway 2}
- {Key takeaway 3}
```

#### Next Steps
```markdown
## Your Next Steps

1. {Actionable step 1}
2. {Actionable step 2}
3. {Actionable step 3}

Ready to continue? In the next chapter, we'll explore {preview of next chapter}.
```

### Step 4: Apply Markdown Formatting Rules

**CRITICAL:** Ensure correct Markdown formatting:

✅ **Correct List Formatting:**
```markdown
**Key principles:**

- ✅ Item one
- ✅ Item two
- ✅ Item three
```

❌ **NEVER use inline checkmarks:**
```markdown
✅ Item one ✅ Item two ✅ Item three
```

**Formatting Checklist:**
- [ ] Empty line BEFORE every list
- [ ] Empty line AFTER every list
- [ ] Use `- ` or `1. ` for all lists
- [ ] Nested lists indented with 2 spaces
- [ ] No inline checkmarks (always use list syntax)

### Step 5: Save Chapter File

Write complete chapter to file:
- Path: `chapters/chapter-{NN}.md`
- Encoding: UTF-8
- Format: Markdown

### Step 6: Automatically Generate Full Book PDF

**CRITICAL:** After writing chapter, generate PDF of ENTIRE BOOK automatically:

```bash
make pdf
```

This will:
- Combine ALL chapters in chapters/ directory
- Generate complete book PDF using mdpdf
- Store in: `output/book.pdf`
- Display file size and location

**Why full book PDF?**
- See new chapter in context of entire book
- Check flow and transitions between chapters
- Review complete narrative arc
- Identify consistency issues across chapters

**Output to user:**
```
✅ Chapter {N} written: chapters/chapter-{NN}.md
📚 Generating full book PDF (all chapters)...
✅ PDF created: output/book.pdf
📊 File size: {size}
📖 Chapters included: {count}

Your chapter is complete! The PDF shows the entire book with your new chapter in context.
```

### Step 7: Automatically Commit Changes

**CRITICAL:** Automatically commit the chapter to Git:

```bash
git add chapters/chapter-{NN}.md output/book.pdf
git commit -m "Add chapter {N}: {chapter_title}

✍️ Complete chapter with learning objectives, examples, and exercises
📚 Auto-generated full book PDF for review

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"
```

**IMPORTANT:**
- DO commit automatically after every chapter
- DO NOT push automatically (user decides when to push)
- Include both chapter MD and PDF in commit

### Step 8: Handoff to Lector

Inform user that chapter is ready for quality review:

```
Your chapter is complete and ready for review!

📄 Chapter Markdown: chapters/chapter-{NN}.md
📚 Full Book PDF: output/book.pdf (all chapters combined)
✅ Changes committed to Git (not pushed - you control when to push)

Next steps:
1. Review the chapter in context (see book.pdf)
2. Activate lector for quality review: /BMad:agents:lector
3. Run: *review-chapter {chapter_number}
4. I'll revise based on feedback and regenerate full book PDF
```

## Success Criteria

- [ ] Chapter file created in chapters/ directory
- [ ] All specified content sections included
- [ ] Writing follows style guide (data/writing-style-guide.md)
- [ ] Readability level appropriate (Flesch 60-70)
- [ ] Correct Markdown formatting (lists, headings)
- [ ] Full book PDF automatically generated in output/ directory
- [ ] Changes automatically committed to Git (not pushed)
- [ ] User informed of completion and next steps

## Output Deliverables

1. **Chapter Markdown**: `chapters/chapter-{NN}.md`
   - Complete chapter content
   - Properly formatted Markdown
   - Follows style guide

2. **Full Book PDF**: `output/book.pdf`
   - Automatically generated
   - Contains ALL chapters (entire book)
   - New chapter visible in context
   - Ready for review

## Error Handling

**If PDF generation fails:**
1. Ensure mdpdf is installed: `npm install`
2. Check that chapters/ directory contains Markdown files
3. Verify output/ directory is writable
4. Re-run: `make pdf`

**If chapter specifications unclear:**
- Ask user for clarification before writing
- Don't guess - precise specifications ensure quality

## Notes

- **First draft focus:** Get complete content down, refinement comes later
- **PDF is preview:** Formatting will be refined in editing/publication process
- **Iterate with lector:** Expect multiple review/revision cycles
- **Automatic PDF:** Eliminates manual step, provides immediate visual feedback
