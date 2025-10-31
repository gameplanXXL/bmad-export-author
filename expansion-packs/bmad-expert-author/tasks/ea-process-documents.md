# Task: Process Documents (Batch)

**Agent**: Document Processor
**Output**: Converted Markdown files in processed-materials/
**Elicit**: false

## Purpose
Batch process all user-provided documents in source-materials/ directory, converting them to clean Markdown format for use in book development.

## Prerequisites
- source-materials/ directory exists with files to process
- Conversion tools installed (mammoth, pdf-parse, turndown)
- Run `npm install` if tools not yet installed

## Process

### Step 1: Verify Tools Installation

Check that required npm packages are installed:

```bash
# Verify conversion tools
node -e "require('mammoth'); require('pdf-parse'); require('turndown'); console.log('✅ All tools installed')"
```

If tools are missing, prompt user to run: `make install-tools`

### Step 2: Scan Source Materials Directory

```bash
# Check if source-materials/ exists
ls -la source-materials/ 2>/dev/null || echo "⚠️  source-materials/ directory not found"
```

Report findings:
- Total number of files found
- File types detected (DOCX, PDF, HTML, TXT, MD)
- Estimated processing time
- Any problematic files (encrypted PDFs, corrupted files)

If directory doesn't exist or is empty:
- Inform user no materials found
- Offer to create directory: `mkdir -p source-materials/`
- Ask user to place files there and run command again

### Step 3: Create Output Directory

```bash
mkdir -p processed-materials/
```

### Step 4: Process Each File Type

For each file in source-materials/:

#### 4A: Process DOCX Files

For each .docx or .doc file:

1. **Convert using mammoth**:
   - Use the utility script: `node .bmad-expert-author/utils/document-converter.js docx {filepath}`
   - Output to: `processed-materials/{basename}.md`
   - Preserve: Headings, lists, bold/italic, links
   - Strip: Comments, tracked changes, hidden text

2. **Clean output**:
   - Remove excessive whitespace
   - Normalize heading levels
   - Fix list formatting

3. **Add metadata header**:
   ```markdown
   ---
   source: {original_filename}
   converted: {timestamp}
   format: docx
   ---
   ```

#### 4B: Process PDF Files

For each .pdf file:

1. **Extract text using pdf-parse**:
   - Use utility script: `node .bmad-expert-author/utils/document-converter.js pdf {filepath}`
   - Output to: `processed-materials/{basename}.md`
   - Extract all readable text
   - Preserve paragraph breaks where possible

2. **Structure extraction**:
   - Attempt to detect headings (ALL CAPS, larger font)
   - Preserve line breaks between sections
   - Note: Complex layouts may require manual cleanup

3. **Add metadata header** with warning:
   ```markdown
   ---
   source: {original_filename}
   converted: {timestamp}
   format: pdf
   note: "PDF text extraction may require manual cleanup for formatting"
   ---
   ```

#### 4C: Process HTML Files

For each .html or .htm file:

1. **Convert using turndown**:
   - Use utility script: `node .bmad-expert-author/utils/document-converter.js html {filepath}`
   - Output to: `processed-materials/{basename}.md`
   - Preserve: Headings, links, lists, emphasis, code blocks
   - Strip: Scripts, styles, navigation, ads

2. **Clean output**:
   - Remove HTML artifacts
   - Fix markdown formatting
   - Preserve semantic structure

3. **Add metadata header**:
   ```markdown
   ---
   source: {original_filename}
   converted: {timestamp}
   format: html
   ---
   ```

#### 4D: Process Markdown Files

For each .md file:

1. **Validate and clean**:
   - Check for valid markdown syntax
   - Normalize formatting
   - Fix common issues (heading levels, list indentation)

2. **Copy to processed-materials/**:
   - Add metadata header
   - Otherwise leave content intact

3. **Add metadata header**:
   ```markdown
   ---
   source: {original_filename}
   validated: {timestamp}
   format: markdown
   ---
   ```

#### 4E: Process Text Files

For each .txt file:

1. **Convert to markdown**:
   - Wrap in markdown format
   - Detect and format lists if present
   - Add line breaks for readability

2. **Add metadata header**:
   ```markdown
   ---
   source: {original_filename}
   converted: {timestamp}
   format: text
   ---
   ```

### Step 5: Handle Errors Gracefully

For any file that fails to process:

1. **Log error details**:
   - Filename
   - File type
   - Error message
   - Suggested action

2. **Create error report**:
   - Save to: `processed-materials/_errors.md`
   - List all failed files with details

3. **Continue processing**:
   - Don't stop on single file failure
   - Process all remaining files

### Step 6: Generate Conversion Report

Create: `processed-materials/_conversion-report.md`

**Report Contents:**

```markdown
# Document Conversion Report

**Generated**: {timestamp}

## Summary

- **Total files processed**: {count}
- **Successful conversions**: {success_count}
- **Failed conversions**: {failure_count}
- **Total output size**: {size_mb} MB

## Processed Files

### DOCX Files ({count})
- {filename} → {output_filename} ({size} KB) ✅
- ...

### PDF Files ({count})
- {filename} → {output_filename} ({size} KB) ✅ ⚠️ Manual cleanup may be needed
- ...

### HTML Files ({count})
- {filename} → {output_filename} ({size} KB) ✅
- ...

### Markdown Files ({count})
- {filename} → {output_filename} ({size} KB) ✅
- ...

### Text Files ({count})
- {filename} → {output_filename} ({size} KB) ✅
- ...

## Failed Conversions

{List any failed files with error messages}

## Next Steps

1. Review converted files in `processed-materials/`
2. Manually clean up any PDF extractions if needed
3. These materials are now ready to inform your Book Blueprint
4. Return to book-strategist to complete blueprint creation

---
*Processed by BMAD Expert Author - Document Processor*
```

### Step 7: Present Results to User

Display summary:

```
✅ Document Processing Complete!

📊 Summary:
   - Processed {total} files
   - Successful: {success_count}
   - Failed: {failure_count}
   - Output directory: processed-materials/

📁 Converted Files:
   [List converted filenames]

⚠️  Notes:
   - PDF extractions may need manual cleanup
   - Review _conversion-report.md for details

✨ Next Steps:
   1. Review converted files in processed-materials/
   2. Return to book-strategist to complete blueprint: /BMad-ea:agents:book-strategist
```

## Output Deliverable

- All source documents converted to Markdown in `processed-materials/`
- Conversion report: `processed-materials/_conversion-report.md`
- Error log (if any failures): `processed-materials/_errors.md`
- All original files preserved in `source-materials/`

## Success Criteria

- [ ] All processable files converted to Markdown
- [ ] Conversion report generated with statistics
- [ ] Original files preserved (never deleted)
- [ ] Metadata headers added to all converted files
- [ ] Errors logged and reported clearly
- [ ] User receives clear summary and next steps

## Error Handling

**Common Issues:**

1. **Tools not installed**:
   - Solution: Prompt user to run `make install-tools`

2. **Encrypted/Protected PDFs**:
   - Solution: Skip with note in report, ask user for unlocked version

3. **Corrupted files**:
   - Solution: Log error, continue with other files

4. **Unsupported formats**:
   - Solution: List in report, suggest conversion to supported format

## Notes

- **Non-destructive**: Original files are NEVER deleted or modified
- **Idempotent**: Can be run multiple times safely (overwrites output)
- **Batch efficiency**: Processes all files in one operation
- **Format preservation**: Best-effort to maintain document structure
