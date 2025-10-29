# Task: Review Chapter Content

**Agent**: Lector
**Input**: Completed chapter draft from Book Author
**Output**: Review Report with detailed feedback
**Template**: review-report-tmpl.md
**Output Path**: `reviews/chapter-{NN}-review.md`
**Elicit**: false (systematic review process)

## Purpose
Conduct comprehensive quality assurance review of chapter content against Book Blueprint specifications, Learning Framework outcomes, and quality standards.

## Prerequisites
- Completed chapter draft
- Chapter outline/specifications
- Book Blueprint Document (BBD)
- Learning Framework Document
- Quality checklists

## Review Process

### Phase 1: Initial Read
**Objective**: Get overall impression before detailed analysis

1. **Read Through Completely**: Read the entire chapter from reader's perspective without stopping to critique

2. **First Impressions**: Note immediate reactions:
   - Overall clarity
   - Engagement level
   - Flow and pacing
   - Voice and tone

3. **Gut Check**: Does this chapter deliver on its promise?

### Phase 2: Alignment Review
**Objective**: Verify alignment with strategic documents

#### 2A: BBD Alignment Check
Compare chapter against Book Blueprint Document:

- [ ] **Target Audience**: Written at appropriate level for defined audience?
- [ ] **Voice & Tone**: Matches specified voice and tone?
- [ ] **Content Scope**: Stays within defined scope boundaries?
- [ ] **Value Proposition**: Delivers on book's unique promise?
- [ ] **Reading Level**: Appropriate for target audience?

**Document**: Any misalignments with specific examples

#### 2B: Learning Outcomes Verification
Compare against chapter's specified learning outcomes:

For each learning outcome:
- [ ] **Addressed**: Is this outcome clearly taught?
- [ ] **Clarity**: Will readers understand this concept?
- [ ] **Practice**: Is there adequate practice/application?
- [ ] **Assessment**: Can readers verify they've achieved this outcome?

**Document**: Which outcomes are well-addressed vs. which need strengthening

#### 2C: Chapter Specification Adherence
Compare against chapter outline:

- [ ] **Structure**: Follows specified structure?
- [ ] **Required Elements**: All specified elements included?
- [ ] **Exercises**: All planned exercises present and complete?
- [ ] **Examples**: Required examples/case studies integrated?
- [ ] **Word Count**: Within target range (±10%)?

**Document**: Missing or incomplete elements

### Phase 3: Learning Effectiveness Review
**Objective**: Evaluate instructional quality

#### 3A: Clarity Assessment
- [ ] **Concepts Explained**: Are complex ideas broken down clearly?
- [ ] **Jargon**: Technical terms either avoided or clearly defined?
- [ ] **Examples**: Abstract concepts illustrated with concrete examples?
- [ ] **Sentence Structure**: Sentences clear and not overly complex?
- [ ] **Logical Flow**: Ideas progress logically from one to the next?

**Rate**: Clarity on scale of 1-5 with specific examples of unclear passages

#### 3B: Exercise Quality
For each exercise:
- [ ] **Instructions Clear**: Can readers complete without confusion?
- [ ] **Learning Purpose**: Clear connection to learning outcome?
- [ ] **Difficulty Appropriate**: Matches reader's skill level at this point?
- [ ] **Time Realistic**: Estimated time reasonable?
- [ ] **Feedback Provided**: Do readers know if they did it correctly?

**Document**: Exercise-specific feedback

#### 3C: Example Effectiveness
For each example/case study:
- [ ] **Relevant**: Connects to reader's context and goals?
- [ ] **Authentic**: Feels real and credible?
- [ ] **Instructive**: Clearly illustrates the concept?
- [ ] **Diverse**: Examples span different contexts/demographics?
- [ ] **Specific**: Includes concrete details, not generic?

**Document**: Example-specific feedback

### Phase 4: Engagement & Readability
**Objective**: Ensure content maintains reader interest

- [ ] **Opening Hook**: First paragraph captures attention?
- [ ] **Pacing**: Appropriate balance of explanation, example, and practice?
- [ ] **Transitions**: Smooth connections between sections?
- [ ] **Active Voice**: Predominantly uses active voice?
- [ ] **Concrete Language**: Specific and vivid rather than abstract?
- [ ] **Reader Address**: Speaks directly to reader appropriately?
- [ ] **Chapter Summary**: Effectively reinforces key takeaways?

**Document**: Specific areas where engagement lags

### Phase 5: Completeness Check
**Objective**: Ensure nothing is missing

- [ ] **Introduction**: Sets up chapter effectively?
- [ ] **Main Content**: All specified sections present and complete?
- [ ] **Exercises**: All exercises included with full instructions?
- [ ] **Examples**: Required examples fully developed?
- [ ] **Visuals**: Specified diagrams/tables included or described?
- [ ] **Summary**: Key points recapped?
- [ ] **Transition**: Bridge to next chapter provided?

**Document**: Any missing elements

### Phase 6: Technical Quality
**Objective**: Check mechanics and consistency

- [ ] **Grammar**: Free of grammatical errors?
- [ ] **Spelling**: No spelling mistakes?
- [ ] **Punctuation**: Proper punctuation throughout?
- [ ] **Formatting**: Consistent heading levels, lists, etc.?
- [ ] **Citations**: Sources cited where appropriate?
- [ ] **Terminology**: Consistent use of terms throughout?

**Document**: Technical issues found

### Phase 7: Strategic Issues
**Objective**: Identify bigger-picture concerns

- [ ] **Chapter Purpose**: Achieves stated purpose in learning journey?
- [ ] **Prerequisites**: Assumes appropriate prior knowledge?
- [ ] **Future Setup**: Adequately prepares for future chapters?
- [ ] **Scope Creep**: Stays focused without tangents?
- [ ] **Redundancy**: Avoids unnecessary repetition?
- [ ] **Balance**: Appropriate depth without overwhelming?

**Document**: Strategic concerns

## Creating the Review Report

### Feedback Structure

Organize feedback into categories:

#### 1. Overall Assessment
- Summary rating: Excellent | Good | Needs Revision | Significant Issues
- Overall strengths
- Overall areas for improvement
- Big-picture observations

#### 2. Critical Issues (Must Fix)
Issues that prevent approval:
- Missing learning outcomes
- Unclear core concepts
- Broken exercises
- Misalignment with BBD
- Major clarity problems

For each issue:
- **Location**: Specific page/section/paragraph
- **Issue**: What's wrong
- **Impact**: Why this matters
- **Fix**: Specific recommendation

#### 3. Important Issues (Should Fix)
Issues that significantly impact quality:
- Weak examples
- Pacing problems
- Engagement issues
- Minor misalignments

#### 4. Suggested Improvements (Nice to Have)
Enhancements that would strengthen content:
- Additional examples
- Refined explanations
- Better transitions
- Enhanced exercises

#### 5. Strengths
What's working well:
- Particularly clear explanations
- Excellent examples
- Effective exercises
- Strong opening/closing

### Feedback Best Practices

**Be Specific**:
- ❌ "This section is confusing"
- ✅ "Paragraph 3 uses jargon ('cognitive load') without definition, likely confusing for beginners"

**Be Actionable**:
- ❌ "The example doesn't work"
- ✅ "The example assumes readers have financial software, but BBD shows many readers are low-income. Suggest using a pen-and-paper budgeting example instead."

**Be Balanced**:
- Note both strengths and areas for improvement
- Recognize what's working well
- Frame critique constructively

**Prioritize**:
- Clearly separate must-fix from nice-to-have
- Focus on issues that impact learning effectiveness most
- Don't overwhelm with minor issues if major issues exist

## Approval Decision

Based on review, determine:

### ✅ APPROVED
- All critical issues resolved
- Learning outcomes achieved
- Quality standards met
- Ready for next phase

### 🔄 APPROVED WITH MINOR REVISIONS
- No critical issues
- Few important issues that are quick fixes
- Author can address and resubmit specific sections

### ❌ NEEDS REVISION
- Critical issues present
- Significant rework required
- Author should address feedback and resubmit complete chapter

### ⛔ MAJOR ISSUES
- Fundamental problems (misaligned with BBD, missing learning outcomes)
- Requires rethinking approach
- May need consultation with Learning Architect

## Output Deliverable

**Review Report** containing:
1. Overall assessment and rating
2. Categorized feedback (Critical | Important | Suggested)
3. Specific, actionable recommendations
4. Strengths and positive observations
5. Approval decision
6. Next steps

Save as: `reviews/chapter-{NN}-review.md` (where NN is the zero-padded chapter number)

## Success Criteria for Review

- [ ] All review phases completed systematically
- [ ] Feedback is specific with locations cited
- [ ] Recommendations are actionable
- [ ] Critical issues clearly identified
- [ ] Both strengths and weaknesses noted
- [ ] Approval decision justified
- [ ] Report enables author to improve effectively

## Follow-up

After author revises:
1. **Verify Revisions**: Check that feedback was addressed
2. **Re-review Changed Sections**: Ensure fixes are effective
3. **Check for New Issues**: Revisions didn't introduce problems
4. **Final Approval**: Give go-ahead or request additional iteration

## Notes for Lector

- **Reader Perspective**: Always evaluate from target reader's viewpoint
- **Learning First**: Prioritize learning effectiveness over stylistic preferences
- **Be Constructive**: Critique should empower improvement, not discourage
- **Standards-Based**: Ground feedback in BBD, Learning Framework, and quality standards
- **Consistent**: Apply same standards across all chapters
- **Thorough**: Don't rush - quality review prevents major rework later
- **Document Everything**: Track patterns across chapters to improve process
