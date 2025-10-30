# BMAD Expert Author - Projektkontext für Claude Code

## Projektübersicht

Dieses Projekt ist ein **BMAD Expert Author Expansion Pack** - eine Erweiterung des BMAD-METHOD™ Frameworks, das spezialisierte KI-Agenten für die Erstellung transformativer Sachbücher bereitstellt.

### Dual-Use Projekt

**WICHTIG:** Dieses Projekt hat zwei verschiedene Verwendungszwecke:

#### 1. Expansion Pack Entwicklung (Source Code)
- Entwicklung und Wartung des Expansion Packs selbst
- Änderungen erfolgen in `expansion-packs/bmad-expert-author/`
- Diese Dateien werden in Git versioniert
- Nach Änderungen MUSS `make install` ausgeführt werden

#### 2. Buch-Schreiben (User Mode)
- Nutzer verwenden die installierten Agenten zum Schreiben ihrer Bücher
- Arbeiten mit den installierten Agenten in `.bmad-expert-author/`
- Erstellen Book Blueprints, Chapters, etc. im Projekt-Root
- `.bmad-expert-author/` wird NICHT in Git versioniert

### Zweck
Das Expansion Pack unterstützt Autoren beim Schreiben hochwertiger Bildungs-Sachbücher, die Lesern praktische Fähigkeiten vermitteln. Es kombiniert:
- Erzählende Elemente
- Praktische Übungen
- Bewährte Lernmethoden (ADDIE-Modell)

### Zielgruppe
Autoren von Sachbüchern zu Themen wie:
- Finanzielle Bildung
- Produktivität und Zeitmanagement
- Kommunikationsfähigkeiten
- Gesundheit und Transformation
- Kreative Fähigkeiten
- Business-Skills

## Projektstruktur

```
ki-agent/
├── .bmad-core/                    # BMAD Core Framework (installiert)
├── .bmad-expert-author/           # Installiertes Expansion Pack (ignoriert in Git)
├── .claude/                       # Claude Code Konfiguration
│   └── commands/BMad/agents/      # Slash Commands für Agenten
├── expansion-packs/               # SOURCE CODE (im Git versioniert)
│   └── bmad-expert-author/        # Expansion Pack Source (HIER entwickeln!)
│       ├── agents/                # 11 spezialisierte Agenten
│       ├── tasks/                 # Task-Workflows
│       ├── templates/             # Dokumentvorlagen
│       ├── checklists/            # Qualitätschecklisten
│       ├── data/                  # Referenzdaten (ADDIE, etc.)
│       ├── workflows/             # Vollständige Workflow-Guides
│       └── README.md              # Hauptdokumentation
├── scripts/                       # Installation Scripts
│   └── install-expansion-pack.sh  # Kopiert von expansion-packs/ nach .bmad-expert-author/
├── Makefile                       # Build & Installation (make install)
├── .gitignore                     # Git-Ignore-Konfiguration
└── CLAUDE.md                      # Diese Datei
```

**Wichtige Verzeichnisse:**

- `expansion-packs/bmad-expert-author/` - **SOURCE** (wird committet)
- `.bmad-expert-author/` - **INSTALLATION** (wird ignoriert)
- `.claude/commands/BMad/agents/` - **CLAUDE CODE INTEGRATION** (wird ignoriert)

## Verfügbare Agenten

Das Expansion Pack stellt folgende Agenten bereit:

### Strategische Planung
- **book-strategist** - Erstellt Book Blueprint Document (BBD)
- **publishing-strategist** - Plant Publikation und Launch

### Instruktionsdesign
- **learning-architect** - Entwickelt Learning Framework
- **skill-analyzer** - Zerlegt komplexe Fähigkeiten
- **content-structurer** - Organisiert Inhalte

### Content-Erstellung
- **book-author** - Schreibt Kapitel
- **exercise-designer** - Erstellt Übungen
- **case-study-curator** - Entwickelt Beispiele und Fallstudien

### Qualität & Verbesserung
- **lector** - Führt umfassende Qualitätsprüfungen durch
- **clarity-editor** - Optimiert Klarheit
- **workbook-developer** - Erstellt Workbooks

## Core Workflow

```
1. Book Strategist → Book Blueprint Document (BBD)
   ↓
2. Learning Architect → Learning Framework
   ↓
3. Content Structurer → Chapter Outlines
   ↓
4. Book Author → Content Writing
   ↓
5. Lector → Quality Review & Feedback Loop
```

## Installation & Build-System

Das Projekt verwendet ein Makefile für Installation und Updates:

```bash
make install     # Installiert das Expansion Pack
make help        # Zeigt verfügbare Befehle
```

### Was passiert bei `make install`?

1. Führt `scripts/install-expansion-pack.sh` aus
2. Kopiert alle Dateien von `expansion-packs/bmad-expert-author/` nach `.bmad-expert-author/`
3. Erstellt Claude Code Slash Commands in `.claude/commands/BMad/agents/`
4. Aktualisiert `.bmad-core/install-manifest.yaml`
5. Ist idempotent (kann mehrfach ausgeführt werden)

### Installationsfluss

```
expansion-packs/bmad-expert-author/  (SOURCE - im Git)
         ↓ (make install)
.bmad-expert-author/                 (INSTALLATION - ignoriert)
         ↓
.claude/commands/BMad/agents/        (CLAUDE INTEGRATION - ignoriert)
```

## Wichtige Arbeitsrichtlinien für Claude Code

### 0. Entwicklungsmodus vs. User-Modus (KRITISCH!)

**Erkenne den aktuellen Modus:**

#### Entwicklungsmodus (Expansion Pack Development)
**Wenn der User:**
- Agenten-Dateien bearbeitet/erstellt
- Templates anpasst
- Installation-Scripts ändert
- Dokumentation aktualisiert
- Das Expansion Pack selbst entwickelt

**Dann:**
1. Änderungen in `expansion-packs/bmad-expert-author/` vornehmen
2. `make install` ausführen um Installation zu aktualisieren
3. Änderungen committen und pushen

```bash
# Beispiel: Agent-Datei bearbeiten
# 1. Editiere expansion-packs/bmad-expert-author/agents/book-author.md
# 2. Installiere Updates
make install
# 3. Committe & Pushe
git add expansion-packs/bmad-expert-author/
git commit -m "Update book-author agent: Add new command

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"
git push
```

#### User-Modus (Book Writing)
**Wenn der User:**
- Ein Buch schreibt
- Book Blueprints erstellt
- Kapitel verfasst
- Mit Agenten arbeitet (aber nicht deren Code ändert)

**Dann:**
- Arbeite mit den installierten Agenten
- Erstelle/bearbeite Book-Dateien im Projekt-Root
- KEINE Änderungen an `expansion-packs/bmad-expert-author/`
- Committe automatisch nach jeder Änderung (aber NICHT pushen)
- Nur die Buch-Inhalte committen, NICHT das Expansion Pack

### 1. Git-Workflow (KRITISCH)

**Unterschiedliches Verhalten je nach Modus:**

#### Entwicklungsmodus (Expansion Pack Development):
**IMMER nach Änderungen committen UND pushen:**
```bash
# Nach jeder bedeutenden Änderung am Expansion Pack
git add expansion-packs/ scripts/ Makefile CLAUDE.md
git commit -m "Beschreibung der Änderung

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"
git push
```

#### User-Modus (Book Writing):
**IMMER nach Änderungen committen, ABER NICHT pushen:**
```bash
# Nach jeder Änderung an Buch-Inhalten (automatisch)
git add book-blueprint.yaml chapters/ drafts/ outlines/ reviews/ resources/
git commit -m "Beschreibung der Änderung

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"
# KEIN git push - User entscheidet selbst wann gepusht wird
```

**Wichtig:**
- Niemals Änderungen uncommitted lassen
- Immer aussagekräftige Commit-Messages verwenden
- **Entwicklungsmodus:** Push IMMER nach Commit durchführen
- **User-Modus:** NIEMALS automatisch pushen (User steuert Push-Zeitpunkt)
- Bei Pre-Commit-Hook-Änderungen: Commit mit --amend nur wenn sicher

### 2. Dateioperationen

**Bevorzuge:**
- `Read` statt `cat`
- `Edit` statt `sed/awk`
- `Write` nur für neue Dateien
- `Edit` für bestehende Dateien

**Niemals:**
- Bestehende Dateien mit `Write` überschreiben ohne vorher zu lesen
- Unnötige Dokumentationsdateien erstellen
- Dateien ohne Notwendigkeit neu erstellen

### 3. Projekt-spezifische Regeln

**Bei Änderungen an Expansion Pack (Entwicklungsmodus):**

1. **Agenten** (`expansion-packs/bmad-expert-author/agents/*.md`):
   - Änderungen in SOURCE vornehmen
   - `make install` ausführen
   - Prüfe Auswirkungen auf Workflows
   - Committe & Pushe

2. **Templates** (`expansion-packs/bmad-expert-author/templates/*.yaml`):
   - Änderungen in SOURCE vornehmen
   - Stelle YAML-Validität sicher
   - `make install` ausführen
   - Committe & Pushe

3. **Install-Script** (`scripts/install-expansion-pack.sh`):
   - Teste Idempotenz
   - Teste auf verschiedenen Plattformen
   - Committe & Pushe

4. **README.md** (`expansion-packs/bmad-expert-author/README.md`):
   - Halte Dokumentation synchron mit Code
   - `make install` ausführen (kopiert nach .bmad-expert-author/)
   - Committe & Pushe

**Workflow für Expansion Pack Änderungen:**
```bash
# 1. Ändere Dateien in expansion-packs/bmad-expert-author/
# 2. Installiere Updates
make install
# 3. Teste die Änderungen
# 4. Committe & Pushe
git add expansion-packs/ scripts/ Makefile CLAUDE.md
git commit -m "..."
git push
```

**Ignorierte Verzeichnisse (NIEMALS committen):**
- `.bmad-expert-author/` (Installation - wird von make install generiert)
- `.claude/` (Claude Code Integration - wird von make install generiert)
- `node_modules/`
- `.DS_Store`

**Zu committende Dateien (Source Code):**
- `expansion-packs/bmad-expert-author/` (SOURCE!)
- `scripts/` (Installation-Scripts)
- `Makefile` (Build-System)
- `.gitignore`
- `CLAUDE.md`

### 4. Qualitätsstandards

**Bei Code/Skript-Änderungen:**
- Teste Bash-Skripte auf allen Plattformen (Linux, macOS, Windows/Git Bash)
- Prüfe YAML-Syntax
- Validiere Markdown-Formatierung
- Stelle Idempotenz von Installationsskripten sicher

**Bei Dokumentations-Änderungen:**
- Halte README.md als zentrale Quelle
- Entferne redundante Informationen
- Verwende korrekte Slash-Command-Syntax (`/BMad:agents:*`)
- Hebe Installation via `install.sh` hervor

### 5. Workflow bei größeren Änderungen

**Entwicklungsmodus (Expansion Pack):**
1. **Plane mit TodoWrite**
2. **Implementiere schrittweise**
3. **Teste nach jedem Schritt**
4. **Committe nach erfolgreicher Implementierung**
5. **Pushe sofort**
6. **Markiere Todo als abgeschlossen**

**User-Modus (Book Writing):**
1. **Plane mit TodoWrite (optional)**
2. **Implementiere schrittweise**
3. **Teste/Review nach jedem Schritt**
4. **Committe automatisch nach jeder Änderung**
5. **KEIN automatischer Push** (User entscheidet)
6. **Markiere Todo als abgeschlossen**

## Häufige Aufgaben

### Neuen Agenten hinzufügen (Entwicklungsmodus)
1. Agent-Datei in `expansion-packs/bmad-expert-author/agents/` erstellen
2. README.md aktualisieren
3. `make install` ausführen
4. Testen: Agent in Claude Code aktivieren
5. Commit + Push

```bash
# 1. Erstelle expansion-packs/bmad-expert-author/agents/new-agent.md
# 2. Update expansion-packs/bmad-expert-author/README.md
make install
# 3. Teste in Claude Code: /BMad:agents:new-agent
git add expansion-packs/bmad-expert-author/
git commit -m "Add new-agent"
git push
```

### Dokumentation aktualisieren (Entwicklungsmodus)
1. Bearbeite `expansion-packs/bmad-expert-author/README.md` (zentrale Quelle)
2. Redundante Dateien vermeiden
3. `make install` ausführen
4. Commit + Push

```bash
# 1. Editiere expansion-packs/bmad-expert-author/README.md
make install
git add expansion-packs/bmad-expert-author/README.md
git commit -m "Update documentation"
git push
```

### Templates anpassen (Entwicklungsmodus)
1. Template in `expansion-packs/bmad-expert-author/templates/` bearbeiten
2. YAML-Syntax validieren
3. Betroffene Agenten prüfen
4. `make install` ausführen
5. Commit + Push

```bash
# 1. Editiere expansion-packs/bmad-expert-author/templates/some-template.yaml
make install
git add expansion-packs/bmad-expert-author/templates/
git commit -m "Update template"
git push
```

### Install-Script ändern (Entwicklungsmodus)
1. Änderungen an `scripts/install-expansion-pack.sh` vornehmen
2. Idempotenz testen (mehrfach ausführen)
3. Auf verschiedenen Plattformen testen
4. Commit + Push

```bash
# 1. Editiere scripts/install-expansion-pack.sh
make install  # Test 1
make install  # Test 2 (Idempotenz)
git add scripts/
git commit -m "Update install script"
git push
```

### Buch-Inhalte erstellen (User-Modus)
1. Aktiviere Agenten via `/BMad:agents:book-strategist`
2. Erstelle Book Blueprint, Chapters, etc.
3. Speichere im Projekt-Root oder Unterverzeichnissen
4. Auto-Commit nach jeder Änderung (KEIN Auto-Push)

```bash
# Agenten committen automatisch nach jeder Änderung
git add book-blueprint.yaml chapters/ drafts/
git commit -m "Add chapter 1 draft"
# KEIN automatischer Push - User entscheidet wann gepusht wird
# User kann manuell pushen: git push
```

## Wichtige Dateien

### Kern-Dokumentation
- `expansion-packs/bmad-expert-author/README.md` - Hauptdokumentation
- `expansion-packs/bmad-expert-author/workflows/README.md` - Workflow-Details
- `CLAUDE.md` - Diese Datei (Kontext für Claude Code)

### Installation
- `expansion-packs/bmad-expert-author/install.sh` - Installationsskript
- `.bmad-core/install-manifest.yaml` - Installations-Tracking

### Konfiguration
- `.gitignore` - Git-Ignore-Regeln
- `.claude/commands/BMad/agents/` - Claude Code Slash Commands

## Kontakt & Support

- GitHub Issues für Bug-Reports und Feature-Requests
- BMAD Community für Diskussionen
- Dokumentation: `expansion-packs/bmad-expert-author/README.md`

## Versionierung

- Hauptbranch: `main`
- Commits folgen Conventional Commits Format
- Jeder Commit wird mit Claude Code Co-Authorship markiert
- IMMER committen und pushen nach Änderungen

---

**Letzte Aktualisierung:** 2025-10-29
**Projekt:** BMAD Expert Author Expansion Pack
**Framework:** BMAD-METHOD™
