# Buch-Projekt Verzeichnisstruktur

Dieses Dokument beschreibt die Verzeichnis- und Dateistruktur, die beim Schreiben eines Buches mit dem BMAD Expert Author Expansion Pack entsteht.

## Übersicht der Projektstruktur

Wenn Sie mit den Agenten arbeiten, wird folgende Struktur in Ihrem Projekt-Root erstellt:

```
your-book-project/
├── book-blueprint.yaml              # Strategisches Fundament (book-strategist)
├── source-materials-inventory.yaml  # Quellen-Katalog (researcher)
├── learning-framework.yaml          # Instruktionsdesign (learning-architect)
├── book-structure.yaml              # Gesamtstruktur (content-structurer)
│
├── source-materials/                # Gesammelte Quellen & Ressourcen
│   ├── author-content/
│   │   ├── blog-posts/
│   │   ├── presentations/
│   │   ├── courses/
│   │   └── videos/
│   ├── references/
│   │   ├── books/
│   │   ├── studies/
│   │   └── articles/
│   ├── stories/
│   │   ├── personal-journey/
│   │   ├── client-cases/
│   │   └── examples/
│   ├── existing-exercises/
│   │   ├── worksheets/
│   │   ├── templates/
│   │   └── tools/
│   └── media/
│       ├── images/
│       ├── diagrams/
│       └── videos/
│
├── outlines/                        # Kapitel-Spezifikationen
│   ├── chapter-01-outline.yaml
│   ├── chapter-02-outline.yaml
│   ├── chapter-03-outline.yaml
│   └── ...
│
├── chapters/                        # Geschriebene Inhalte
│   ├── chapter-01.md
│   ├── chapter-02.md
│   ├── chapter-03.md
│   ├── introduction.md
│   ├── conclusion.md
│   └── ...
│
├── reviews/                         # Qualitätsprüfungen
│   ├── review-chapter-01.yaml
│   ├── review-chapter-02.yaml
│   ├── review-chapter-03.yaml
│   └── ...
│
├── resources/                       # Ergänzende Materialien
│   ├── exercises/
│   │   ├── exercise-budget-planning.md
│   │   ├── exercise-goal-setting.md
│   │   └── ...
│   ├── case-studies/
│   │   ├── case-study-debt-freedom.md
│   │   ├── case-study-investment-start.md
│   │   └── ...
│   ├── examples/
│   │   ├── example-budget-template.md
│   │   └── ...
│   ├── templates/
│   │   ├── worksheet-monthly-budget.md
│   │   └── ...
│   ├── fact-checks/                 # Fact-Check Reports (NEW!)
│   │   ├── chapter-01-facts.md
│   │   ├── chapter-02-facts.md
│   │   └── ...
│   ├── sources/                     # Source Bibliographies (NEW!)
│   │   ├── chapter-01-sources.md
│   │   ├── chapter-02-sources.md
│   │   └── ...
│   ├── visuals/                     # Visual Plans (NEW!)
│   │   ├── chapter-01-visual-plan.md
│   │   ├── chapter-02-visual-plan.md
│   │   └── ...
│   └── images/                      # Images & Visuals (NEW!)
│       ├── author-provided/         # Images from author
│       │   ├── chapter-01/
│       │   ├── chapter-02/
│       │   └── shared/             # Reusable images (headshot, etc.)
│       ├── chapter-01/             # Chapter 1 visuals
│       │   ├── fig-01-budget-flowchart.png
│       │   ├── fig-02-savings-chart.png
│       │   └── metadata.yaml
│       ├── chapter-02/             # Chapter 2 visuals
│       │   ├── fig-01-debt-comparison.png
│       │   └── metadata.yaml
│       └── ...
│
├── workbooks/                       # Begleitende Workbooks (optional)
│   ├── workbook-outline.yaml
│   ├── workbook-draft.md
│   └── ...
│
└── publishing/                      # Publikations-Strategie (optional)
    ├── launch-plan.yaml
    ├── marketing-strategy.md
    └── distribution-channels.md
```

## Detaillierte Beschreibung

### Root-Ebene Dokumente

#### 1. `book-blueprint.yaml`
**Erstellt von:** book-strategist
**Zweck:** Strategisches Fundament des gesamten Buchprojekts
**Inhalt:**
- Zielgruppen-Analyse (Demographics, Psychographics)
- Transformation (Vorher/Nachher Zustand der Leser)
- Marktpositionierung & Wettbewerbsanalyse
- Unique Value Proposition
- Content-Strategie
- Erfolgs-Kriterien
- Publikations-Strategie

**Wann erstellt:** Zu Beginn des Projekts (erster Schritt)
**Format:** YAML

#### 2. `source-materials-inventory.yaml`
**Erstellt von:** researcher (Regina)
**Zweck:** Umfassender Katalog aller Quellen und Ressourcen
**Inhalt:**
- Autor's existierende Inhalte (Blogposts, Präsentationen, Kurse)
- Persönliche Geschichten und Fallbeispiele
- Referenzmaterialien (Studien, Bücher, Daten)
- Existierende Übungen und Templates
- Domain Knowledge (Konzepte, FAQs, Misconceptions)
- Gap-Analyse (was fehlt und benötigt wird)
- Mapping zu Kapiteln

**Wann erstellt:** Nach dem Book Blueprint (zweiter Schritt)
**Format:** YAML

#### 3. `learning-framework.yaml`
**Erstellt von:** learning-architect
**Zweck:** Instruktionsdesign-Blueprint für das Buch
**Inhalt:**
- Lernprinzipien & didaktischer Ansatz
- Skill-Progression (Foundation → Intermediate → Advanced)
- Übungs-Strategie
- Assessment-Methoden
- Cognitive Load Management
- Lernziele pro Kapitel

**Wann erstellt:** Nach dem Book Blueprint
**Format:** YAML

#### 3. `book-structure.yaml`
**Erstellt von:** content-structurer
**Zweck:** Gesamtstruktur des Buches mit allen Teilen und Kapiteln
**Inhalt:**
- Teil-Einteilung (Parts)
- Kapitel-Übersicht mit Titeln
- Reihenfolge und Dependencies
- Geschätzte Seitenzahlen/Wortanzahlen

**Wann erstellt:** Nach dem Learning Framework
**Format:** YAML

### `/source-materials/` - Gesammelte Quellen & Ressourcen

**Erstellt von:** researcher
**Dateien:** Organisierte Sammlung aller Autor-Materialien

**Struktur:**
```
source-materials/
├── author-content/          # Vom Autor bereits erstellte Inhalte
│   ├── blog-posts/         # Artikel, Blogbeiträge
│   ├── presentations/      # Präsentationen, Slide Decks
│   ├── courses/            # Kursmaterialien, Curricula
│   └── videos/             # Video/Audio Content, Transcripts
├── references/              # Referenzmaterialien
│   ├── books/              # Bücher, Publikationen
│   ├── studies/            # Studien, Research Papers
│   └── articles/           # Artikel, Fachbeiträge
├── stories/                 # Geschichten und Beispiele
│   ├── personal-journey/   # Persönliche Geschichte des Autors
│   ├── client-cases/       # Kunden-Erfolgsgeschichten
│   └── examples/           # Beispiele und Szenarien
├── existing-exercises/      # Bereits vorhandene Übungen
│   ├── worksheets/         # Arbeitsblätter
│   ├── templates/          # Vorlagen, Frameworks
│   └── tools/              # Tools, Calculators
└── media/                   # Medien-Assets
    ├── images/             # Bilder, Photos
    ├── diagrams/           # Diagramme, Illustrationen
    └── videos/             # Video-Materialien
```

**Zweck:**
- Zentrale Sammlung aller Quellmaterialien
- Vermeidung von Duplikation bestehender Inhalte
- Schneller Zugriff für alle Content-Creator Agents
- Basis für Content-Erstellung

**Beispiel:**
```
source-materials/
├── author-content/
│   ├── blog-posts/
│   │   ├── 2023-05-budgeting-basics.md
│   │   └── 2023-08-investment-strategy.md
│   └── presentations/
│       └── financial-freedom-workshop-2023.pdf
├── references/
│   └── studies/
│       └── behavioral-finance-research.pdf
└── stories/
    └── client-cases/
        ├── maria-debt-freedom-story.md
        └── tom-investment-journey.md
```

### `/outlines/` - Kapitel-Spezifikationen

**Erstellt von:** content-structurer
**Dateien:** `chapter-{number}-outline.yaml`

**Inhalt jeder Outline:**
- Kapitel-Nummer und Titel
- Lernziele (Knowledge, Skills, Application)
- Detaillierte Struktur:
  - Introduction (Hook, Context, Preview)
  - Main Content (Sections mit Key Concepts)
  - Exercises & Activities
  - Examples & Case Studies
  - Summary & Key Takeaways
- Geschätzte Wortanzahl
- Prerequisites & Follow-up Chapters

**Beispiel:**
```
outlines/
├── chapter-01-outline.yaml    # "Warum finanzielle Freiheit?"
├── chapter-02-outline.yaml    # "Ihre Ausgangssituation"
├── chapter-03-outline.yaml    # "Das Budget-System"
└── ...
```

### `/chapters/` - Geschriebene Inhalte

**Erstellt von:** book-author
**Dateien:** `chapter-{number}.md` oder `{section-name}.md`

**Inhalt:**
- Vollständig ausformulierte Kapitel
- In Markdown-Format
- Basierend auf den Chapter Outlines
- Inklusive integrierter Übungen und Beispiele

**Workflow:**
1. book-author schreibt basierend auf Outline
2. Speichert als Chapter
3. lector reviewed das Chapter
4. book-author überarbeitet
5. Iterative Verbesserung bis Approval

**Beispiel:**
```
chapters/
├── introduction.md
├── chapter-01.md               # Version nach lector Review
├── chapter-01-v2.md            # Überarbeitete Version
├── chapter-02.md
└── ...
```

### `/reviews/` - Qualitätsprüfungen

**Erstellt von:** lector
**Dateien:** `review-chapter-{number}.yaml`

**Inhalt jedes Reviews:**
- Review Datum & Reviewer
- Alignment-Check mit Book Blueprint
- Learning Outcomes Achievement
- Clarity & Accessibility Assessment
- Exercise Effectiveness
- Feedback nach Kategorien:
  - Critical Issues (Must Fix)
  - Important Improvements (Should Fix)
  - Nice-to-Have Suggestions
- Spezifische, actionable Feedback-Punkte
- Overall Status (Approved / Needs Revision)

**Beispiel:**
```
reviews/
├── review-chapter-01.yaml
├── review-chapter-01-v2.yaml   # Nach Revision
├── review-chapter-02.yaml
└── ...
```

### `/resources/` - Ergänzende Materialien

#### `/resources/exercises/`
**Erstellt von:** exercise-designer
**Dateien:** `exercise-{name}.md`

**Inhalt:**
- Titel & Zweck der Übung
- Benötigte Zeit
- Benötigte Materialien
- Schritt-für-Schritt Anleitung
- Beispiel-Lösungen
- Häufige Fehler & Tipps
- Reflexionsfragen

**Beispiel:**
```
resources/exercises/
├── exercise-budget-planning.md
├── exercise-debt-prioritization.md
├── exercise-goal-setting.md
└── worksheet-monthly-expenses.md
```

#### `/resources/case-studies/`
**Erstellt von:** case-study-curator
**Dateien:** `case-study-{name}.md`

**Inhalt:**
- Protagonist & Ausgangssituation
- Herausforderungen & Hindernisse
- Angewandte Strategien
- Ergebnisse & Transformation
- Lektionen & Takeaways
- Anwendung auf Leser-Situation

**Beispiel:**
```
resources/case-studies/
├── case-study-maria-debt-freedom.md
├── case-study-tom-first-investment.md
└── case-study-lisa-passive-income.md
```

#### `/resources/examples/`
**Erstellt von:** book-author oder case-study-curator
**Dateien:** `example-{name}.md`

**Beispiele:**
- Konkrete Berechnungen
- Ausgefüllte Templates
- Vor/Nach Vergleiche
- Typische Szenarien

#### `/resources/templates/`
**Erstellt von:** exercise-designer oder workbook-developer
**Dateien:** Wiederverwendbare Vorlagen für Leser

**Beispiele:**
- Budget-Templates
- Goal-Setting Worksheets
- Progress Tracking Sheets
- Decision Frameworks

#### `/resources/fact-checks/` - Fact-Check Reports **NEW!**
**Erstellt von:** fact-checker (Viktor)
**Dateien:** `chapter-{NN}-facts.md`

**Inhalt:**
- Identifizierte faktische Claims (Zahlen, Statistiken, Forschungsbehauptungen)
- Verifikationsstatus (✅ Verified, ⚠️ Needs Adjustment, ❌ Unverified)
- Primärquellen mit vollständigen Zitaten
- Genauigkeitsbewertung (Claim vs. Quelle)
- Empfohlene Revisionen
- Quellenqualitätsbewertung

**Beispiel:**
```
resources/fact-checks/
├── chapter-01-facts.md    # "50% der Bevölkerung..." → Verified mit Quelle
├── chapter-02-facts.md    # "Studien zeigen..." → Source: Schmidt 2023
└── chapter-03-facts.md
```

**Workflow:**
1. fact-checker scannt Kapitel nach Claims
2. WebSearch findet Primärquellen (Peer-reviewed, Government data)
3. Erstellt Fact-Check Report
4. Autor reviewed und revidiert basierend auf Feedback

#### `/resources/sources/` - Source Bibliographies **NEW!**
**Erstellt von:** fact-checker (Viktor)
**Dateien:** `chapter-{NN}-sources.md`

**Inhalt:**
- Vollständige formatierte Bibliographie aller Quellen
- Strukturiert nach Quellentyp (Academic Journals, Government Data, Books)
- DOI/URL-Links zu Originalquellen
- Zugriffsdaten
- Lizenz-/Verfügbarkeitsnotizen

**Beispiel:**
```
resources/sources/
├── chapter-01-sources.md
│   [^1]: Schmidt, M., et al. (2023). "Stress Prevalence..."
│   [^2]: WHO. (2023). Mental Health Statistics...
└── chapter-02-sources.md
```

#### `/resources/visuals/` - Visual Plans **NEW!**
**Erstellt von:** visual-designer (Vera)
**Dateien:** `chapter-{NN}-visual-plan.md`

**Inhalt:**
- Umfassende Analyse von Visualisierungsmöglichkeiten
- Platzierungsempfehlungen für Bilder
- Kategorisierung (Photo, Diagram, Chart, Illustration, Screenshot)
- Priorität (🔴 Critical, 🟡 Important, 🟢 Nice-to-have)
- AI Image Generation Prompts (DALL-E, Midjourney)
- Stock Image Keywords
- Mermaid Diagramm-Code
- Chart-Spezifikationen
- Accessibility Requirements (Alt text, Captions)

**Beispiel:**
```
resources/visuals/
├── chapter-01-visual-plan.md
│   - Visual 1.1: Debt repayment flowchart (Mermaid)
│   - Visual 1.2: Person celebrating debt-free (AI prompt)
│   - Visual 1.3: Repayment comparison chart (QuickChart)
└── chapter-02-visual-plan.md
```

#### `/resources/images/` - Images & Visuals **NEW!**
**Erstellt von:** visual-designer (Vera) + author
**Struktur:** Organisiert nach Kapiteln mit metadata

**Unterverzeichnisse:**

**`author-provided/`** - Vom Autor bereitgestellte Bilder
- `chapter-{NN}/` - Kapitel-spezifische Bilder
- `shared/` - Wiederverwendbare Bilder (Headshot, Brand-Elemente)

**`chapter-{NN}/`** - Finale Visuals pro Kapitel
- Naming: `fig-{NN}-{descriptive-name}.{ext}`
- Beispiel: `fig-01-budget-flowchart.png`
- Inkludiert: Fotos, Diagramme, Charts, Illustrationen, Screenshots
- `metadata.yaml` - Bild-Metadaten (Quelle, Lizenz, Alt text, Erstellungsdatum)

**Image Types:**
- 📸 Photos/Stock Images (`.jpg`, `.png`)
- 📊 Charts/Graphs (`.png`, `.svg`)
- 🔀 Diagrams (`.png`, `.svg`)
- 🎨 Illustrations (`.png`, `.svg`)
- 📱 Screenshots (`.png`)

**Metadata File Example** (`chapter-01/metadata.yaml`):
```yaml
images:
  - filename: fig-01-budget-flowchart.png
    type: diagram
    source: Generated via Mermaid
    alt_text: "Flowchart showing 5-step budget creation process"
    caption: "Figure 1.1: Budget creation workflow"
    created: 2024-01-15
    license: Author-created

  - filename: fig-02-celebration.jpg
    type: photo
    source: AI-generated (DALL-E 3)
    prompt: "Professional woman celebrating..."
    alt_text: "Smiling woman at desk celebrating financial goal"
    caption: "Figure 1.2: Joy of achieving financial freedom"
    created: 2024-01-16
    license: AI-generated (owned by author)
```

**Organization System:**
```
resources/images/
├── author-provided/
│   ├── chapter-01/
│   │   └── personal-budget-photo.jpg
│   ├── chapter-02/
│   │   └── author-debt-journey.jpg
│   └── shared/
│       ├── author-headshot.jpg
│       └── logo.png
├── chapter-01/
│   ├── fig-01-budget-flowchart.png
│   ├── fig-02-celebration.jpg
│   ├── fig-03-comparison-chart.png
│   └── metadata.yaml
└── chapter-02/
    ├── fig-01-debt-snowball.png
    ├── fig-02-interest-graph.png
    └── metadata.yaml
```

**Workflow:**
1. visual-designer erstellt Visual Plan
2. Autor stellt eigene Bilder in `author-provided/` bereit (optional)
3. Fehlende Bilder werden generiert/beschafft:
   - AI-generated (via Prompts)
   - Stock-Images (via Keywords)
   - Programmatically (Mermaid, Charts)
4. visual-designer optimiert und organisiert alle Bilder
5. visual-designer erstellt metadata.yaml
6. visual-designer embedded Visuals in Kapitel Markdown

### `/workbooks/` - Begleitende Workbooks (Optional)

**Erstellt von:** workbook-developer
**Dateien:**
- `workbook-outline.yaml` - Struktur des Workbooks
- `workbook-draft.md` - Ausformulierter Inhalt

**Inhalt:**
- Kompakte Zusammenfassungen aus dem Buch
- Zusätzliche Übungen
- Arbeitsblätter zum Ausfüllen
- Tracking-Tools
- Reflexions-Prompts

### `/publishing/` - Publikations-Strategie (Optional)

**Erstellt von:** publishing-strategist
**Dateien:**
- `launch-plan.yaml` - Detaillierter Launch-Plan
- `marketing-strategy.md` - Marketing-Ansatz
- `distribution-channels.md` - Vertriebs-Strategie

**Inhalt:**
- Pricing-Strategie
- Launch-Timeline
- Marketing-Channels
- Distribution-Planung
- Promotional-Materialien

## Workflow & Datei-Lifecycle

### Phase 1: Strategie & Planung
```
book-strategist → book-blueprint.yaml
researcher → source-materials-inventory.yaml + source-materials/*
learning-architect → learning-framework.yaml
content-structurer → book-structure.yaml
content-structurer → outlines/chapter-*.yaml
```

### Phase 2: Content Creation (Pro Kapitel)
```
exercise-designer → resources/exercises/exercise-*.md
case-study-curator → resources/case-studies/case-study-*.md
book-author → chapters/chapter-*.md
```

### Phase 3: Fact-Checking & Visual Design (Pro Kapitel) **NEW!**
```
fact-checker → resources/fact-checks/chapter-*-facts.md
fact-checker → resources/sources/chapter-*-sources.md
book-author → Revises chapter based on fact-check feedback (optional)
visual-designer → resources/visuals/chapter-*-visual-plan.md
author → Provides images to resources/images/author-provided/ (optional)
visual-designer → resources/images/chapter-*/fig-*.{png|jpg}
visual-designer → Embeds visuals in chapter Markdown
```

### Phase 4: Quality Assurance (Pro Kapitel)
```
lector → reviews/review-chapter-*.yaml
book-author → chapters/chapter-*-draft-v2.md (Revision)
lector → reviews/review-chapter-*-v2.yaml (Re-review)
... (Iterativ bis Approval)
```

### Phase 5: Enhancement (Optional)
```
clarity-editor → Verbesserte Versionen in chapters/
workbook-developer → workbooks/*
```

### Phase 6: Publikation
```
publishing-strategist → publishing/*
```

## Naming Conventions

### Dateien
- **Kapitel Outlines:** `chapter-{number}-outline.yaml` (z.B. `chapter-01-outline.yaml`)
- **Kapitel:** `chapter-{number}.md` (z.B. `chapter-03.md`)
- **Revisionen:** `chapter-{number}-v{version}.md` (z.B. `chapter-03-v2.md`)
- **Reviews:** `review-chapter-{number}.yaml` oder `review-chapter-{number}-v{version}.yaml`
- **Übungen:** `exercise-{descriptive-name}.md` (z.B. `exercise-budget-planning.md`)
- **Case Studies:** `case-study-{descriptive-name}.md` (z.B. `case-study-debt-freedom.md`)

### Versionierung
- Initiale Version: Keine Versionsnummer
- Nach erstem Review: `-v2`
- Nach zweitem Review: `-v3`
- Etc.

## Git-Workflow für Buch-Inhalte

### Was committen?
✅ **Committen:**
- Alle YAML-Dateien (Blueprints, Frameworks, Outlines, Reviews)
- Alle Chapter-Markdown-Dateien (chapters/)
- Alle Resources (Exercises, Case Studies, Examples, Templates)
- Workbooks
- Publishing Materialien

❌ **NICHT committen:**
- `.bmad-expert-author/` (Installation des Expansion Packs)
- `.claude/` (Claude Code Integration)
- Temporäre Dateien
- Editor-spezifische Dateien

### Commit-Strategie

**WICHTIG:** Agenten committen automatisch nach jeder Änderung, ABER pushen NICHT automatisch.
Der User entscheidet selbst, wann zum Remote-Repository gepusht wird.

```bash
# Nach Completion eines Chapters (automatisch durch Agent)
git add book-blueprint.yaml learning-framework.yaml
git add outlines/chapter-01-outline.yaml
git add chapters/chapter-01.md
git add resources/exercises/exercise-*.md
git commit -m "Add chapter 1 with exercises"
# Kein automatischer Push - User pusht manuell wann gewünscht

# Nach Lector Review (automatisch durch Agent)
git add reviews/review-chapter-01.yaml
git commit -m "Add lector review for chapter 1"
# Kein automatischer Push

# Nach Revision (automatisch durch Agent)
git add chapters/chapter-01-v2.md
git commit -m "Revise chapter 1 based on lector feedback"
# Kein automatischer Push

# User kann jederzeit manuell pushen:
git push
```

## Wichtige Hinweise

1. **Struktur ist flexibel:** Die beschriebene Struktur ist eine Empfehlung. Sie können Unterverzeichnisse nach Bedarf anpassen.

2. **Versionierung:** Nutzen Sie Git für Versionskontrolle statt `-v2`, `-v3` Suffixe, wenn Sie möchten.

3. **Backup:**
   - **Auto-Commit:** Agenten committen automatisch nach jeder Änderung
   - **Manueller Push:** Sie entscheiden selbst, wann Sie zum Remote pushen
   - Pushen Sie regelmäßig - Ihr Buch-Projekt ist wertvoll!

4. **Markdown vs. YAML:**
   - YAML für strukturierte Daten (Blueprints, Outlines, Reviews)
   - Markdown für ausformulierten Text (Drafts, Exercises, Case Studies)

5. **Expansion Pack Source vs. Buch-Inhalte:**
   - `expansion-packs/bmad-expert-author/` = Source Code des Expansion Packs
   - Projekt-Root (diese Struktur) = Ihr Buch-Inhalt

6. **Große Dateien aufteilen:**
   - Nutzen Sie `/BMad:agents:ea-shard` für Dokumente >500 Zeilen
   - Erstellt Unterverzeichnisse mit modularen Dateien (z.B. `docs/learning-framework/`)
   - Siehe Abschnitt "Document Sharding" unten

---

## Document Sharding mit EA-Shard Agent

### Wann verwenden?

Verwenden Sie den **ea-shard** Agent, wenn:
- Dokumente >500 Zeilen werden
- Claude Code Performance leidet
- Dokumente schwer wartbar werden
- Modulare Organisation gewünscht ist

### Typische Kandidaten

```
docs/
├── learning-framework.md     (1242 Zeilen) → Sharden!
├── content-structure.md      (1045 Zeilen) → Sharden!
├── book-blueprint.md         (638 Zeilen)  → Sharden!
└── summary.md                (491 Zeilen)  → OK (unter Schwelle)
```

### Verwendung

**Einzelne Datei sharden:**
```bash
/BMad:agents:ea-shard
*shard docs/learning-framework.md
```

**Alle großen Dateien in docs/ sharden:**
```bash
/BMad:agents:ea-shard
*shard-all
```

**Struktur analysieren (Vorschau):**
```bash
/BMad:agents:ea-shard
*analyze docs/learning-framework.md
```

### Ergebnis-Struktur

Nach dem Sharding:

```
docs/
├── learning-framework/          # Modular aufgeteilt
│   ├── README.md               # Master Index mit Navigation
│   ├── instructional-approach.md
│   ├── learning-progression.md
│   ├── outcomes-by-chapter.md
│   ├── exercise-design.md
│   ├── assessments.md
│   └── resources.md
│
└── content-structure/           # Modular aufgeteilt
    ├── README.md
    ├── architecture-overview.md
    ├── chapter-01-introduction.md
    ├── chapter-02-history.md
    └── ...
```

### Vorteile

- **Performance:** Kleinere Dateien = schnelleres Laden
- **Navigation:** README.md bietet Übersicht und Quick-Links
- **Wartbarkeit:** Logische Module einfacher zu bearbeiten
- **Skalierbarkeit:** Wächst mit Projekt ohne Performance-Einbußen

### Wichtig

- **Semantische Namen:** Dateien haben sprechende Namen (nicht `module-01.md`)
- **Erhalt:** Alle Inhalte bleiben erhalten (nichts geht verloren)
- **Original gelöscht:** Original-Dateien werden gelöscht (Git bewahrt History)
- **Master Index:** Jedes Verzeichnis hat `README.md` mit Navigation
- **Git Recovery:** Original jederzeit wiederherstellbar via `git checkout HEAD~1 -- docs/datei.md`

---

**Letzte Aktualisierung:** 2025-10-29
**Version:** 1.1
