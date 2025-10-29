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
├── drafts/                          # Geschriebene Inhalte
│   ├── chapter-01-draft.md
│   ├── chapter-02-draft.md
│   ├── chapter-03-draft.md
│   ├── introduction-draft.md
│   ├── conclusion-draft.md
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
│   └── templates/
│       ├── worksheet-monthly-budget.md
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
**Erstellt von:** researcher (Dr. Lena Kowalski)
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

### `/drafts/` - Geschriebene Inhalte

**Erstellt von:** book-author
**Dateien:** `chapter-{number}-draft.md` oder `{section-name}-draft.md`

**Inhalt:**
- Vollständig ausformulierte Kapitel
- In Markdown-Format
- Basierend auf den Chapter Outlines
- Inklusive integrierter Übungen und Beispiele

**Workflow:**
1. book-author schreibt basierend auf Outline
2. Speichert als Draft
3. lector reviewed den Draft
4. book-author überarbeitet
5. Iterative Verbesserung bis Approval

**Beispiel:**
```
drafts/
├── introduction-draft.md
├── chapter-01-draft.md         # Version nach lector Review
├── chapter-01-draft-v2.md      # Überarbeitete Version
├── chapter-02-draft.md
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
book-author → drafts/chapter-*-draft.md
```

### Phase 3: Quality Assurance (Pro Kapitel)
```
lector → reviews/review-chapter-*.yaml
book-author → drafts/chapter-*-draft-v2.md (Revision)
lector → reviews/review-chapter-*-v2.yaml (Re-review)
... (Iterativ bis Approval)
```

### Phase 4: Enhancement (Optional)
```
clarity-editor → Verbesserte Versionen in drafts/
workbook-developer → workbooks/*
```

### Phase 5: Publikation
```
publishing-strategist → publishing/*
```

## Naming Conventions

### Dateien
- **Kapitel Outlines:** `chapter-{number}-outline.yaml` (z.B. `chapter-01-outline.yaml`)
- **Kapitel Drafts:** `chapter-{number}-draft.md` (z.B. `chapter-03-draft.md`)
- **Revisionen:** `chapter-{number}-draft-v{version}.md` (z.B. `chapter-03-draft-v2.md`)
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
- Alle Markdown-Drafts
- Alle Resources (Exercises, Case Studies, Examples, Templates)
- Workbooks
- Publishing Materialien

❌ **NICHT committen:**
- `.bmad-expert-author/` (Installation des Expansion Packs)
- `.claude/` (Claude Code Integration)
- Temporäre Dateien
- Editor-spezifische Dateien

### Commit-Strategie
```bash
# Nach Completion eines Chapter Drafts
git add book-blueprint.yaml learning-framework.yaml
git add outlines/chapter-01-outline.yaml
git add drafts/chapter-01-draft.md
git add resources/exercises/exercise-*.md
git commit -m "Add chapter 1 draft with exercises"
git push

# Nach Lector Review
git add reviews/review-chapter-01.yaml
git commit -m "Add lector review for chapter 1"
git push

# Nach Revision
git add drafts/chapter-01-draft-v2.md
git commit -m "Revise chapter 1 based on lector feedback"
git push
```

## Wichtige Hinweise

1. **Struktur ist flexibel:** Die beschriebene Struktur ist eine Empfehlung. Sie können Unterverzeichnisse nach Bedarf anpassen.

2. **Versionierung:** Nutzen Sie Git für Versionskontrolle statt `-v2`, `-v3` Suffixe, wenn Sie möchten.

3. **Backup:** Committen und pushen Sie regelmäßig - Ihr Buch-Projekt ist wertvoll!

4. **Markdown vs. YAML:**
   - YAML für strukturierte Daten (Blueprints, Outlines, Reviews)
   - Markdown für ausformulierten Text (Drafts, Exercises, Case Studies)

5. **Expansion Pack Source vs. Buch-Inhalte:**
   - `expansion-packs/bmad-expert-author/` = Source Code des Expansion Packs
   - Projekt-Root (diese Struktur) = Ihr Buch-Inhalt

---

**Letzte Aktualisierung:** 2025-10-29
**Version:** 1.0
