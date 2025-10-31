# Resources - Projekt-Ressourcen

**Zweck:** Sammlung aller FERTIGEN Materialien, die während des Buchprojekts erstellt werden und direkt in Kapiteln verwendet werden.

**Wann verwenden:** Während und nach der Content Creation Phase.

---

## Was gehört hierher?

Alle Materialien, die **während des Buchprojekts entstehen** und fertig für die Verwendung sind:

✅ Übungen und Arbeitsblätter
✅ Case Studies und Erfolgsgeschichten
✅ Praktische Beispiele
✅ Templates und Frameworks
✅ Fact-Check Reports
✅ Quellenverzeichnisse
✅ Visual Plans
✅ Finale Bilder und Diagramme

---

## Verzeichnisstruktur

### `/exercises/` - Übungen und Arbeitsblätter

**Erstellt von:** Exercise Designer Agent

Fertige, ausformulierte Übungen für dein Buch:

```
exercises/
├── exercise-budget-planning.md
├── exercise-debt-prioritization.md
├── exercise-goal-setting.md
└── worksheet-monthly-expenses.md
```

**Inhalt jeder Übung:**
- Titel & Lernziel
- Benötigte Zeit & Materialien
- Schritt-für-Schritt Anleitung
- Beispiel-Lösungen
- Reflexionsfragen

**Verwendung:**
- Book Author integriert in Kapitel
- Workbook Developer nutzt für Companion Workbook
- Direkte Verlinkung in Markdown: `../resources/exercises/exercise-budget-planning.md`

---

### `/case-studies/` - Fallstudien und Erfolgsgeschichten

**Erstellt von:** Case Study Curator Agent

Vollständig ausgearbeitete Case Studies:

```
case-studies/
├── case-study-maria-debt-freedom.md
├── case-study-tom-first-investment.md
└── case-study-lisa-passive-income.md
```

**Inhalt jeder Case Study:**
- Protagonist & Ausgangssituation
- Herausforderungen & Hindernisse
- Angewandte Strategien (aus deinem Buch)
- Konkrete Ergebnisse
- Lektionen für Leser

**Verwendung:**
- Book Author webt in Kapitel ein
- Reader Motivation Agent nutzt für narrative Elemente
- Lector prüft Relevanz und Wirkung

---

### `/examples/` - Praktische Beispiele

**Erstellt von:** Book Author oder Case Study Curator

Konkrete Beispiele und Szenarien:

```
examples/
├── example-budget-template.md
├── example-debt-calculation.md
└── example-investment-comparison.md
```

**Beispiel-Typen:**
- Ausgefüllte Templates
- Schritt-für-Schritt Berechnungen
- Vorher/Nachher Vergleiche
- Typische Szenarien

**Verwendung:**
- Direktes Einbetten in Kapitel
- Als Illustration von Konzepten
- Als Vorlagen für Leser

---

### `/templates/` - Vorlagen und Frameworks

**Erstellt von:** Exercise Designer oder Workbook Developer

Wiederverwendbare Vorlagen für Leser:

```
templates/
├── worksheet-monthly-budget.md
├── template-goal-planning.md
└── framework-decision-making.md
```

**Was sind Templates:**
- Ausfüll-Vorlagen
- Planungstools
- Frameworks zum Anwenden
- Checklisten

**Verwendung:**
- Leser füllen aus während der Lektüre
- Können als Downloads angeboten werden
- Teil des Workbooks

---

### `/fact-checks/` - Fact-Check Reports

**Erstellt von:** Fact Checker Agent (Viktor)

Verifikations-Reports für Kapitel:

```
fact-checks/
├── chapter-01-facts.md
├── chapter-02-facts.md
└── chapter-03-facts.md
```

**Inhalt:**
- Liste aller faktischen Claims im Kapitel
- Verifikationsstatus (✅ Verified / ⚠️ Needs Adjustment / ❌ Unverified)
- Primärquellen mit vollständigen Zitaten
- Genauigkeitsbewertung
- Empfohlene Revisionen

**Verwendung:**
- Book Author reviewed und revidiert Kapitel
- Lector prüft wissenschaftliche Korrektheit
- Basis für Bibliographie

---

### `/sources/` - Quellenverzeichnisse

**Erstellt von:** Fact Checker Agent (Viktor)

Bibliographien pro Kapitel:

```
sources/
├── chapter-01-sources.md
├── chapter-02-sources.md
└── chapter-03-sources.md
```

**Inhalt:**
- Vollständige formatierte Bibliographie
- Strukturiert nach Quellentyp
- DOI/URL zu Originalquellen
- Zugriffsdaten
- Lizenz-Notizen

**Verwendung:**
- Wird in Kapitel referenziert ([^1], [^2])
- Basis für finale Bibliographie des Buches
- Nachweis für wissenschaftliche Korrektheit

---

### `/visuals/` - Visual Plans

**Erstellt von:** Visual Designer Agent (Vera)

Visueller Gestaltungsplan pro Kapitel:

```
visuals/
├── chapter-01-visual-plan.md
├── chapter-02-visual-plan.md
└── chapter-03-visual-plan.md
```

**Inhalt:**
- Analyse aller Visualisierungsmöglichkeiten
- Platzierungsempfehlungen
- Bild-Kategorien (Photo, Diagram, Chart, etc.)
- AI Image Generation Prompts
- Stock Image Keywords
- Mermaid Diagramm-Code
- Accessibility Requirements

**Verwendung:**
- Roadmap für Visual Designer
- Autor reviewed und approved
- Basis für Bild-Generierung/Sourcing

---

### `/images/` - Bilder und Visuals

**Erstellt von:** Visual Designer Agent + DU

Finale, organisierte Bilder für das Buch:

```
images/
├── author-provided/        # VON DIR bereitgestellt
│   ├── chapter-01/
│   │   └── personal-budget-photo.jpg
│   ├── chapter-02/
│   │   └── debt-journey.jpg
│   └── shared/            # Wiederverwendbar
│       ├── headshot.jpg
│       └── logo.png
├── chapter-01/            # Finale organisierte Bilder
│   ├── fig-01-budget-flowchart.png
│   ├── fig-02-savings-chart.png
│   └── metadata.yaml
├── chapter-02/
│   ├── fig-01-debt-snowball.png
│   └── metadata.yaml
└── ...
```

#### `/images/author-provided/` - Deine Bilder

**Was du hier ablegst:**

1. **Kapitel-spezifische Bilder:**
   ```
   author-provided/chapter-01/
   ├── my-budget-screenshot.png
   └── expense-tracker-photo.jpg
   ```

2. **Wiederverwendbare Assets:**
   ```
   author-provided/shared/
   ├── headshot-professional.jpg
   ├── logo-transparent.png
   └── signature.png
   ```

**Workflow:**
1. Visual Designer erstellt Visual Plan: `*plan-visuals 1`
2. Visual Designer sagt dir, welche Bilder benötigt werden
3. **DU legst Bilder in `author-provided/chapter-XX/` ab**
4. Visual Designer organisiert: `*organize-author-images`
5. Visual Designer verschiebt zu `images/chapter-XX/` mit korrektem Naming
6. Visual Designer bettet ein: `*embed-visuals 1`

#### `/images/chapter-XX/` - Finale Bilder

**Erstellt von:** Visual Designer (automatisch)

Nach Organisierung und Optimierung:

```
images/chapter-01/
├── fig-01-budget-flowchart.png      # Von Mermaid generiert
├── fig-02-celebration.jpg           # Von dir oder AI
├── fig-03-comparison-chart.png      # Programmatisch erstellt
└── metadata.yaml                    # Metadaten aller Bilder
```

**Naming Convention:**
- Format: `fig-{NN}-{descriptive-name}.{ext}`
- `NN` = Sequentielle Nummer im Kapitel
- Descriptive name = kebab-case

**metadata.yaml Beispiel:**
```yaml
images:
  - filename: fig-01-budget-flowchart.png
    type: diagram
    source: Generated via Mermaid
    alt_text: "Flowchart showing 5-step budget creation"
    caption: "Figure 1.1: Budget creation workflow"
    created: 2024-01-15
    license: Author-created
```

**Verwendung in Kapiteln:**
```markdown
![Alt text](../resources/images/chapter-01/fig-01-budget-flowchart.png)

*Abbildung 1.1: Budget-Erstellungsprozess in 5 Schritten*
```

---

## Unterschied zu `source-materials/`

| `source-materials/` | `resources/` |
|---------------------|--------------|
| **Input** - Was du bereits hast | **Output** - Was während Projekt entsteht |
| Roh-Materialien, unorganisiert | Fertige, strukturierte Elemente |
| Katalogisierung & Inspiration | Direkte Verwendung in Kapiteln |
| Zu Beginn | Während Content Creation |
| Bleibt unverändert | Wird aktiv verwendet & editiert |

---

## Workflow pro Kapitel

```
1. Book Author schreibt Kapitel-Draft
        ↓
2. Exercise Designer erstellt → resources/exercises/
        ↓
3. Case Study Curator erstellt → resources/case-studies/
        ↓
4. Fact Checker prüft → resources/fact-checks/ & resources/sources/
        ↓
5. Visual Designer plant → resources/visuals/
        ↓
6. DU stellst Bilder bereit → resources/images/author-provided/chapter-XX/
        ↓
7. Visual Designer organisiert → resources/images/chapter-XX/
        ↓
8. Visual Designer bettet ein in chapters/chapter-XX.md
        ↓
9. Lector reviewed gesamtes Kapitel inkl. Resources
```

---

## Wichtige Hinweise für Autoren

### Wann legst DU etwas in resources/ ab?

**Nur bei Bildern:**
- Lege finale Bilder in `resources/images/author-provided/chapter-XX/` ab
- Lege wiederverwendbare Assets in `resources/images/author-provided/shared/` ab
- **NACH** Visual Designer dir sagt, was benötigt wird

**Alle anderen Verzeichnisse:**
- Werden von Agenten erstellt
- Du musst NICHTS manuell ablegen
- Du reviewst und approved nur

### ✅ Do's

- Warte auf Visual Designer bevor du Bilder ablegst
- Nutze `author-provided/` für deine eigenen Bilder
- Behalte Originale (werden von Visual Designer optimiert)
- Überprüfe `metadata.yaml` auf Korrektheit

### ❌ Don'ts

- Nicht direkt in `images/chapter-XX/` ablegen (Visual Designer organisiert)
- Nicht Exercises/Case Studies selbst schreiben (Agenten übernehmen)
- Nicht `metadata.yaml` manuell editieren (Visual Designer erstellt)
- Nicht Fact-Checks selbst durchführen (Fact Checker übernimmt)

---

## Häufige Fragen

**Q: Muss ich Übungen selbst in resources/exercises/ erstellen?**
A: Nein! Exercise Designer Agent erstellt diese automatisch basierend auf Chapter Outline.

**Q: Wo lege ich meine Bilder ab?**
A: In `resources/images/author-provided/chapter-XX/` NACHDEM Visual Designer den Visual Plan erstellt hat.

**Q: Kann ich eigene Case Studies schreiben?**
A: Ja, aber besser: Lege Roh-Stories in `source-materials/stories/` ab. Case Study Curator formt sie professionell.

**Q: Was ist der Unterschied zwischen examples/ und templates/?**
A: Examples = Ausgefüllte Beispiele zur Illustration. Templates = Leere Vorlagen zum Ausfüllen durch Leser.

**Q: Werden resources/ committet?**
A: Ja! Alles in `resources/` wird versioniert (außer temporäre Dateien).

**Q: Kann ich resources/ manuell editieren?**
A: Grundsätzlich ja, aber besser via Agenten. Manuelle Edits könnten überschrieben werden.

---

## Git-Workflow

**Was wird committet:**
```bash
✅ resources/exercises/
✅ resources/case-studies/
✅ resources/examples/
✅ resources/templates/
✅ resources/fact-checks/
✅ resources/sources/
✅ resources/visuals/
✅ resources/images/
```

**Auto-Commit:**
Agenten committen automatisch nach Erstellung von Resources (aber pushen NICHT automatisch).

---

**Bereit, hochwertige Ressourcen zu erstellen?**

Lass die Agenten die Arbeit machen - du konzentrierst dich aufs Schreiben! 📝
