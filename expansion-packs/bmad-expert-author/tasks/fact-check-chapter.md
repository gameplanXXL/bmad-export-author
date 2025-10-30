# Task: Fact-Check Chapter

**Agent**: Fact Checker (Viktor)
**Output**: Fact-check report with verified sources
**Elicit**: false

## Purpose
Comprehensively verify all factual claims in a chapter, find authoritative primary sources, and create a documented fact-check report.

## Prerequisites
- Chapter draft exists in `chapters/chapter-{NN}.md`
- Book Blueprint Document available
- Internet access for source research

## Process

### Step 1: Read Chapter Content

Load the chapter file:
```bash
# Read chapter
cat chapters/chapter-{NN}.md
```

Scan entire chapter for content overview.

### Step 2: Identify Factual Claims

Systematically search for claims requiring verification:

**Numerical Claims:**
- Percentages: "X% of...", "X percent..."
- Statistics: "X out of Y...", "X in Y..."
- Specific numbers: "X million people...", "costs $X..."
- Ranges: "between X and Y...", "X-Y%..."

**Research Claims:**
- "Studies show...", "Research indicates..."
- "According to researchers...", "Scientists found..."
- "Data reveals...", "Evidence suggests..."

**Expert/Authority Claims:**
- "According to [Name/Organization]..."
- "[Expert] says...", "[Organization] reports..."
- "As [Source] explains..."

**Historical/Date Claims:**
- "In [year]...", "Since [year]..."
- "During [period]...", "By [date]..."

**Comparative Claims:**
- "X is more/less than Y..."
- "X increased/decreased by Y%..."
- "Compared to...", "In contrast to..."

**Create Initial Claims List:**
```markdown
## Claims Found in Chapter {N}

1. **Claim**: "50% der Bevölkerung leidet unter Stress"
   - Location: Paragraph 3, Section "Was ist Stress?"
   - Type: Percentage/Statistical claim
   - Status: Needs verification

2. **Claim**: "Studien zeigen, dass Meditation Blutdruck senkt"
   - Location: Paragraph 7, Section "Meditation als Lösung"
   - Type: Research claim
   - Status: Needs verification

[Continue for all claims...]
```

### Step 3: Research Primary Sources

For each claim, find authoritative sources:

**Search Strategy:**

1. **Search Local Source Materials First**:
   ```bash
   # Check if author has existing sources in source-materials/
   find source-materials/ -type f -name "*.md" -o -name "*.pdf" -o -name "*.txt" | xargs grep -il "[claim topic]"

   # Or use Grep tool
   Grep pattern="[claim topic]" path="source-materials/" -i=true output_mode="files_with_matches"
   ```

   **Check these directories:**
   - `source-materials/references/studies/` - Research papers
   - `source-materials/references/books/` - Books & publications
   - `source-materials/references/articles/` - Articles & expert content
   - `source-materials/author-content/` - Author's existing materials with sources

2. **Use WebSearch** for recent studies (if not found locally):
   ```
   WebSearch: "[claim topic] peer reviewed study 2023 2024"
   WebSearch: "[claim] original research pubmed"
   WebSearch: "[statistic] official statistics government"
   ```

3. **Prioritize Source Types** (in order):
   - Peer-reviewed journal articles (PubMed, Google Scholar)
   - Government/official statistics (census, health departments)
   - Reports from authoritative organizations (WHO, World Bank, UN)
   - Books by recognized experts in field
   - Reputable news sources (citing original research)

3. **Verify Source Quality:**
   - Check publication date (recent preferred, <5 years for current topics)
   - Verify author credentials/affiliations
   - Check if peer-reviewed
   - Cross-reference with other sources
   - Avoid: Wikipedia, blogs, opinion pieces, marketing content

4. **Document Each Source:**
   ```markdown
   **Source for Claim 1:**
   - Title: "Stress Prevalence in European Populations: A Meta-Analysis"
   - Authors: Schmidt, M., et al.
   - Publication: Journal of Mental Health Research, 2023
   - DOI: 10.1234/jmhr.2023.12345
   - URL: https://journal-example.com/article/12345
   - Relevant finding: "49.7% of adults report chronic stress (n=50,000)"
   - Assessment: ✅ Verified - claim is accurate
   ```

### Step 4: Verify Claim Accuracy

Compare each claim against found sources:

**Verification Status:**
- ✅ **Verified**: Claim matches source accurately
- ⚠️ **Needs Adjustment**: Claim slightly inaccurate, needs rewording
- ❌ **Unverified**: No reliable source found
- 🔄 **Outdated**: Source too old, needs recent data

**For Each Claim:**
```markdown
### Claim 1 Verification

**Original Claim**: "50% der Bevölkerung leidet unter Stress"

**Source Found**: Schmidt et al., 2023 - European stress meta-analysis

**Accuracy Assessment**: ⚠️ Needs slight adjustment
- Source says: 49.7% (rounded to 50% is acceptable)
- Source scope: European adults, not global population
- Sample size: 50,000 participants across 15 countries

**Recommended Revision**:
"Fast die Hälfte der europäischen Erwachsenen (50%) leidet unter chronischem Stress[^1]"

**Citation**:
[^1]: Schmidt, M., et al. (2023). "Stress Prevalence in European Populations: A Meta-Analysis." *Journal of Mental Health Research*, 45(3), 234-256. DOI: 10.1234/jmhr.2023.12345
```

### Step 5: Create Fact-Check Report

Generate comprehensive report:

**File**: `resources/fact-checks/chapter-{NN}-facts.md`

**Structure**:
```markdown
# Fact-Check Report: Chapter {N} - {Chapter Title}

**Date**: {Current Date}
**Fact Checker**: Viktor (BMAD Fact Checker)
**Chapter File**: chapters/chapter-{NN}.md

---

## Executive Summary

- **Total Claims Identified**: {count}
- **Verified**: {count} ✅
- **Needs Adjustment**: {count} ⚠️
- **Unverified**: {count} ❌
- **Outdated Sources**: {count} 🔄

**Overall Assessment**: {Ready for publication | Needs minor revisions | Requires significant updates}

---

## Detailed Fact-Check

### Claim 1: [Brief description]
**Location**: Section "{Section Name}", Paragraph {N}
**Original Text**: "{Exact quote from chapter}"
**Status**: ✅ Verified

**Source**:
- Schmidt, M., et al. (2023). "Title..." *Journal*, Vol(Issue), Pages.
- URL: https://...
- DOI: 10.xxx/xxx

**Verification Notes**: Claim is accurate. Source is current (2023), peer-reviewed, large sample size (n=50,000).

**Recommended Action**: No changes needed. Add citation [^1].

---

### Claim 2: [Brief description]
**Location**: Section "{Section Name}", Paragraph {N}
**Original Text**: "{Exact quote}"
**Status**: ⚠️ Needs Adjustment

**Source**:
- Johnson, A. (2022). "Title..." *Journal*, Vol(Issue), Pages.

**Verification Notes**: Claim states "60%" but source says "58-62% range". Also, source is specific to US population, not global.

**Recommended Revision**:
"Etwa 60% der US-Amerikaner berichten..."

**Recommended Action**: Revise claim to match source precision and scope. Add citation [^2].

---

[Continue for all claims...]

---

## Bibliography

Full source list for all claims:

[^1]: Schmidt, M., Weber, K., & Johnson, L. (2023). Stress Prevalence in European Populations: A Meta-Analysis. *Journal of Mental Health Research*, 45(3), 234-256. DOI: 10.1234/jmhr.2023.12345. Available: https://journal-example.com/article/12345

[^2]: Johnson, A., et al. (2022). Mental Health Trends in North America. *American Psychology Review*, 38(2), 145-167.

[Continue for all sources...]

---

## Unverified Claims

Claims that could not be verified with reliable sources:

1. **Claim**: "{Quote}"
   **Location**: Section X, Paragraph Y
   **Issue**: No recent peer-reviewed source found
   **Recommendation**: Remove claim or rephrase as anecdotal observation

---

## Recommendations for Author

1. **Add Citations**: {count} claims need inline citations added
2. **Revise Claims**: {count} claims need rewording for accuracy
3. **Remove/Replace**: {count} unverified claims should be removed or replaced
4. **Update Sources**: {count} claims rely on outdated sources (>5 years)

---

## Next Steps

- [ ] Author reviews fact-check report
- [ ] Author makes recommended revisions
- [ ] Fact Checker re-verifies changes (optional)
- [ ] Citations added to chapter (see *add-citations command)
- [ ] Chapter proceeds to lector review
```

### Step 6: Create Source Bibliography

**File**: `resources/sources/chapter-{NN}-sources.md`

Create formatted bibliography of all sources:

```markdown
# Source Bibliography: Chapter {N}

Complete list of sources cited in Chapter {N}.

---

## Academic Journals

1. Schmidt, M., Weber, K., & Johnson, L. (2023). Stress Prevalence in European Populations: A Meta-Analysis. *Journal of Mental Health Research*, 45(3), 234-256. DOI: 10.1234/jmhr.2023.12345

2. Johnson, A., et al. (2022). Mental Health Trends in North America. *American Psychology Review*, 38(2), 145-167.

---

## Government/Official Statistics

1. U.S. Census Bureau. (2023). American Community Survey. Retrieved from https://www.census.gov/...

---

## Books

1. Smith, J. (2022). *The Science of Stress Management*. New York: Academic Press.

---

## Authoritative Organizations

1. World Health Organization. (2023). Mental Health Factsheet. Retrieved from https://www.who.int/...

---

## Access Notes

- All sources accessed: {Date}
- DOI links preferred for academic sources
- Archived versions available at: [Internet Archive links if needed]
```

### Step 7: Automatically Commit Fact-Check

**CRITICAL:** Automatically commit the fact-check report to Git:

```bash
mkdir -p resources/fact-checks resources/sources
git add resources/fact-checks/chapter-{NN}-facts.md
git add resources/sources/chapter-{NN}-sources.md
git commit -m "Add fact-check report for chapter {N}

🔍 Verified {verified_count} claims with authoritative sources
📚 {total_sources} primary sources documented
✅ Ready for citation integration

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"
```

**IMPORTANT:**
- DO commit automatically after completing fact-check
- DO NOT push automatically (user decides when to push)
- Include both fact-check report and bibliography

### Step 8: Present Report to User

Inform user:

```
✅ Fact-check complete for Chapter {N}!

📋 Report: resources/fact-checks/chapter-{NN}-facts.md
📚 Sources: resources/sources/chapter-{NN}-sources.md

📊 Summary:
- {verified} claims verified ✅
- {needs_adjustment} need minor revision ⚠️
- {unverified} could not be verified ❌

📝 Next steps:
1. Review the fact-check report
2. Make recommended revisions to chapter
3. Use *add-citations {chapter_number} to add inline citations
4. Proceed to lector review

✅ Committed to Git (not pushed - you control when to push)
```

## Success Criteria

- [ ] All numerical and factual claims identified
- [ ] Primary sources found for verifiable claims
- [ ] Source quality assessed (peer-reviewed, authoritative)
- [ ] Claim accuracy verified against sources
- [ ] Comprehensive fact-check report created
- [ ] Bibliography with complete citations generated
- [ ] Recommendations provided for unverified/problematic claims
- [ ] Reports automatically committed to Git (not pushed)
- [ ] User informed of findings and next steps

## Error Handling

**If source not found:**
- Search with alternative keywords
- Check if claim is "common knowledge" (still needs source)
- Flag for author to provide source or remove claim

**If source is paywalled:**
- Note DOI/URL for reference
- Search for open-access version
- Check author's institutional access
- Provide abstract/summary if full text unavailable

**If sources contradict each other:**
- Note conflicting sources in report
- Recommend most recent/authoritative source
- Suggest rewording claim to acknowledge debate

## Notes

- **Thoroughness over speed**: Better to check fewer claims well than many claims poorly
- **Document everything**: Even unsuccessful searches help author understand limitations
- **Be diplomatic**: Frame as helping author strengthen credibility, not criticizing
- **Cultural context**: Some statistics vary by country/region - be specific in claims
