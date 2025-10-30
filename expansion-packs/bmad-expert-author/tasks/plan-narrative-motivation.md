# Task: Plan Narrative Motivation

**Agent**: Reader Motivation (Maya)
**Output**: Comprehensive narrative motivation plan
**Elicit**: true

## Purpose
Create a master plan for applying narrative engagement techniques (Crisis Arc and/or Frame Story) across the entire book to boost reader motivation and emotional investment.

## Prerequisites
- Book Blueprint Document exists
- Learning Framework completed
- Chapter outlines created (book-structure.yaml or individual outlines)
- Understanding of book's transformation journey

## Process

### Step 1: Load Book Context

Read required documents:
```bash
# Book Blueprint
cat docs/book-blueprint.md

# Learning Framework
cat docs/learning-framework.md

# Book Structure
cat docs/book-structure.yaml

# Chapter Outlines
ls -la outlines/
```

Understand:
- Target audience and their pain points
- Transformation journey (before → after state)
- Key learning objectives
- Number of chapters and structure
- Author's personal connection to topic

### Step 2: Elicit User Preferences

**CRITICAL - Elicit from user:**

```
I can help enhance reader engagement through two proven narrative techniques:

📚 **TECHNIQUE A: Crisis Arc (Asprey-Style)**
Personal journey of overcoming obstacles across multiple chapters.

Best for books where:
- You have a personal transformation story related to the topic
- Readers need hope and relatability
- The topic involves overcoming challenges
- You're comfortable sharing vulnerable moments

Example: David Asprey's journey from struggling with obesity and brain fog
to discovering biohacking solutions (spans entire book).

---

📖 **TECHNIQUE B: Frame Story (Rahmengeschichte)**
Opening question/situation that's resolved at the end, with callbacks throughout.

Best for books where:
- You have a compelling client success story
- There's a central mystery or question to answer
- You want strong narrative structure
- The book builds toward a clear transformation

Example: Opening with "Can a 45-year-old mom of three achieve financial
freedom in 2 years?" and answering it at the end while teaching principles.

---

❓ **Which technique(s) would you like to use?**

1. **Technique A only** (Crisis Arc)
2. **Technique B only** (Frame Story)
3. **Both techniques** (Crisis Arc + Frame Story)
4. **Neither** (Skip narrative motivation techniques)

If you choose A or B (or both), I'll ask follow-up questions to design
the narrative arc specifically for your book.

**Your choice (1/2/3/4)?**
```

Wait for user response.

### Step 3a: If User Chooses Technique A (Crisis Arc)

**Elicit Crisis Arc Details:**

```
Great! Let's design your Crisis Arc (Asprey-Style).

This technique works best when it's YOUR authentic personal journey
related to the book's topic. It should span 5-8 chapters typically.

**Please share:**

1. **Your Personal Low Point** (Starting Crisis)
   - What was your biggest struggle with [book topic]?
   - When did you hit rock bottom?
   - What made this crisis relatable to your target readers?

   Example: "I was 40 pounds overweight, foggy-brained, and exhausted
   despite sleeping 8 hours. I'd tried every diet."

2. **Your Search & Experiments** (Failed Attempts)
   - What did you try first? (that didn't work)
   - What else did you experiment with?
   - How many major attempts/failures should we include? (3-5 recommended)

   List your failed experiments:
   - Attempt 1: [e.g., "Tried paleo diet - lost weight but brain fog remained"]
   - Attempt 2: [e.g., "Meditation - helped stress but not energy"]
   - Attempt 3: [etc.]

3. **Escalation** (How It Got Worse)
   - How did the situation deteriorate with failures?
   - What were the stakes? (health, relationships, career, etc.)

   Example: "After each failure, my confidence plummeted. My marriage
   was strained. I was missing my kids' events due to fatigue."

4. **Turning Point** (Aha Moment)
   - What finally changed? (discovery, insight, event)
   - When did this happen in your journey?
   - What made this breakthrough different?

   Example: "I discovered the connection between mitochondrial function
   and energy when I read a study on..."

5. **Transformation** (Your Success)
   - What changed after the breakthrough?
   - Concrete results? (numbers, before/after)
   - Timeline of improvement?

   Example: "Within 3 months: Lost 30 lbs, energy levels up 80%,
   brain fog gone, sleeping 6 hours and feeling better than ever."

6. **Chapter Mapping** (Where does each phase go?)
   - Which chapter introduces your crisis? (Usually Chapter 1 or 2)
   - Which chapters cover failed experiments? (Spread across middle)
   - Which chapter has the turning point?
   - Which chapter shows the transformation?

   Suggested default:
   - Ch 1-2: Personal Low Point
   - Ch 3-5: Search & Experiments (escalation)
   - Ch 6: Turning Point
   - Ch 7-8: Transformation & Learning

Please provide details for questions 1-6 above.
```

Wait for user response. Capture all details.

### Step 3b: If User Chooses Technique B (Frame Story)

**Elicit Frame Story Details:**

```
Excellent! Let's design your Frame Story (Rahmengeschichte).

A frame story opens with a compelling question or situation,
provides brief callbacks throughout, and resolves at the end.

**Please share:**

1. **Frame Story Type** - Which resonates with your book?

   a) **Personal Journey Frame**
      "How I went from [struggling] to [success]"
      Example: "How I went from $80k in debt to financially free"

   b) **Client Success Story Frame**
      "Will [Name] achieve [Goal]?"
      Example: "Can Sarah, a single mom of three, retire early?"

   c) **Mystery/Question Frame**
      "Why does [phenomenon] happen?"
      Example: "Why do 90% of diets fail, and how can you be in the 10%?"

   d) **Challenge Frame**
      "Can this [approach] actually work?"
      Example: "Can you really transform your health in just 12 weeks?"

   **Your choice (a/b/c/d)?**

2. **Opening Hook** (Prologue or Chapter 1)
   - What specific situation opens the frame?
   - What question needs answering?
   - What creates curiosity?

   Example (Client Story): "Sarah sat at her kitchen table, staring at
   $50,000 in credit card bills. Single mom of three, working two jobs,
   she felt hopeless. Could she ever achieve financial freedom?"

3. **Callback Schedule** (When to remind readers of frame)
   - How many chapters in your book? [Total: __]
   - Suggested callbacks: Every 2-3 chapters

   Default callback schedule:
   - Opening: Full frame introduction (300-500 words)
   - Chapter 3: Brief callback (50-100 words)
   - Chapter 5: Progress update (100-150 words)
   - Chapter 7: Continued progress (100-150 words)
   - Final chapter: Full resolution (300-500 words)

   Adjust this schedule? (yes/no, if yes provide your schedule)

4. **Frame Resolution** (How does it end?)
   - What's the answer to the opening question?
   - Concrete outcome/transformation?
   - Timeline of frame story? (weeks, months, years)

   Example: "Two years later, Sarah had paid off all $50k debt,
   built a 6-month emergency fund, and started investing. The same
   principles you've learned in this book transformed her life."

5. **Connection to Content** (How frame ties to teaching)
   - How does each chapter's content relate to frame story progress?
   - Does frame character use techniques taught in that chapter?

   Example: "In Chapter 3, when I teach budgeting, the callback shows
   Sarah implementing her first zero-based budget."

Please provide details for questions 1-5 above.
```

Wait for user response. Capture all details.

### Step 3c: If User Chooses Both Techniques

Elicit details for BOTH Technique A and Technique B as described in Steps 3a and 3b.

**CRITICAL**: Ensure techniques complement rather than compete:
- Crisis Arc = Author's personal journey
- Frame Story = Different story (client, case study, hypothetical)
- OR: Frame Story can BE the Crisis Arc (author's journey as frame)

Ask user:
```
You've chosen both techniques. How should they work together?

Option 1: **Separate Stories**
- Crisis Arc: Your personal journey (woven through chapters)
- Frame Story: Different story - client/case study (opens/closes book)

Option 2: **Unified Story**
- Frame Story IS your Crisis Arc (your personal journey as the frame)
- Opens with your crisis, resolves with your transformation
- Same story, different narrative structure

**Your preference (1 or 2)?**
```

### Step 4: Create Master Narrative Plan

Based on user's choices and details, create comprehensive plan.

**File**: `docs/narrative-motivation-plan.md`

```markdown
# Narrative Motivation Plan

**Date**: {YYYY-MM-DD}
**Book**: {Book Title}
**Reader Motivation Specialist**: Maya
**Techniques Applied**: {Technique A | Technique B | Both}

---

## Executive Summary

**Narrative Strategy**: {1-2 sentences describing overall approach}

**Techniques Used**:
- {✅ | ❌} Technique A: Crisis Arc (Asprey-Style)
- {✅ | ❌} Technique B: Frame Story (Rahmengeschichte)

**Span**: Chapters {N} through {M} ({total} chapters)

**Goal**: {Primary goal - e.g., "Build emotional connection through author's vulnerable journey of transformation"}

---

{If Technique A used:}
## Technique A: Crisis Arc (Asprey-Style)

### Arc Overview

**Personal Journey**: {Brief description of author's transformation}

**Chapters Involved**: {List chapter numbers and what happens in each}

**Emotional Progression**:
```
Ch {N}: Crisis/Low Point     [Emotion: Despair, Hopelessness]
   ↓
Ch {N+1}: First Attempts     [Emotion: Hope → Disappointment]
   ↓
Ch {N+2}: Escalation         [Emotion: Frustration, Fear]
   ↓
Ch {N+3}: Turning Point      [Emotion: Surprise, Relief]
   ↓
Ch {N+4}: Transformation     [Emotion: Pride, Empowerment]
   ↓
Ch {N+5}: Sharing/Lesson     [Emotion: Confidence, Generosity]
```

### Detailed Chapter Breakdown

#### Chapter {N}: Personal Low Point

**Narrative Element**: Introduction of Crisis

**Content**:
{User's personal low point story - detailed}

**Placement**: {Beginning of chapter | After introduction | Specific section}

**Length**: {300-500 words | 500-800 words | Full chapter opening}

**Key Emotional Beats**:
- Vulnerability: {Specific moment showing weakness}
- Relatability: {Why readers will connect}
- Stakes: {What's at risk if problem not solved}

**Writing Guidance for Book Author**:
- Be brutally honest about {specific struggle}
- Include specific details: {examples}
- Use vivid, emotional language
- Avoid minimizing the problem
- Show, don't just tell

**Example Opening**:
"{Draft opening paragraph based on user's story}"

---

#### Chapter {N+1}: Search & First Experiment

**Narrative Element**: Failed Attempt #1

**Content**:
{User's first failed experiment details}

**What was tried**: {Specific approach}
**Why it seemed promising**: {Initial hope}
**How it failed**: {Specific failure}
**Emotional impact**: {Disappointment details}

**Placement**: {Section in chapter where this appears}

**Length**: {150-300 words}

**Connection to Chapter Content**:
This chapter teaches {topic}. The personal story shows how author tried
{related approach} but failed because {reason that connects to chapter's teaching}.

**Writing Guidance**:
- Don't hide the failure - be specific
- Show escalating frustration
- Connect failure to misconceptions chapter will correct

---

{Repeat for each chapter with crisis arc element...}

---

### Crisis Arc Tracking Table

| Chapter | Crisis Phase | Narrative Element | Length | Emotion | Status |
|---------|--------------|-------------------|--------|---------|--------|
| {N} | Low Point | Personal crisis intro | 500w | Despair | ⏳ Pending |
| {N+1} | Attempt 1 | Failed experiment | 300w | Hope→Disappointment | ⏳ Pending |
| {N+2} | Attempt 2 | Second failure | 300w | Frustration | ⏳ Pending |
| {N+3} | Escalation | Situation worsens | 200w | Fear | ⏳ Pending |
| {N+4} | Turning Point | Breakthrough moment | 400w | Relief | ⏳ Pending |
| {N+5} | Transformation | Positive outcomes | 400w | Pride | ⏳ Pending |
| {N+6} | Lesson | What readers can learn | 300w | Empowerment | ⏳ Pending |

**Status Key**: ⏳ Pending | ✍️ Written | ✅ Complete

---

{End Technique A section}

{If Technique B used:}
## Technique B: Frame Story (Rahmengeschichte)

### Frame Overview

**Frame Type**: {Personal Journey | Client Success | Mystery/Question | Challenge}

**Opening Question**: "{The central question that opens and drives the frame}"

**Frame Character**: {Author | Client Name | Hypothetical persona}

**Timeline**: {How long does frame story span - e.g., "2 years"}

**Resolution**: {Brief description of how frame resolves}

### Frame Story Outline

#### Opening Frame (Prologue / Chapter 1)

**Location**: {Prologue | Chapter 1 opening | Chapter 1 after intro}

**Length**: 300-500 words

**Content**:
{Full frame story opening as provided by user}

**Hook Elements**:
- **Situation**: {Specific circumstance that's compelling}
- **Stakes**: {What's at risk - why readers should care}
- **Question**: {The central question that needs answering}
- **Emotion**: {Primary emotion - hope, desperation, curiosity, etc.}

**Writing Guidance**:
- Open with vivid scene, not summary
- Make character relatable to target readers
- Create genuine curiosity about outcome
- Don't give away the answer

**Example Opening**:
"{Draft opening based on user's frame story}"

---

#### Frame Callbacks Schedule

Callbacks keep frame alive without resolving it.

**Callback #1** - Chapter {N}
- **Length**: 50-100 words
- **Trigger**: {After teaching X concept}
- **Content**: "{Brief update - e.g., 'Sarah tried this budgeting approach next...'}"
- **Purpose**: Remind readers of frame, show progress
- **Placement**: {End of section | Chapter ending | Transition point}

**Callback #2** - Chapter {N+2}
- **Length**: 100-150 words
- **Trigger**: {After teaching Y concept}
- **Content**: "{Progress update - e.g., 'Three months in, Sarah had paid off $5k...'}"
- **Purpose**: Show incremental progress
- **Placement**: {Mid-chapter | Before exercise}

**Callback #3** - Chapter {N+4}
- **Length**: 100-150 words
- **Trigger**: {After teaching Z concept}
- **Content**: "{Continued progress with setback - e.g., 'Sarah faced unexpected car repair...'}"
- **Purpose**: Maintain realism, show resilience
- **Placement**: {Chapter opening | Before case study}

{Continue for all planned callbacks...}

---

#### Frame Resolution (Final Chapter / Epilogue)

**Location**: {Final chapter conclusion | Epilogue | Afterward}

**Length**: 300-500 words

**Content**:
{Full resolution as provided by user}

**Resolution Elements**:
- **Answer**: {Clear answer to opening question}
- **Transformation**: {Concrete before/after comparison}
- **Connection**: {Explicit link back to opening scene}
- **Lesson**: {What readers should take away}
- **Call-to-Action**: {Empowerment - "You can do this too"}

**Writing Guidance**:
- Echo opening scene (same setting, contrast in circumstances)
- Provide specific outcomes (numbers, facts, not vague "better")
- Acknowledge it wasn't easy (maintain credibility)
- Inspire readers with possibility

**Example Resolution**:
"{Draft resolution based on user's frame story}"

---

### Frame Story Tracking Table

| Location | Type | Content | Length | Purpose | Status |
|----------|------|---------|--------|---------|--------|
| Prologue | Opening | {Brief description} | 400w | Hook readers | ⏳ Pending |
| Ch {N} | Callback #1 | {Brief description} | 75w | Maintain connection | ⏳ Pending |
| Ch {N+2} | Callback #2 | {Brief description} | 125w | Show progress | ⏳ Pending |
| Ch {N+4} | Callback #3 | {Brief description} | 125w | Add setback/realism | ⏳ Pending |
| Ch {N+6} | Callback #4 | {Brief description} | 100w | Near-completion | ⏳ Pending |
| Epilogue | Resolution | {Brief description} | 450w | Satisfying closure | ⏳ Pending |

**Status Key**: ⏳ Pending | ✍️ Written | ✅ Complete

---

{End Technique B section}

{If BOTH techniques used:}
## Integration of Both Techniques

**How techniques work together**:
{Describe relationship - separate stories | unified story | etc.}

**Potential Conflicts**:
{Identify any potential narrative conflicts and how to avoid them}

**Synergies**:
{Describe how techniques reinforce each other}

**Reader Experience**:
{Describe overall emotional journey readers will have}

---

{For ALL plans:}
## Implementation Checklist

### Pre-Writing (Before Book Author writes chapters)
- [ ] Share narrative plan with author
- [ ] Author approves crisis arc details (if using Technique A)
- [ ] Author approves frame story (if using Technique B)
- [ ] Create detailed guidance for each chapter
- [ ] Add narrative elements to chapter outlines

### During Writing (As chapters are written)
- [ ] Chapter {N}: Verify narrative element included
- [ ] Chapter {N+1}: Verify narrative element included
- [ ] Chapter {N+2}: Verify narrative element included
{Continue for all chapters...}

### Post-Writing (After chapters complete)
- [ ] Run `*verify-continuity` to check narrative consistency
- [ ] Verify emotional arc flows smoothly
- [ ] Check all callbacks connect properly (if Frame Story)
- [ ] Ensure crisis arc escalates realistically (if Crisis Arc)
- [ ] Confirm resolution is satisfying
- [ ] Get author feedback on narrative effectiveness

---

## Quality Standards

**Authenticity**:
- [ ] Personal stories feel genuine, not manufactured
- [ ] Vulnerability is real and relatable
- [ ] Transformation is credible (not overnight miracle)

**Balance**:
- [ ] Narrative enhances, doesn't overshadow educational content
- [ ] Story serves learning objectives
- [ ] Emotional engagement proportional to content type

**Continuity**:
- [ ] All narrative touchpoints tracked
- [ ] Timeline is consistent
- [ ] Character details consistent (if frame story with character)
- [ ] Emotional progression logical

**Inclusivity**:
- [ ] Language is culturally sensitive
- [ ] Story relatable to diverse readers
- [ ] Avoids stereotypes or assumptions

---

## Next Steps

1. **Author Review**: Author reviews and approves this narrative plan
2. **Chapter Outline Integration**: Add narrative guidance to chapter outlines
3. **Tracking Setup**: Create detailed tracking documents
4. **Writing Guidance**: Provide chapter-specific writing guidance to book-author
5. **Continuity Monitoring**: Regular checks as chapters are written

---

## Notes for Book Author

{Personalized notes based on user's responses}

**Remember**:
- These narrative techniques boost engagement, but educational content is primary
- Write honestly - readers connect with vulnerability
- Follow the plan but allow flexibility if better ideas emerge
- Check in with reader-motivation agent if unsure about narrative elements

---

**Narrative Motivation Specialist**: Maya
**Plan Created**: {YYYY-MM-DD HH:MM}
```

### Step 5: Create Detailed Tracking Documents

Based on which technique(s) chosen:

**If Technique A (Crisis Arc):**
Create: `docs/crisis-arc-tracker.md`
- Detailed chapter-by-chapter tracking
- Emotional progression chart
- Verification checklist for each narrative element

**If Technique B (Frame Story):**
Create: `docs/frame-story-outline.md`
- Full frame story script (opening + callbacks + resolution)
- Callback timing and triggers
- Connection points to educational content

### Step 6: Automatically Commit Narrative Plan

**CRITICAL:** Automatically commit the narrative plan to Git:

```bash
mkdir -p docs
git add docs/narrative-motivation-plan.md
{if crisis arc:} git add docs/crisis-arc-tracker.md
{if frame story:} git add docs/frame-story-outline.md
git commit -m "Add narrative motivation plan

🔥 Reader engagement techniques: {Technique A | Technique B | Both}
📖 {Brief description of narrative approach}
✅ Spans chapters {N}-{M} with {count} narrative touchpoints

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"
```

**IMPORTANT:**
- DO commit automatically after creating plan
- DO NOT push automatically (user decides when to push)

### Step 7: Present Plan to User

Inform user:

```
✅ Narrative Motivation Plan created!

📋 Master Plan: docs/narrative-motivation-plan.md
{if crisis arc:} 📈 Crisis Arc Tracker: docs/crisis-arc-tracker.md
{if frame story:} 📖 Frame Story Outline: docs/frame-story-outline.md

📊 Summary:
- Technique(s): {List}
- Chapters involved: {Chapter range}
- Narrative touchpoints: {Count}
- Emotional arc: {Brief description}

📝 Next steps:
1. Review the narrative plan
2. Approve or request adjustments
3. I'll integrate narrative guidance into chapter outlines
4. book-author will weave narrative elements while writing
5. Run *verify-continuity after chapters are written to check consistency

✅ Committed to Git (not pushed - you control when to push)

Would you like me to:
a) Integrate this narrative plan into your existing chapter outlines now?
b) Wait until you've reviewed and approved the plan?
c) Make adjustments to the plan first?
```

## Success Criteria

- [ ] User preferences elicited (which technique(s), details gathered)
- [ ] Comprehensive narrative plan created
- [ ] Chapter-by-chapter breakdown provided
- [ ] Emotional arc designed and documented
- [ ] Tracking system established
- [ ] All narrative touchpoints mapped
- [ ] Writing guidance provided for book-author
- [ ] Quality standards defined
- [ ] Implementation checklist created
- [ ] Plan automatically committed to Git (not pushed)
- [ ] User informed of next steps

## Notes

- **Be patient with elicitation**: Users may need time to think about personal stories
- **Encourage authenticity**: Best narratives come from real experiences
- **Respect boundaries**: If user uncomfortable sharing certain details, adjust
- **Balance is key**: Narrative should enhance, not dominate, educational content
- **Continuity is critical**: These techniques span multiple chapters - tracking is essential
- **Flexibility**: Plan is a guide, not a straitjacket - allow adjustments during writing
