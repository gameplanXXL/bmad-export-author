#!/usr/bin/env node

/**
 * Document Converter Utility
 *
 * Converts various document formats to Markdown for BMAD Expert Author
 * Supports: DOCX, PDF, HTML → Markdown
 *
 * Usage:
 *   node document-converter.js docx <filepath>
 *   node document-converter.js pdf <filepath>
 *   node document-converter.js html <filepath>
 *   node document-converter.js batch <directory>
 */

const fs = require('fs');
const path = require('path');

// Check if running in a context where these modules are available
let mammoth, pdfParse, TurndownService;

try {
  mammoth = require('mammoth');
  pdfParse = require('pdf-parse');
  TurndownService = require('turndown').default || require('turndown');
} catch (error) {
  console.error('❌ Error: Required npm packages not installed.');
  console.error('   Please run: npm install mammoth pdf-parse turndown');
  console.error('   Or run: make install-tools');
  process.exit(1);
}

/**
 * Convert DOCX to Markdown
 */
async function convertDocx(filepath) {
  try {
    const buffer = fs.readFileSync(filepath);
    const result = await mammoth.convertToMarkdown({ buffer });

    const basename = path.basename(filepath, path.extname(filepath));
    const outputPath = path.join('processed-materials', `${basename}.md`);

    // Add metadata header
    const timestamp = new Date().toISOString();
    const metadata = `---
source: ${path.basename(filepath)}
converted: ${timestamp}
format: docx
---

`;

    const content = metadata + result.value;

    // Ensure output directory exists
    if (!fs.existsSync('processed-materials')) {
      fs.mkdirSync('processed-materials', { recursive: true });
    }

    fs.writeFileSync(outputPath, content, 'utf-8');

    console.log(`✅ Converted DOCX: ${filepath} → ${outputPath}`);
    if (result.messages.length > 0) {
      console.log(`   ⚠️  Warnings: ${result.messages.length}`);
    }

    return {
      success: true,
      input: filepath,
      output: outputPath,
      size: Buffer.byteLength(content, 'utf-8'),
      warnings: result.messages
    };
  } catch (error) {
    console.error(`❌ Failed to convert DOCX: ${filepath}`);
    console.error(`   Error: ${error.message}`);
    return {
      success: false,
      input: filepath,
      error: error.message
    };
  }
}

/**
 * Convert PDF to Markdown (text extraction)
 */
async function convertPdf(filepath) {
  try {
    const dataBuffer = fs.readFileSync(filepath);
    const data = await pdfParse(dataBuffer);

    const basename = path.basename(filepath, path.extname(filepath));
    const outputPath = path.join('processed-materials', `${basename}.md`);

    // Add metadata header
    const timestamp = new Date().toISOString();
    const metadata = `---
source: ${path.basename(filepath)}
converted: ${timestamp}
format: pdf
pages: ${data.numpages}
note: "PDF text extraction may require manual cleanup for formatting"
---

`;

    // Clean up extracted text
    let text = data.text;

    // Attempt basic formatting improvements
    text = text
      .replace(/\n{3,}/g, '\n\n')  // Normalize multiple newlines
      .replace(/([^\n])\n([^\n])/g, '$1 $2')  // Join broken lines
      .replace(/\n\n/g, '\n\n')  // Preserve paragraph breaks
      .trim();

    const content = metadata + text;

    // Ensure output directory exists
    if (!fs.existsSync('processed-materials')) {
      fs.mkdirSync('processed-materials', { recursive: true });
    }

    fs.writeFileSync(outputPath, content, 'utf-8');

    console.log(`✅ Converted PDF: ${filepath} → ${outputPath}`);
    console.log(`   📄 Pages: ${data.numpages}`);
    console.log(`   ⚠️  Note: Manual cleanup may be needed`);

    return {
      success: true,
      input: filepath,
      output: outputPath,
      size: Buffer.byteLength(content, 'utf-8'),
      pages: data.numpages,
      note: 'May require manual cleanup'
    };
  } catch (error) {
    console.error(`❌ Failed to convert PDF: ${filepath}`);
    console.error(`   Error: ${error.message}`);
    return {
      success: false,
      input: filepath,
      error: error.message
    };
  }
}

/**
 * Convert HTML to Markdown
 */
async function convertHtml(filepath) {
  try {
    const html = fs.readFileSync(filepath, 'utf-8');

    const turndownService = new TurndownService({
      headingStyle: 'atx',
      codeBlockStyle: 'fenced'
    });

    const markdown = turndownService.turndown(html);

    const basename = path.basename(filepath, path.extname(filepath));
    const outputPath = path.join('processed-materials', `${basename}.md`);

    // Add metadata header
    const timestamp = new Date().toISOString();
    const metadata = `---
source: ${path.basename(filepath)}
converted: ${timestamp}
format: html
---

`;

    const content = metadata + markdown;

    // Ensure output directory exists
    if (!fs.existsSync('processed-materials')) {
      fs.mkdirSync('processed-materials', { recursive: true });
    }

    fs.writeFileSync(outputPath, content, 'utf-8');

    console.log(`✅ Converted HTML: ${filepath} → ${outputPath}`);

    return {
      success: true,
      input: filepath,
      output: outputPath,
      size: Buffer.byteLength(content, 'utf-8')
    };
  } catch (error) {
    console.error(`❌ Failed to convert HTML: ${filepath}`);
    console.error(`   Error: ${error.message}`);
    return {
      success: false,
      input: filepath,
      error: error.message
    };
  }
}

/**
 * Process all files in a directory
 */
async function batchProcess(directory) {
  console.log(`📂 Scanning directory: ${directory}`);

  if (!fs.existsSync(directory)) {
    console.error(`❌ Directory not found: ${directory}`);
    process.exit(1);
  }

  const files = fs.readdirSync(directory);
  const results = {
    total: 0,
    success: 0,
    failed: 0,
    details: []
  };

  for (const file of files) {
    const filepath = path.join(directory, file);
    const ext = path.extname(file).toLowerCase();

    // Skip directories and hidden files
    if (fs.statSync(filepath).isDirectory() || file.startsWith('.')) {
      continue;
    }

    results.total++;
    let result;

    switch (ext) {
      case '.docx':
      case '.doc':
        result = await convertDocx(filepath);
        break;
      case '.pdf':
        result = await convertPdf(filepath);
        break;
      case '.html':
      case '.htm':
        result = await convertHtml(filepath);
        break;
      case '.md':
      case '.markdown':
        console.log(`ℹ️  Skipping Markdown file: ${filepath}`);
        result = { success: true, input: filepath, skipped: true };
        break;
      case '.txt':
        console.log(`ℹ️  Skipping text file: ${filepath} (copy manually if needed)`);
        result = { success: true, input: filepath, skipped: true };
        break;
      default:
        console.log(`⚠️  Unsupported format: ${filepath}`);
        result = { success: false, input: filepath, error: 'Unsupported format' };
    }

    if (result.success) {
      results.success++;
    } else {
      results.failed++;
    }

    results.details.push(result);
  }

  // Generate report
  console.log('\n' + '='.repeat(60));
  console.log('📊 Batch Processing Complete');
  console.log('='.repeat(60));
  console.log(`Total files: ${results.total}`);
  console.log(`✅ Successful: ${results.success}`);
  console.log(`❌ Failed: ${results.failed}`);
  console.log('='.repeat(60));

  // Write conversion report
  const reportPath = path.join('processed-materials', '_conversion-report.md');
  const timestamp = new Date().toISOString();

  let report = `# Document Conversion Report

**Generated**: ${timestamp}

## Summary

- **Total files processed**: ${results.total}
- **Successful conversions**: ${results.success}
- **Failed conversions**: ${results.failed}

## Processed Files

`;

  for (const detail of results.details) {
    if (detail.success && !detail.skipped) {
      report += `- ✅ ${detail.input} → ${detail.output}\n`;
      if (detail.note) {
        report += `  - Note: ${detail.note}\n`;
      }
    } else if (detail.skipped) {
      report += `- ℹ️  ${detail.input} (skipped)\n`;
    }
  }

  if (results.failed > 0) {
    report += `\n## Failed Conversions\n\n`;
    for (const detail of results.details) {
      if (!detail.success) {
        report += `- ❌ ${detail.input}\n`;
        report += `  - Error: ${detail.error}\n`;
      }
    }
  }

  report += `\n---
*Processed by BMAD Expert Author - Document Processor*
`;

  fs.writeFileSync(reportPath, report, 'utf-8');
  console.log(`\n📄 Conversion report: ${reportPath}`);

  return results;
}

/**
 * Main CLI handler
 */
async function main() {
  const args = process.argv.slice(2);

  if (args.length < 2) {
    console.log(`
Usage:
  node document-converter.js docx <filepath>
  node document-converter.js pdf <filepath>
  node document-converter.js html <filepath>
  node document-converter.js batch <directory>

Examples:
  node document-converter.js docx source-materials/research.docx
  node document-converter.js pdf source-materials/study.pdf
  node document-converter.js batch source-materials/
`);
    process.exit(1);
  }

  const command = args[0];
  const target = args[1];

  try {
    switch (command) {
      case 'docx':
        await convertDocx(target);
        break;
      case 'pdf':
        await convertPdf(target);
        break;
      case 'html':
        await convertHtml(target);
        break;
      case 'batch':
        await batchProcess(target);
        break;
      default:
        console.error(`❌ Unknown command: ${command}`);
        process.exit(1);
    }
  } catch (error) {
    console.error(`❌ Fatal error: ${error.message}`);
    process.exit(1);
  }
}

// Run if called directly
if (require.main === module) {
  main();
}

module.exports = {
  convertDocx,
  convertPdf,
  convertHtml,
  batchProcess
};
