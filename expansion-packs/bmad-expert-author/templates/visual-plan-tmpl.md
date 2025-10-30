# Visual Plan: Chapter {N} - {Chapter Title}

**Date**: {YYYY-MM-DD}
**Visual Designer**: Vera (BMAD Visual Designer)
**Chapter File**: chapters/chapter-{NN}.md

---

## Executive Summary

- **Total Visual Elements Planned**: {count}
- **Critical (🔴)**: {count}
- **Important (🟡)**: {count}
- **Nice-to-have (🟢)**: {count}

**Visual Types Breakdown**:
- Photos/Images: {count}
- Diagrams: {count}
- Charts/Graphs: {count}
- Illustrations: {count}
- Screenshots: {count}
- Icons/Symbols: {count}

**Source Strategy**:
- Author-provided: {count}
- AI-generated: {count}
- Stock library: {count}
- Programmatically created: {count}

**Visual Style**: {Professional | Friendly | Minimalist | Colorful | Academic}

---

## Visual Elements by Section

### Section 1: {Section Name}

#### Visual 1.1: {Descriptive Name}

**Priority**: {🔴 Critical | 🟡 Important | 🟢 Nice-to-have}

**Type**: {Photo | Diagram | Chart | Illustration | Screenshot | Icon}

**Location**: {After paragraph X | At beginning of section | In sidebar/callout}

**File Name**: `fig-{NN}-{descriptive-name}.{ext}`

**Purpose**: {1-2 sentences explaining why this visual is needed and how it enhances learning}

**Content Requirements**:
- {Specific element 1}
- {Specific element 2}
- {Specific element 3}
- {Color scheme, style notes}

**Source Strategy**: {Author-provided | AI-generated | Stock library | Programmatic}

---

**{If AI-Generated}**

**AI Image Prompt** (DALL-E/Midjourney/Stable Diffusion):
```
{Detailed prompt following structure:
Subject + Style + Composition + Technical details
Specific, detailed, includes keywords for desired aesthetic}
```

**Alternative Keywords** *(if prompt needs adjustment)*:
- {Keyword 1}, {Keyword 2}, {Keyword 3}

---

**{If Stock Library}**

**Stock Image Keywords**:
- Primary: "{Main search term}"
- Secondary: "{Alternative search term}"
- Filters: {Color, orientation, people/no people}

**Recommended Sources**:
- {Unsplash | Pexels | Pixabay} (free)
- {Shutterstock | Adobe Stock | Getty Images} (paid)

---

**{If Programmatic - Mermaid Diagram}**

**Mermaid Code**:
```mermaid
{Mermaid diagram code here}
```

**Customization Options**:
- Color scheme: {Colors to use}
- Node style: {Shape, size preferences}

---

**{If Programmatic - Chart}**

**Chart Specifications**:
- Type: {Bar | Line | Pie | Scatter | Grouped Bar | Stacked Area}
- X-axis: {Data/labels}
- Y-axis: {Data/labels}
- Data series: {List data sets}
- Colors: {Color scheme}
- Legend: {Yes/No, placement}
- Data labels: {Yes/No}

**Data**:
```
{Provide actual data in table or JSON format}
```

**QuickChart URL** *(if using QuickChart API)*:
```
{Full QuickChart API URL with encoded configuration}
```

---

**{If Author-Provided}**

**Request for Author**:
```
Please provide: {Detailed description of what image should show}

Specifications:
- Subject: {What should be in the image}
- Setting: {Where/context}
- Key elements: {Must include...}
- Style: {Photography style, lighting, mood}
- Format: {PNG | JPG}
- Minimum resolution: {Width x Height} pixels or 300 DPI

Save as: resources/images/author-provided/chapter-{NN}/{filename}
```

---

**Markdown Embed**:
```markdown
![{Detailed alt text describing image for accessibility}](../resources/images/chapter-{NN}/fig-{NN}-{descriptive-name}.{ext})

*Figure {N}.{N}: {Caption explaining what the image shows and its relevance to content}*
```

**Alt Text** (Accessibility):
"{Detailed description for screen readers - describe what's shown, not just 'image of X'}"

---

#### Visual 1.2: {Next visual name}

{Repeat structure for each visual...}

---

### Section 2: {Section Name}

{Continue for all sections...}

---

## Visual Assets Inventory

### Author Must Provide

Priority order for author's attention:

**🔴 Critical (Need First)**:
1. **{Visual name}** → `author-provided/chapter-{NN}/{filename}`
   - Description: {What's needed}
   - Specs: {Technical requirements}

**🟡 Important (Need Soon)**:
1. **{Visual name}** → `author-provided/chapter-{NN}/{filename}`
   - Description: {What's needed}

**🟢 Nice-to-have (Optional)**:
1. **{Visual name}** → `author-provided/chapter-{NN}/{filename}`
   - Description: {What's needed}
   - Alternative: {Can use stock/AI instead}

---

### To Be AI-Generated

Prompts ready for image generation:

1. **Visual {N}.{N}**: {Name}
   - Prompt: {Brief preview}
   - Full prompt in section above
   - Estimated tokens: {Count} *(for paid APIs)*

2. **Visual {N}.{N}**: {Name}
   - Prompt: {Brief preview}

{Continue...}

**Tools Recommended**:
- DALL-E 3 (via ChatGPT Plus or API)
- Midjourney (Discord bot)
- Stable Diffusion (RunwayML or local install)
- Adobe Firefly (web interface)

---

### To Be Created Programmatically

Diagrams and charts I can generate:

1. **Visual {N}.{N}**: {Name} (Mermaid diagram)
   - Type: {Flowchart | Sequence | Class | State | Gantt}
   - Complexity: {Simple | Moderate | Complex}
   - Code ready: ✅

2. **Visual {N}.{N}**: {Name} (Chart)
   - Type: {Chart type}
   - Data source: {Provided | Needs author input}
   - Generation method: {QuickChart API | Chart.js | Code}

{Continue...}

---

### Stock Images to Source

Free and paid stock image options:

1. **Visual {N}.{N}**: {Name}
   - Keywords: "{Primary keywords}"
   - Sources: {Unsplash | Pexels | Others}
   - Filters: {Orientation, colors, style}
   - License: {CC0 | Commercial use OK}

{Continue...}

---

## Implementation Workflow

### Step 1: Gather Author Images
```bash
# Author creates directory and adds images
mkdir -p resources/images/author-provided/chapter-{NN}
# Author places images there

# Then run:
/BMad:agents:visual-designer
*organize-author-images
```

### Step 2: Generate AI Images

**For each AI-generated visual**:
1. Copy prompt from visual plan
2. Use preferred AI tool (DALL-E, Midjourney, etc.)
3. Generate image
4. Download high-resolution version
5. Save to: `resources/images/chapter-{NN}/fig-{NN}-{name}.{ext}`
6. Verify image quality and relevance

### Step 3: Create Programmatic Visuals

```bash
/BMad:agents:visual-designer
*generate-diagram {diagram_name}
# Or for charts:
*generate-chart {chart_name}
```

I will create these automatically using provided code/data.

### Step 4: Source Stock Images

**For each stock image**:
1. Search using provided keywords
2. Preview and select best match
3. Download high-resolution (min 2000px width or 300 DPI)
4. Check license for commercial/book use
5. Save to: `resources/images/chapter-{NN}/fig-{NN}-{name}.{ext}`
6. Note source URL for attribution (if required)

### Step 5: Optimize Images

```bash
/BMad:agents:visual-designer
*optimize-images {chapter_number}
```

This will:
- Resize images to appropriate dimensions
- Compress files (maintain quality, reduce size)
- Convert to optimal format (PNG for diagrams, JPG for photos)
- Ensure 300 DPI for print quality

### Step 6: Embed in Chapter

```bash
/BMad:agents:visual-designer
*embed-visuals {chapter_number}
```

This will:
- Insert Markdown image code at specified locations
- Add figure numbers and captions
- Include alt text for accessibility
- Create figure list at end of chapter

### Step 7: Create Metadata

```bash
/BMad:agents:visual-designer
*create-metadata {chapter_number}
```

Generates: `resources/images/chapter-{NN}/metadata.yaml` with:
- Image sources
- Usage rights/licenses
- Descriptions
- Creation date
- File sizes

---

## Visual Accessibility Checklist

All visuals meet accessibility standards:

- [ ] **Alt Text**: Every image has descriptive alt text (not decorative "image of...")
- [ ] **Captions**: Figure captions explain relevance to content
- [ ] **Color**: Sufficient contrast for colorblind readers
- [ ] **Text in Images**: Any text has minimum 4.5:1 contrast ratio
- [ ] **Data**: Charts/graphs have data summarized in caption
- [ ] **Decorative vs. Informative**: Decorative images marked appropriately
- [ ] **File Names**: Descriptive, not generic (image1.jpg)

---

## Style Consistency

Visual language guidelines for this chapter:

**Color Palette**:
- Primary: {Hex codes or color names}
- Secondary: {Hex codes}
- Accent: {Hex codes}
- Use consistently across all visuals

**Typography** (in images):
- Headings: {Font, size, weight}
- Body text: {Font, size}
- Minimum font size: {Points} for readability

**Photography Style**:
- Lighting: {Natural | Studio | Dramatic}
- Mood: {Professional | Casual | Aspirational}
- Composition: {Rule of thirds | Centered | Dynamic}

**Diagram Style**:
- Line thickness: {Thin | Medium | Bold}
- Shapes: {Rounded | Sharp corners}
- Icons: {Minimalist | Detailed}

**Chart Style**:
- Grid: {Yes | No | Light}
- Data labels: {Always | Hover | Never}
- Legend: {Top | Bottom | Right | Inside}

---

## Budget & Licensing

**Estimated Costs** *(if using paid services)*:

**Stock Images**:
- {count} images × ${price} = ${total}
- OR: Subscription: ${monthly_cost}/month

**AI Generation**:
- DALL-E: {count} images × ${price} = ${total}
- Midjourney: ${subscription}/month
- Stable Diffusion: Free (if local) or ${api_cost}

**Total Estimated**: ${total_cost}

**Free Alternatives**: ${savings} saved using free sources

---

**Licensing Notes**:
- Free stock (CC0): No attribution required, commercial use OK
- Paid stock: Check license terms (editorial vs. commercial)
- AI-generated: Check ToS (typically you own generated images)
- Author-provided: Author confirms usage rights

---

## Quality Standards

All visuals meet:

- [ ] **Resolution**: Minimum 300 DPI for print or 2000px width for digital
- [ ] **Format**: Appropriate (PNG for transparency/diagrams, JPG for photos)
- [ ] **File Size**: Optimized (< 2MB per image for digital books)
- [ ] **Relevance**: Directly supports learning objective
- [ ] **Professionalism**: High-quality, not amateur/clipart
- [ ] **Consistency**: Matches established visual style
- [ ] **Accuracy**: Factually correct (charts match data, diagrams accurate)

---

## Timeline

**Estimated Time to Complete**:

- Author-provided images: {X days} (depends on author)
- AI generation: {X hours} (user generates externally)
- Programmatic creation: {X minutes} (I generate)
- Stock sourcing: {X hours} (user searches/downloads)
- Optimization: {X minutes} (automated)
- Embedding: {X minutes} (automated)
- Metadata: {X minutes} (automated)

**Total**: {X days/hours}

---

## Next Steps

**Immediate Actions**:
1. [ ] Author reviews visual plan
2. [ ] Author provides images marked "Author-provided"
3. [ ] User generates/sources remaining images
4. [ ] Run `*optimize-images {chapter_number}`
5. [ ] Run `*embed-visuals {chapter_number}`
6. [ ] Run `*create-metadata {chapter_number}`
7. [ ] Verify all images embedded correctly
8. [ ] Check accessibility (alt text, captions)
9. [ ] Proceed to lector review

---

**Questions? Run**: `*help` to see all visual designer commands

**Visual Designer**: Vera (BMAD Visual Designer Agent)
**Plan Generated**: {YYYY-MM-DD HH:MM}
