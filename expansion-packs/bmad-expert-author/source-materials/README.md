# Source Materials - Quellmaterialien

**Zweck:** Sammlung ALLER bestehenden Materialien und Inhalte, die du als Autor bereits erstellt hast. Dies ist dein Input-Verzeichnis für das Buchprojekt.

**Wann verwenden:** Ganz zu Beginn, VOR oder WÄHREND der Erstellung des Book Blueprints.

---

## Was gehört hierher?

Alle Materialien, die du **bereits hast** und die als Grundlage für dein Buch dienen können:

✅ Artikel, Blogposts, Fachartikel
✅ Präsentationen, Slide Decks
✅ Kursmaterialien, Trainings
✅ Studien, Research Papers
✅ Persönliche Geschichten, Fallbeispiele
✅ Bestehende Übungen, Worksheets
✅ Bilder, Diagramme, Videos
✅ DOCX, PDF, HTML Dateien (werden automatisch konvertiert)

---

## Verzeichnisstruktur

### `/author-content/` - Deine eigenen Inhalte

Alle Materialien, die **du selbst erstellt** hast:

```
author-content/
├── articles/            # Artikel, Blogposts, Fachartikel, Essays
├── books/              # Bisherige Bücher, E-Books, Publikationen
├── presentations/      # Präsentationen, Slide Decks, Vorträge
├── courses/            # Kursmaterialien, Lernprogramme, Curricula
└── videos/             # Video/Audio Content, Webinar-Aufnahmen, Transcripts
```

**Beispiele:**
- `articles/2023-budgeting-guide.docx` - Dein Blogartikel über Budget
- `books/financial-freedom-ebook.pdf` - Dein bisheriges E-Book
- `presentations/workshop-2024.pptx` - Deine Workshop-Präsentation
- `courses/online-kurs-finanzplanung/` - Deine Kursmaterialien
- `videos/webinar-transcript.txt` - Transkript deines Webinars

**Was passiert:**
- Book Strategist konvertiert DOCX/PDF automatisch zu Markdown
- Researcher katalogisiert alle Inhalte
- Insights fließen in Book Blueprint ein

---

### `/references/` - Referenzmaterialien

Fremde Materialien, die als **Quellen und Referenzen** dienen:

```
references/
├── books/              # Bücher, Fachpublikationen (Mitbewerber, Inspiration)
├── studies/            # Studien, Research Papers, wissenschaftliche Arbeiten
└── articles/           # Fachartikel, Whitepapers, Analysen
```

**Beispiele:**
- `books/rich-dad-poor-dad-notes.md` - Notizen zu Mitbewerber-Buch
- `studies/behavioral-finance-2023.pdf` - Relevante Studie
- `articles/harvard-investment-strategy.pdf` - Fachartikel

**Was passiert:**
- Researcher katalogisiert als Referenzen
- Fact Checker kann später auf Quellen zugreifen
- Hilft bei Marktanalyse und Positioning

---

### `/stories/` - Geschichten und Beispiele

Persönliche Stories und Fallbeispiele für dein Buch:

```
stories/
├── personal-journey/   # Deine persönliche Transformations-Geschichte
├── client-cases/       # Anonymisierte Kunden-Erfolgsgeschichten
└── examples/           # Praktische Beispiele, Szenarien
```

**Beispiele:**
- `personal-journey/my-debt-story.md` - Deine persönliche Schuldenreise
- `client-cases/maria-financial-freedom.md` - Erfolgsgeschichte einer Kundin
- `examples/budget-fail-to-success.md` - Beispiel aus deiner Praxis

**Was passiert:**
- Case Study Curator verarbeitet zu vollständigen Case Studies
- Reader Motivation Agent nutzt für narrative Elemente
- Book Author webt in Kapitel ein

---

### `/existing-exercises/` - Vorhandene Übungen

Übungen, Worksheets und Tools, die du bereits entwickelt hast:

```
existing-exercises/
├── worksheets/         # Arbeitsblätter, Ausfüll-Vorlagen
├── templates/          # Vorlagen, Frameworks, Planungstools
└── tools/              # Rechner, Tools, interaktive Elemente
```

**Beispiele:**
- `worksheets/monthly-budget-template.xlsx` - Dein Budget-Template
- `templates/goal-setting-framework.pdf` - Dein Zielsetzungs-Framework
- `tools/debt-calculator.js` - Dein Schulden-Rechner

**Was passiert:**
- Exercise Designer adaptiert für Buch-Format
- Workbook Developer integriert in Companion Workbook
- Book Author referenziert in Kapiteln

---

### `/media/` - Medien-Assets

Bilder, Diagramme und Videos, die du bereits hast:

```
media/
├── images/             # Fotos, Screenshots, Illustrationen
├── diagrams/           # Diagramme, Infografiken, Visualisierungen
└── videos/             # Video-Dateien, Screencasts
```

**Beispiele:**
- `images/workshop-photos/` - Fotos von deinen Workshops
- `diagrams/budget-process-flowchart.png` - Dein Prozess-Diagramm
- `videos/tutorial-clips/` - Video-Snippets aus deinen Tutorials

**Was passiert:**
- Researcher katalogisiert verfügbare Medien
- Visual Designer kann später darauf zugreifen
- Material für `resources/images/author-provided/` (finale Verwendung)

---

## Wie lege ich Dateien ab?

### Schritt 1: Erstelle Verzeichnisse

```bash
# Navigiere zu deinem Buchprojekt
cd ~/mein-buch-projekt

# Erstelle die Struktur (oder nur die Teile, die du brauchst)
mkdir -p source-materials/author-content/articles
mkdir -p source-materials/author-content/books
mkdir -p source-materials/author-content/presentations
mkdir -p source-materials/author-content/courses
mkdir -p source-materials/author-content/videos
mkdir -p source-materials/references/books
mkdir -p source-materials/references/studies
mkdir -p source-materials/references/articles
mkdir -p source-materials/stories/personal-journey
mkdir -p source-materials/stories/client-cases
mkdir -p source-materials/stories/examples
mkdir -p source-materials/existing-exercises/worksheets
mkdir -p source-materials/existing-exercises/templates
mkdir -p source-materials/existing-exercises/tools
mkdir -p source-materials/media/images
mkdir -p source-materials/media/diagrams
mkdir -p source-materials/media/videos
```

### Schritt 2: Kopiere deine Dateien

```bash
# Beispiel: Kopiere deine Blogartikel
cp ~/meine-artikel/*.docx source-materials/author-content/articles/

# Beispiel: Kopiere deine Präsentationen
cp ~/workshop-materialien/*.pptx source-materials/author-content/presentations/

# Beispiel: Kopiere Bilder
cp -r ~/meine-fotos/workshops/ source-materials/media/images/
```

### Schritt 3: Lasse die Agenten arbeiten

```bash
# Aktiviere Book Strategist
/BMad-ea:agents:book-strategist

# Erstelle Book Blueprint (konvertiert automatisch DOCX/PDF)
*create-blueprint
```

---

## Automatische Konvertierung

**Unterstützte Formate:**
- ✅ **DOCX** (Word) → Markdown
- ✅ **PDF** (Text-Extraktion) → Markdown
- ✅ **HTML** → Markdown
- ✅ **TXT** → Markdown (direkt)

**Was passiert automatisch:**

1. Book Strategist erkennt Dateien in `source-materials/`
2. Konvertiert DOCX/PDF/HTML → Markdown
3. Speichert in `processed-materials/`
4. Liest konvertierte Inhalte
5. Integriert Insights in Book Blueprint

**Beispiel:**
```
source-materials/author-content/articles/budgeting-tips.docx
                ↓ (automatische Konvertierung)
processed-materials/author-content/articles/budgeting-tips.md
```

---

## Unterschied zu `resources/`

| `source-materials/` | `resources/` |
|---------------------|--------------|
| **Input** - Was du bereits hast | **Output** - Was während Buchprojekt entsteht |
| Unorganisiert OK | Strukturiert nach Kapiteln |
| Roh-Materialien | Finale, fertige Elemente |
| Katalogisierung & Inspiration | Direkte Verwendung in Kapiteln |
| Zu Beginn des Projekts | Während Content Creation |

**Beispiel-Fluss:**
```
source-materials/stories/client-cases/maria-story.md
        ↓ (Case Study Curator verarbeitet)
resources/case-studies/case-study-maria-debt-freedom.md
        ↓ (Book Author integriert)
chapters/chapter-03.md (Maria's Story als Beispiel)
```

---

## Wichtige Hinweise

### ✅ Do's

- Lege ALLE bestehenden Materialien ab, auch wenn du dir nicht sicher bist
- Nutze Unterverzeichnisse nach Belieben (z.B. `articles/2023/`, `articles/2024/`)
- DOCX/PDF Dateien sind OK - werden automatisch konvertiert
- Auch unvollständige Materialien sind wertvoll
- Halte Original-Dateien hier (werden nicht gelöscht)

### ❌ Don'ts

- Nicht sortieren oder umbenennen bevor du ablegst (Researcher macht das)
- Nicht manuell zu Markdown konvertieren (passiert automatisch)
- Nicht in `resources/` ablegen (das ist für Output)
- Nicht löschen nach Verarbeitung (bleibt als Backup)

---

## Workflow-Übersicht

```
1. DU legst Materialien in source-materials/ ab
        ↓
2. Book Strategist konvertiert DOCX/PDF → Markdown
        ↓
3. Researcher katalogisiert in source-materials-inventory.yaml
        ↓
4. Verschiedene Agenten greifen auf Material zu:
   - Book Strategist: Für Book Blueprint Insights
   - Case Study Curator: Für Stories → resources/case-studies/
   - Exercise Designer: Für Übungen → resources/exercises/
   - Visual Designer: Für Medien → resources/images/
        ↓
5. Material wird transformiert und in resources/ verwendet
        ↓
6. source-materials/ bleibt unverändert (Backup & Referenz)
```

---

## Häufige Fragen

**Q: Muss ich alle Unterverzeichnisse erstellen?**
A: Nein, nur die, die du brauchst. Wenn du keine Kursmaterialien hast, lass `courses/` weg.

**Q: Kann ich eigene Unterverzeichnisse erstellen?**
A: Ja! Z.B. `articles/finance/`, `articles/productivity/` ist völlig OK.

**Q: Was passiert mit meinen Original-Dateien?**
A: Sie bleiben unverändert. Konvertierte Versionen landen in `processed-materials/`.

**Q: Muss ich vor dem Book Blueprint ALLES ablegen?**
A: Nein, du kannst auch später Material hinzufügen. Researcher kann jederzeit neu katalogisieren.

**Q: Was ist mit passwortgeschützten PDFs?**
A: Entferne den Schutz vorher oder konvertiere manuell zu Text.

**Q: Werden Video-Dateien verarbeitet?**
A: Video-Dateien werden nur katalogisiert, nicht konvertiert. Lege Transkripte als TXT/DOCX ab.

---

**Bereit, deine Materialien zu sammeln?**

Lege einfach alle deine bestehenden Inhalte hier ab und lass die Agenten die Arbeit machen! 📚
