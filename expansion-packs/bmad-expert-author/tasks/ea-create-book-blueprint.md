# Task: Create Book Blueprint Document

**Agent**: Book Strategist
**Output**: Book Blueprint Document (BBD)
**Template**: book-blueprint-tmpl.md
**Elicit**: true
**Output Path**: `docs/book-blueprint.md` (create docs/ directory if doesn't exist)

## Purpose
Create the comprehensive strategic foundation document that guides all subsequent book development work.

## Prerequisites
- Book concept or idea (may be rough)
- Author's expertise/experience in the topic
- General sense of intended audience

## Process

### Step 1: Initial Concept Discovery
**Elicit from user:**

```
I'll help you create a comprehensive Book Blueprint Document for your educational non-fiction book. This strategic foundation will guide all subsequent development work.

Let's start with your book concept:

1. **Book Topic**: What skill or transformation will your book teach?

2. **Working Title**: What's your current title idea? (This can evolve)

3. **Your Expertise**: What makes you qualified to teach this? (Experience, credentials, results you've achieved)

4. **Core Promise**: In one sentence, what transformation will readers experience?

5. **Why Now**: Why is this book needed in the market right now?

Please share your thoughts on these questions.
```

### Step 2: Deep Audience Analysis
**Elicit from user:**

```
Now let's deeply understand your target reader.

**Target Audience Questions:**

1. **Who specifically** is this book for? (Be as specific as possible - demographics, profession, life stage)

2. **Current Struggle**: What specific problem or challenge are they facing that your book solves?

3. **What They've Tried**: What have they already attempted to solve this problem? Why didn't it work?

4. **Their Goal**: What do they want to achieve? What does success look like to them?

5. **Emotional State**: How do they FEEL about their current situation? (Frustrated? Hopeless? Determined?)

6. **Prerequisites**: What knowledge or experience should readers have before starting your book?

7. **Time/Resources**: How much time can they realistically dedicate? What resources do they have access to?

The more specific you can be, the better we can tailor the book to their needs.
```

### Step 3: Transformation Definition
**Elicit from user:**

```
Let's map out the transformation journey.

**Before & After:**

1. **Before State**: Describe your reader BEFORE reading your book:
   - What can't they do?
   - What limitations do they face?
   - What's their daily reality?

2. **After State**: Describe your reader AFTER successfully applying your book:
   - What new capabilities do they have?
   - How has their situation changed?
   - What's now possible for them?

3. **Specific Outcomes**: List 3-5 concrete, measurable skills or results readers will gain.

4. **Timeline**: Realistically, how long will this transformation take if they follow your book?

Be specific and realistic - overpromising undermines credibility.
```

### Step 4: Market Positioning
**Elicit from user:**

```
Now let's position your book in the market.

**Competitive Landscape:**

1. **Competing Books**: Name 2-3 books that compete with yours or that your readers might also read.

For each, briefly note:
   - What do they do well?
   - What do they miss or do poorly?
   - How will your book be different/better?

2. **Market Gap**: What specific need exists in the market that current books don't address?

3. **Unique Approach**: What's unique about YOUR way of teaching this skill? (Your framework, methodology, perspective, or approach)

4. **Positioning Statement**: Complete this: "This is the only book that [unique value proposition]."

5. **Comparable Titles**: What successful books would you compare yours to? (Not competitors, but books with similar market appeal)
```

### Step 5: Content Strategy
**Elicit from user:**

```
Let's define your content approach.

**Content Decisions:**

1. **Scope**: What topics/skills WILL you cover?

2. **Out of Scope**: What will you deliberately NOT cover? (Important to define boundaries)

3. **Depth vs. Breadth**: Will you go deep on fewer topics or provide broader coverage?

4. **Teaching Approach**: How will you teach this? (Step-by-step? Case-study based? Framework-driven? Story-based?)

5. **Learning Supports**: What will you include?
   - Exercises?
   - Worksheets/templates?
   - Case studies/examples?
   - Assessments?

6. **Voice & Tone**: How would you describe your writing style? (Formal? Conversational? Authoritative? Friendly? Inspirational?)

7. **Length**: How long do you envision the book being? (Rough word count or number of chapters)
```

### Step 6: Publishing & Success Strategy
**Elicit from user:**

```
Finally, let's address publishing and success metrics.

**Publishing Strategy:**

1. **Publishing Route**: Are you planning to self-publish or pursue traditional publishing? Why?

2. **Format**: Primary format? (Print, ebook, audio, or multi-format?)

3. **Pricing**: What price range feels appropriate? Why will readers see it as worth that price?

4. **Companion Products**: Are you considering any companion products? (Workbook, course, templates, etc.)

**Success Definition:**

1. **Reader Impact**: How will you measure whether readers are truly transformed?

2. **Sales Goals**: What would success look like commercially? (Copies sold, revenue, bestseller status?)

3. **Platform Goals**: How does this book fit into your broader author platform or business?

4. **Timeline**: When ideally would you like to publish this book?
```

### Step 6.5: Existing Knowledge & Source Materials
**Elicit from user:**

```
Let's gather any existing materials or knowledge sources you have.

**Existing Materials:**

1. **Do you have existing documents** about this topic?
   - Research papers, articles you've written
   - Presentations, slides, training materials
   - Notes, outlines, drafts
   - Acceptable formats: Word (.docx), PDF, Google Docs, Markdown, Plain Text

2. **External Resources**: Are there online resources I should reference?
   - Blog posts, articles (provide URLs)
   - Videos, podcasts (provide URLs with timestamps if specific sections)
   - Research studies, white papers (provide URLs or DOIs)
   - Books or chapters (provide titles and relevant page ranges)

3. **How to provide your materials**:
   - **Files**: Place them in a `source-materials/` folder in your project
   - **Links**: Provide URLs directly here
   - **Text**: Paste directly if short (< 500 words)
   - Type "none" or "skip" if starting completely from scratch

4. **Document Processing**: I can automatically convert:
   - Word/DOCX files → Markdown
   - PDF files → Extracted text
   - HTML pages → Markdown
   - This makes your existing knowledge immediately usable for book development

**Please share:**
- Paths to any files in `source-materials/` folder (e.g., `source-materials/my-research.docx`)
- URLs to online resources
- Or type "skip" if starting from scratch

*Note: If you provide files, I'll automatically convert them before we proceed.*
```

**After receiving materials:**

If user provides files in `source-materials/`:

1. **Automatically check for files**:
   ```bash
   ls -la source-materials/ 2>/dev/null
   ```

2. **If files exist, process them automatically**:
   - Inform user: "I found {count} files in source-materials/. Converting them now..."
   - Run conversion utility directly:
   ```bash
   node .bmad-expert-author/utils/document-converter.js batch source-materials/
   ```
   - Display conversion results to user
   - Confirm: "✅ Converted {success} files. Results in processed-materials/"

3. **Read converted materials**:
   - Read files from `processed-materials/` directory
   - Scan content for key insights
   - Note relevant information for BBD

4. **Reference processed materials**: Incorporate insights from processed materials into BBD

If user provides URLs:
- Note URLs in BBD for later reference
- Optionally use WebFetch to retrieve content if needed

If user skips or no files found:
- Continue directly to Step 7

### Step 7: Synthesis & Document Creation

Using all gathered information:

1. **Populate Template**: Fill out the book-blueprint-tmpl.md with all details from elicitation

2. **Synthesize Insights**: Analyze responses to identify:
   - Core strategic positioning
   - Key differentiators
   - Potential challenges
   - Strategic opportunities

3. **Add Professional Analysis**: Include market analysis, competitive positioning insights, and strategic recommendations

4. **Identify Gaps**: Note any open questions or areas needing further research

5. **Create Decision Log**: Document key strategic decisions made and rationale

### Step 8: Present Blueprint

Present the completed Book Blueprint Document to the user with:

1. **Executive Summary**: High-level overview of the book strategy

2. **Key Insights**: Strategic insights from the analysis

3. **Recommendations**: Professional recommendations for approach

4. **Open Questions**: Any areas requiring further clarification or decision

5. **Next Steps**: Clear path forward to next phase (Learning Framework design)

### Step 9: Automatically Commit Blueprint

**CRITICAL:** Automatically commit the Book Blueprint to Git:

```bash
git add docs/book-blueprint.md
git commit -m "Create Book Blueprint Document

📊 Strategic foundation with target audience, transformation journey, and market positioning
✨ Ready for Learning Framework design phase

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"
```

**IMPORTANT:**
- DO commit automatically after creating the blueprint
- DO NOT push automatically (user decides when to push)
- Inform user: "✅ Book Blueprint committed to Git (not pushed - you control when to push)"

## Output Deliverable

A comprehensive Book Blueprint Document (BBD) saved as `docs/book-blueprint.md` containing:

- Complete target audience analysis
- Detailed transformation journey
- Clear value proposition and differentiation
- Market positioning strategy
- Content approach and scope
- Learning objectives
- Publishing strategy
- Success metrics
- Project parameters

## Success Criteria

- [ ] All sections of BBD template completed with specific, detailed information
- [ ] Target audience described with sufficient specificity to guide all decisions
- [ ] Transformation promise is clear, concrete, and realistic
- [ ] Unique value proposition is compelling and defensible
- [ ] Market positioning differentiates from competitors
- [ ] Content scope is well-defined with clear boundaries
- [ ] Success metrics are measurable
- [ ] Document provides clear foundation for Learning Architect to design instructional framework
- [ ] Blueprint automatically committed to Git (not pushed)

## Handoff

Once BBD is approved:
- Pass to Learning Architect for instructional design
- BBD becomes primary reference document for all agents
- All subsequent work aligns with BBD specifications

## Notes for Book Strategist

- **Be thorough**: The quality of the BBD determines quality of entire project
- **Ask clarifying questions**: Don't accept vague answers; push for specificity
- **Think strategically**: Provide professional analysis, not just transcription
- **Be realistic**: Help author set achievable goals and realistic scope
- **Document decisions**: Capture WHY decisions were made for future reference
- **Identify risks**: Surface potential challenges early
- **Validate market fit**: Ensure there's genuine market need for this book
