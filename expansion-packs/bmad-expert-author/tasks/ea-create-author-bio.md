# Task: Create Author Biographical Content

**Agent**: Researcher (Regina)
**Output**: Complete author biographical materials in `source-materials/author-content/author-bio/`
**Elicit**: true
**Duration**: 30-60 minutes

---

## Purpose

Guide author through creating comprehensive biographical content for use throughout book development. This includes bio materials, transformation story, credentials, motivation, and client success stories.

This content will be used by:
- **Reader Motivation Agent** (for Crisis Arc narrative technique)
- **Book Author Agent** (for "About the Author" section)
- **Marketing materials** (back cover, Amazon, media kit)

---

## Prerequisites

- [ ] Book Blueprint Document (BBD) exists (shows target audience and book topic)
- [ ] Author is ready to spend 30-60 minutes on guided process
- [ ] Author understands this content will be used throughout book and marketing

---

## Process

### Step 1: Introduction & Context

**Present to user:**

```
Hi! I'm Regina, your Knowledge Curator.

Before we dive into collecting all your articles, presentations, and materials,
let's capture something even more fundamental: YOUR story.

Your personal biographical content serves multiple purposes:

1. **Crisis Arc**: Your transformation story will be woven throughout your book
   to create emotional connection with readers (Dave Asprey technique)

2. **Credibility**: Your professional background establishes why readers should
   trust you

3. **Connection**: Your motivation and mission help readers understand your "why"
   and feel aligned with your purpose

4. **Marketing**: Short and extended bios are used on book covers, Amazon,
   speaking engagements, and media appearances

5. **Proof**: Client success stories demonstrate your approach works

This process takes about 30-60 minutes. I'll guide you step-by-step, and you
can always come back to refine your answers later.

Ready to start documenting your story?
```

**Elicit response:**
- Wait for user confirmation to proceed

**If yes → Continue to Step 2**
**If no/not ready → Schedule for later**

---

### Step 2: Create Directory Structure

**Action:**
Create the directory structure for author biographical content.

**Execute:**

```bash
# Create author-bio directory and subdirectories
mkdir -p source-materials/author-content/author-bio/media-assets

# Create template-based files (will be filled in during elicitation)
touch source-materials/author-content/author-bio/about-author.md
touch source-materials/author-content/author-bio/extended-bio.md
touch source-materials/author-content/author-bio/transformation-story.md
touch source-materials/author-content/author-bio/professional-background.md
touch source-materials/author-content/author-bio/why-i-wrote-this.md
```

**Confirm to user:**
```
✓ Created directory: source-materials/author-content/author-bio/

I've set up your biographical content folder with templates for:
- about-author.md (short bio for book cover/Amazon)
- extended-bio.md (detailed bio for "About the Author" section)
- transformation-story.md (your personal journey for Crisis Arc)
- professional-background.md (credentials and expertise)
- why-i-wrote-this.md (your mission and motivation)

Let's fill these in together. We'll start with the easiest: your short bio.
```

---

### Step 3: Short Bio (About the Author)

**Present to user:**

```
STEP 1 OF 5: SHORT BIO (10-15 minutes)

This is your 50-150 word biography for your book's back cover and Amazon author page.

Let's build this together. I'll ask questions, you answer, and I'll help you craft
it into third-person prose.

---

**QUESTION 1: Basic Information**

- What is your full name as you want it on the book?
- What is your professional title? (e.g., "Financial Coach", "Health Expert", "Communication Specialist")
- What pronouns should I use in third person? (he/him, she/her, they/them)

**QUESTION 2: Core Expertise**

- How many years of experience do you have in [book topic field]?
- What is your primary area of expertise?
- What specific results have you helped clients/students achieve?
  (Try to quantify: "helped 500+ clients", "generated $10M in results", etc.)

**QUESTION 3: Credentials (Top 1-2)**

What are your most impressive or relevant credentials?
- Degrees (which institutions?)
- Certifications (which ones?)
- Awards or recognition
- Media features
- Notable achievements

**QUESTION 4: Personal Touch (Optional)**

- Where do you live? (City/region)
- Any personal detail you want to include? (family, hobby, passion)

**QUESTION 5: Mission Statement**

Complete this sentence: "I am passionate about helping people..."

---

Please provide your answers to these 5 questions, and I'll draft your short bio.
```

**Elicit responses:**
- Wait for user to provide answers to all 5 questions

**Assistant Action:**
Based on responses, draft a 50-150 word third-person bio following this structure:

```
[Name] is a [title] with [X years] experience in [field]. [He/She/They] has
helped [quantified impact] through [approach/method]. [Name] holds [key credential]
from [institution] and [additional credential/recognition]. [Personal touch if
provided]. [Name] is passionate about [mission].
```

**Present draft to user:**

```
Here's your short bio draft:

---
[DRAFTED BIO TEXT]
---

Does this feel right? Would you like me to:
- Adjust the tone (more formal/casual)?
- Emphasize different credentials?
- Add or remove personal details?
- Shorten or lengthen any part?

Once you're happy with this, I'll save it and we'll move to your extended bio.
```

**Elicit feedback:**
- Wait for user approval or revision requests
- Iterate until user is satisfied

**Save to file:**
Use the Edit tool (or Write if file is empty) to save the final bio to `source-materials/author-content/author-bio/about-author.md` using the `author-bio-short-tmpl.md` structure.

---

### Step 4: Extended Bio (About the Author Section)

**Present to user:**

```
STEP 2 OF 5: EXTENDED BIO (10-15 minutes)

Now let's create your 300-500 word extended biography for the "About the Author"
section in your book and for detailed professional profiles.

This will tell your professional story in more depth. I'll walk you through it
paragraph by paragraph.

---

**PARAGRAPH 1: Current Identity (3-4 sentences)**

- Who are you today professionally?
- What is your current role/business?
- What is your core expertise or approach?
- What makes your work unique?

**PARAGRAPH 2: Your Journey (4-5 sentences)**

- How did you get into this field?
- What was your background before this work?
- What key transitions or experiences shaped your path?
- What led you to develop your current approach?

**PARAGRAPH 3: Credentials & Achievements (4-5 sentences)**

- What formal education do you have?
- What certifications or licenses do you hold?
- What notable achievements, awards, or recognition have you received?
- What have you published or where have you spoken?
- What measurable results have you achieved for clients?

**PARAGRAPH 4: Personal & Vision (3-4 sentences)**

- Where do you live? Any personal details you want to share?
- What drives your work (values, mission)?
- What are you working toward (vision for your field or your readers)?

---

Please provide information for each paragraph, and I'll help you craft this into
flowing third-person prose.
```

**Elicit responses:**
- Wait for user to provide content for all 4 paragraphs

**Assistant Action:**
Based on responses, draft a 300-500 word extended bio with the four paragraphs.

**Present draft to user:**

```
Here's your extended bio draft:

---
[DRAFTED EXTENDED BIO - 4 PARAGRAPHS]
---

This will appear in your book's "About the Author" section and can be used for
media kits, speaker bios, and professional profiles.

Would you like me to:
- Adjust the length (longer/shorter)?
- Emphasize different aspects of your background?
- Change the tone?
- Add or remove details?

Let me know any changes, or say "looks good" to proceed.
```

**Elicit feedback:**
- Wait for user approval or revision requests
- Iterate until user is satisfied

**Save to file:**
Use the Edit tool to save the final extended bio to `source-materials/author-content/author-bio/extended-bio.md` using the `author-bio-extended-tmpl.md` structure.

---

### Step 5: Transformation Story (For Crisis Arc)

**Present to user:**

```
STEP 3 OF 5: YOUR TRANSFORMATION STORY (15-20 minutes)

This is the most important piece for your book's narrative. Your personal
transformation story will be woven throughout chapters using the Crisis Arc
technique (Dave Asprey's approach).

We'll use the 6-phase structure:
1. Crisis (your low point)
2. Failed Experiments (what you tried that didn't work)
3. Escalation (how things got worse)
4. Turning Point (your breakthrough)
5. Transformation (your journey to success)
6. Lessons (wisdom you gained)

This creates emotional connection because readers see you've walked the path
they're on.

Let's capture your story. Don't worry about perfect prose - just get the details
down. We can refine later.

---

**PHASE 1: YOUR LOW POINT**

Think back to when you struggled with [book topic problem]. Describe your lowest
point:

- When was this? (year or time period)
- What was happening in your life?
- What were the specific symptoms or signs of the problem?
  (Try to use numbers: debt amount, weight, hours of sleep, etc.)
- How did this affect you physically?
- How did this affect you emotionally?
- How did this impact your relationships, work, daily life?
- What was the moment you knew something HAD to change?

Please share your low point story with as much specific detail as you're
comfortable including.
```

**Elicit response:**
- Wait for user to share their crisis story

---

**Continue elicitation through all 6 phases:**

**Present to user (continuing):**

```
**PHASE 2: FAILED EXPERIMENTS**

What did you try before you found what worked?

For each failed attempt:
- What was it? (specific diet, program, strategy, etc.)
- Why did you think it would work?
- What happened?
- Why did it fail?
- How much time and money did you invest?
- How did it make you feel?

List 3-5 failed attempts. These will be used in your book to show readers what
NOT to do and validate their own frustrations.
```

**Elicit response for Phase 2**

---

```
**PHASE 3: ESCALATION**

How did things get worse even as you were trying to fix them?

- What new problems emerged?
- How did the situation deteriorate?
- What was your breaking point - the absolute worst moment?

This shows the desperation before breakthrough.
```

**Elicit response for Phase 3**

---

```
**PHASE 4: TURNING POINT**

This is the breakthrough moment - what changed everything?

- When did this happen?
- What triggered the insight? (a book, person, event, realization?)
- What did you suddenly understand that you hadn't before?
- What decision did you make?
- What was the first action you took?
- Why was this different from previous attempts?

This is a key moment in your story - what made this time different?
```

**Elicit response for Phase 4**

---

```
**PHASE 5: TRANSFORMATION**

What happened as you applied your breakthrough insight?

**Early Stage (first 1-3 months):**
- What actions did you take?
- What were your first small wins?
- What challenges did you face and overcome?

**Middle Stage (3-12 months):**
- What became your consistent practices?
- What measurable progress did you see? (use numbers)
- What unexpected benefits emerged?

**Long-Term (1+ years):**
- Where are you now vs. where you started? (before & after comparison)
- What quantifiable results can you point to?
- How has your life changed qualitatively?
- What do you still practice today?
```

**Elicit response for Phase 5**

---

```
**PHASE 6: LESSONS LEARNED**

What wisdom did you gain from this journey?

- What are the 5 most important lessons you learned?
- What counterintuitive insights did you discover?
- What do you wish you'd known sooner?
- What mistakes should others avoid?
- Why are you sharing this story in your book?
- Who do you want to help and why?
- What do you promise readers?

These lessons will become teaching points throughout your book.
```

**Elicit response for Phase 6**

---

**Assistant Action:**
Based on all responses, create a comprehensive transformation story document following the `author-transformation-story-tmpl.md` structure.

**Present to user:**

```
I've documented your transformation story across all 6 phases:

✓ Phase 1: Crisis - Your low point
✓ Phase 2: Failed Experiments - What didn't work
✓ Phase 3: Escalation - The breaking point
✓ Phase 4: Turning Point - Your breakthrough
✓ Phase 5: Transformation - Your journey to results
✓ Phase 6: Lessons - Wisdom gained

This story will be reviewed by the Reader Motivation Agent (Maya) to plan how
to weave it throughout your book chapters.

Would you like to review the full document now, or shall we continue to the
next section? You can always come back to refine this later.
```

**Elicit decision:**
- Option A: Review full transformation story now
- Option B: Continue to professional background (review later)

**Save to file:**
Save transformation story to `source-materials/author-content/author-bio/transformation-story.md`.

---

### Step 6: Professional Background (Credentials)

**Present to user:**

```
STEP 4 OF 5: PROFESSIONAL BACKGROUND (10-15 minutes)

Now let's document your credentials, expertise, and professional authority.
This establishes why readers should trust you.

We'll capture:
- Education
- Certifications & licenses
- Professional experience
- Achievements & recognition
- Expertise areas

---

**EDUCATION:**

What formal education do you have relevant to this book?
- Degrees (what, where, when)
- Certifications (which, from whom, when)
- Specialized training programs
- Continuing education

**PROFESSIONAL EXPERIENCE:**

What is your professional background?
- Current position(s) and roles
- Years in your field
- Previous significant positions
- Businesses you've built
- Career highlights

**ACHIEVEMENTS & RECOGNITION:**

What have you achieved?
- Awards or honors
- Published works (books, articles)
- Speaking engagements
- Media features
- Client results (quantified)

**EXPERTISE:**

What are you an expert in?
- Primary expertise area
- Specialized knowledge
- Unique skill combinations
- Methodologies or frameworks you've developed

---

Please provide your professional background details.
```

**Elicit response:**
- Wait for user to provide professional background information

**Assistant Action:**
Create comprehensive professional background document using `author-professional-background-tmpl.md` structure.

**Present to user:**

```
✓ Professional background documented

Your credentials file now includes:
- Education & certifications
- Professional experience timeline
- Achievements & recognition
- Areas of expertise
- Quantifiable credibility markers

This establishes your authority on [book topic] and will be referenced throughout
your book as needed.

Ready for the final section?
```

**Save to file:**
Save to `source-materials/author-content/author-bio/professional-background.md`.

---

### Step 7: Why You're Writing This Book (Motivation)

**Present to user:**

```
STEP 5 OF 5: YOUR MOTIVATION & MISSION (10-15 minutes)

Let's capture WHY you're writing this book. This will:
- Keep you motivated during the writing process
- Inform your book's introduction
- Guide your marketing messaging
- Help readers understand your mission

---

**THE PROBLEM YOU SEE:**

- What problem are you trying to solve with this book?
- Who is affected by this problem?
- How widespread is it?
- Why aren't existing solutions working?

**YOUR PERSONAL CONNECTION:**

- Why is this problem personal for you?
- What experience do you have with it?
- Why can't you stay silent about this?

**WHO YOU WANT TO HELP:**

- Who is your ideal reader?
- What are they struggling with?
- Where are they now vs. where do they want to be?
- Why do you care about helping them?

**YOUR MISSION:**

- What are you committed to achieving?
- What future are you working to create?
- How does this book advance your mission?

**WHAT YOU WANT READERS TO GAIN:**

- What transformation do you want to create for readers?
- What knowledge, skills, and results do you want to deliver?
- What do you promise?

**YOUR IMPACT GOALS:**

- What does success look like for this book?
- How many people do you want to reach?
- What change do you hope to create?
- What legacy do you want to leave?

---

Please share your motivation for writing this book.
```

**Elicit response:**
- Wait for user to share their motivation and mission

**Assistant Action:**
Create motivation document using `author-motivation-tmpl.md` structure.

**Present to user:**

```
✓ Your motivation and mission documented

I've captured:
- The problem you're solving
- Your personal connection to it
- Who you want to help and why
- Your mission and vision
- What readers will gain
- Your impact goals

When the writing gets hard (and it will), come back to this document to remember
WHY you're doing this.

This completes the core biographical content! There's one optional piece remaining...
```

**Save to file:**
Save to `source-materials/author-content/author-bio/why-i-wrote-this.md`.

---

### Step 8: Client Success Stories (Optional)

**Present to user:**

```
OPTIONAL: CLIENT SUCCESS STORIES

Client transformation stories are powerful for:
- Case studies in your book
- Proof that your approach works
- Relatable examples for readers

Would you like to document 1-3 client success stories now, or skip this for later?

If yes, I'll guide you through documenting:
- Client background (anonymized if needed)
- Their starting problem
- Your work together
- Their results (before & after)
- Their testimonial
- Key lessons the story illustrates

This takes about 15-20 minutes per story.

Would you like to add client stories now, or proceed to completion?
```

**Elicit decision:**
- **If YES → Continue to client story documentation**
- **If NO/LATER → Skip to finalization**

---

**If user chooses to document client stories:**

**For each story, present:**

```
CLIENT SUCCESS STORY [#1, #2, #3...]

**Permission:** Do you have written permission from this client to share their story? (Required)

**Client Background:**
- Demographic overview (age range, situation, occupation)
- What problem they came to you with
- How long they'd been struggling
- What they'd already tried that failed

**Your Work Together:**
- What program/service did they use?
- How long did you work together?
- What was your approach?
- What actions did they take?
- What obstacles did they overcome?

**The Results:**
- Before & after numbers (quantify the transformation)
- How long did it take?
- What changed in their life?
- Unexpected benefits?

**In Their Own Words:**
- Do you have a testimonial quote from them? (Please share)

**Key Lesson:**
- What does this story demonstrate about your approach?
- Which chapter or concept does this illustrate?

---

Please provide details for this client story (anonymized as needed).
```

**Elicit response for each story**

**Assistant Action:**
Create client success story document(s) using `client-success-story-tmpl.md` structure.

**Save to file:**
Save each story as `source-materials/author-content/author-bio/client-story-[name].md`.

---

### Step 9: Review & Completion

**Present to user:**

```
🎉 BIOGRAPHICAL CONTENT COMPLETE! 🎉

You've created comprehensive author biographical materials:

✓ about-author.md - Short bio (50-150 words) for book cover/Amazon
✓ extended-bio.md - Extended bio (300-500 words) for "About the Author" section
✓ transformation-story.md - Your 6-phase transformation for Crisis Arc narrative
✓ professional-background.md - Credentials and expertise
✓ why-i-wrote-this.md - Your motivation and mission
[✓ client-story-X.md - Client success stories (if created)]

---

**What happens next?**

1. **Reader Motivation Agent (Maya)** will use your transformation story to plan
   the Crisis Arc narrative technique - how to weave your personal journey
   throughout your book chapters.

2. **Book Author Agent (Aurora)** will use these materials when writing your
   "About the Author" section and when referencing your credentials throughout
   the book.

3. **You** can use your short bio immediately for any marketing, speaking, or
   professional profiles.

---

**Next Steps:**

Would you like me to:

A) Run a consistency check on all your biographical materials (ensures names,
   numbers, and details align across documents)

B) Proceed to gather your other source materials (articles, presentations, books,
   courses, etc.)

C) Take a break - you've done great work (30-60 minutes of focused effort!)

What would you like to do?
```

**Elicit decision:**
- **If A → Run consistency check (Step 10)**
- **If B → Transition to ea-gather-source-materials task**
- **If C → End session, user can return later**

---

### Step 10: Consistency Check (Optional)

**If user chooses consistency check:**

**Assistant Action:**
Read all created biographical files and check for:
- Name consistency (how author is referred to)
- Timeline consistency (dates/years align across documents)
- Numbers/metrics consistency (amounts, results are consistent)
- Story details consistency (facts don't contradict)

**Use checklist:**
Load and apply `checklists/author-bio-consistency.md` to verify all materials.

**Present findings:**

```
CONSISTENCY CHECK RESULTS:

✓ Name/title used consistently across all documents
✓ Timeline dates align (no contradictions)
✓ Quantified metrics match across bios and transformation story
✓ Professional credentials match across bio and background
✓ Story details are internally consistent

[OR, if issues found:]

⚠ Issues found:
- [Specific inconsistency 1]
- [Specific inconsistency 2]

Would you like me to help you resolve these inconsistencies?
```

**If issues found:**
- Elicit user input on which version is correct
- Update files to ensure consistency

---

### Step 11: Commit to Git

**Action:**
Auto-commit all biographical content to git.

**Execute:**

```bash
git add source-materials/author-content/author-bio/
git commit -m "Add author biographical content

Created comprehensive author bio package:
- Short bio (50-150 words) for book cover/Amazon
- Extended bio (300-500 words) for About the Author
- Transformation story (6-phase Crisis Arc)
- Professional background & credentials
- Author motivation & mission
- Client success stories

This content will be used by Reader Motivation Agent for Crisis Arc
narrative planning and by Book Author for About the Author section.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"
```

**Confirm to user:**

```
✓ Biographical content committed to git

Your author bio package is saved and version-controlled.

All set! Your biographical materials are ready to be used throughout book development.
```

---

### Step 12: Final Message

**Present to user:**

```
Excellent work!

You've completed the author biographical content foundation. This took focused
effort, but you now have a comprehensive bio package that will serve you throughout
book writing, publishing, and marketing.

**Files created:**
- source-materials/author-content/author-bio/about-author.md
- source-materials/author-content/author-bio/extended-bio.md
- source-materials/author-content/author-bio/transformation-story.md
- source-materials/author-content/author-bio/professional-background.md
- source-materials/author-content/author-bio/why-i-wrote-this.md
[- source-materials/author-content/author-bio/client-story-*.md]

**Ready for next steps:**

When you're ready to plan how to weave your transformation story throughout
your book, activate the Reader Motivation Agent:

/BMad:agents:reader-motivation
*review-author-bio

When you're ready to gather your other source materials (articles, courses,
presentations, etc.), continue with:

/BMad:agents:researcher
*gather-resources

Take a well-deserved break! 🌟
```

---

## Success Criteria

- [ ] All core biographical files created in `source-materials/author-content/author-bio/`
- [ ] Short bio is 50-150 words in third person
- [ ] Extended bio is 300-500 words with 4-paragraph structure
- [ ] Transformation story covers all 6 phases with specific details
- [ ] Professional background documents credentials and expertise
- [ ] Motivation articulates why, who, and impact goals
- [ ] (Optional) Client stories documented with permission
- [ ] Consistency check passed (no contradictions)
- [ ] All content committed to git
- [ ] User understands how these materials will be used

---

## Related Files

**Templates Used:**
- `templates/author-bio-short-tmpl.md`
- `templates/author-bio-extended-tmpl.md`
- `templates/author-transformation-story-tmpl.md`
- `templates/author-professional-background-tmpl.md`
- `templates/author-motivation-tmpl.md`
- `templates/client-success-story-tmpl.md`

**Checklist Used:**
- `checklists/author-bio-consistency.md`

**Related Tasks:**
- `tasks/ea-gather-source-materials.md` (next step in research process)

**Related Agents:**
- `agents/ea-researcher.md` (this agent executes this task)
- `agents/ea-reader-motivation.md` (uses transformation story for Crisis Arc planning)
- `agents/ea-book-author.md` (uses bio materials when writing)

---

## Notes for Agent

**Key Behaviors:**
- Be encouraging and patient - this is vulnerable work
- Break each section into small, manageable questions
- Draft prose for the user (don't make them write in third person)
- Iterate on drafts based on feedback
- Validate their story and experience
- Remind them this can be refined later
- Keep momentum - celebrate completion of each section

**Common Challenges:**
- **User struggles with third-person**: Offer to draft it for them
- **User feels credentials aren't enough**: Validate what they do have
- **User's transformation story lacks detail**: Ask follow-up questions to elicit specifics
- **User wants to skip transformation story**: Explain its critical importance for Crisis Arc
- **Session runs long**: Offer to break into multiple sessions

**Quality Markers:**
- Specific details (numbers, dates, names)
- Emotional honesty in transformation story
- Clear quantified results
- Consistent information across documents
- Third-person bios are polished and professional

---

## Estimated Time

**Minimum (core only):** 30 minutes
- Short bio: 10 min
- Extended bio: 10 min
- Transformation story (brief): 15 min
- Professional background (brief): 10 min
- Motivation (brief): 10 min
- Total: ~55 min

**Typical:** 45-60 minutes
- All sections with moderate detail

**Maximum (comprehensive + client stories):** 90-120 minutes
- All sections with extensive detail
- 2-3 client stories documented
- Full consistency check and refinement

---

## Version History

**Created:** 2025-10-31
**Version:** 1.0
**Author:** BMAD Expert Author Expansion Pack Development

---

**End of Task: ea-create-author-bio.md**
