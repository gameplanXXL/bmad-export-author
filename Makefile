# Makefile für KI-Agent Projekt
# ================================

OUTPUT_DIR = output
SRC_DIR = chapters
BOOK_NAME = book
PDF_FILE = $(OUTPUT_DIR)/$(BOOK_NAME).pdf
CHAPTERS = $(sort $(wildcard $(SRC_DIR)/chapter-*.md $(SRC_DIR)/kapitel-*.md))

# Kombinierte Markdown-Datei
COMBINED_MD = $(OUTPUT_DIR)/$(BOOK_NAME).md

.PHONY: help install install-tools install-expansion-pack clean md pdf pdf-chapter

# Default target: Zeige Hilfe
help:
	@echo "=========================================="
	@echo "  KI-Agent Makefile - Verfügbare Befehle"
	@echo "=========================================="
	@echo ""
	@echo "  make                    - Zeigt diese Hilfe"
	@echo "  make install            - Installiert Tools und Expansion Pack"
	@echo "  make md                 - Erstellt gesamtes Buch als Markdown-Datei"
	@echo "  make pdf                - Erstellt das gesamte Buch als PDF"
	@echo "  make pdf-chapter CH=N   - Erstellt PDF für Kapitel N (z.B. make pdf-chapter CH=1)"
	@echo "  make pdf-latest         - Erstellt PDF für das neueste Kapitel"
	@echo "  make clean              - Aufräumen (falls benötigt)"
	@echo ""
	@echo "Beispiele:"
	@echo "  make pdf-chapter CH=3   - Erstellt chapters/chapter-03.pdf"
	@echo "  make pdf-latest         - Erstellt PDF für das zuletzt geänderte Kapitel"
	@echo ""
	@echo "=========================================="

# Vollständige Installation: Tools + Expansion Pack
install: install-tools install-expansion-pack
	@echo ""
	@echo "✅ Installation abgeschlossen!"
	@echo ""
	@echo "Nächste Schritte:"
	@echo "  1. Starten Sie Claude Code bzw. Ihre IDE neu, um die neuen Agenten zu laden"
	@echo "  2. In Claude Code tippen Sie: /BMad:agents:book-strategist"
	@echo "  3. Nach Aktivierung tippen Sie: *help für verfügbare Befehle"
	@echo ""

# Tools lokal installieren
install-tools:
	@echo "📦 Installiere benötigte Tools..."
	@echo ""
	@echo "Installiere Document Processing Tools..."
	@npm install
	@echo ""
	@echo "✅ Alle Tools installiert:"
	@echo "   - mdpdf (Markdown → PDF)"
	@echo "   - mammoth (Word/DOCX → Markdown)"
	@echo "   - pdf-parse (PDF Text-Extraktion)"
	@echo "   - turndown (HTML → Markdown)"
	@echo ""

# Expansion Pack installieren
install-expansion-pack:
	@echo ""
	@echo "📚 Installiere BMAD Expert Author Expansion Pack..."
	@./scripts/install-expansion-pack.sh

# Output-Verzeichnis erstellen
$(OUTPUT_DIR):
	@mkdir -p $(OUTPUT_DIR)

# Alle Kapitel zu einer Datei kombinieren
md: | $(OUTPUT_DIR)
	@if [ -z "$(CHAPTERS)" ]; then \
		echo "⚠️  Keine Kapitel gefunden in $(SRC_DIR)/"; \
		echo "   Erwartet: chapter-*.md oder kapitel-*.md"; \
		exit 1; \
	fi
	@echo "📝 Kombiniere $(words $(CHAPTERS)) Kapitel..."
	@cat $(CHAPTERS) > $(COMBINED_MD)
	@echo "✅ Kombinierte Datei erstellt: $(COMBINED_MD)"

# PDF mit mdpdf generieren
pdf: md
	@echo "📚 Generiere PDF mit mdpdf..."
	@./node_modules/.bin/mdpdf $(COMBINED_MD) -o $(PDF_FILE)
	@echo "✅ PDF erstellt: $(PDF_FILE)"
	@echo "📊 Dateigröße: $$(du -h $(PDF_FILE) | cut -f1)"

# Einzelnes Kapitel als PDF generieren
# Usage: make pdf-chapter CH=3
pdf-chapter: | $(OUTPUT_DIR)
	@if [ -z "$(CH)" ]; then \
		echo "❌ Fehler: Kapitelnummer fehlt!"; \
		echo "   Verwendung: make pdf-chapter CH=3"; \
		exit 1; \
	fi
	@CHAPTER_NUM=$$(printf "%02d" $(CH)); \
	CHAPTER_FILE="$(SRC_DIR)/chapter-$$CHAPTER_NUM.md"; \
	if [ ! -f "$$CHAPTER_FILE" ]; then \
		CHAPTER_FILE="$(SRC_DIR)/kapitel-$$CHAPTER_NUM.md"; \
	fi; \
	if [ ! -f "$$CHAPTER_FILE" ]; then \
		echo "❌ Fehler: Kapitel $$CHAPTER_NUM nicht gefunden!"; \
		echo "   Gesucht: $(SRC_DIR)/chapter-$$CHAPTER_NUM.md"; \
		echo "   oder:    $(SRC_DIR)/kapitel-$$CHAPTER_NUM.md"; \
		exit 1; \
	fi; \
	PDF_TEMP="$(SRC_DIR)/chapter-$$CHAPTER_NUM.pdf"; \
	PDF_OUTPUT="$(OUTPUT_DIR)/chapter-$$CHAPTER_NUM.pdf"; \
	echo "📚 Generiere PDF für Kapitel $(CH)..."; \
	echo "   Quelle: $$CHAPTER_FILE"; \
	./node_modules/.bin/mdpdf "$$CHAPTER_FILE"; \
	if [ -f "$$PDF_TEMP" ]; then \
		mv "$$PDF_TEMP" "$$PDF_OUTPUT"; \
		echo "✅ PDF erstellt: $$PDF_OUTPUT"; \
		echo "📊 Dateigröße: $$(du -h $$PDF_OUTPUT | cut -f1)"; \
	else \
		echo "❌ Fehler: PDF wurde nicht erstellt"; \
		exit 1; \
	fi

# PDF für das neueste (zuletzt geänderte) Kapitel generieren
pdf-latest: | $(OUTPUT_DIR)
	@if [ -z "$(CHAPTERS)" ]; then \
		echo "❌ Keine Kapitel gefunden in $(SRC_DIR)/"; \
		exit 1; \
	fi
	@LATEST=$$(ls -t $(SRC_DIR)/chapter-*.md $(SRC_DIR)/kapitel-*.md 2>/dev/null | head -1); \
	if [ -z "$$LATEST" ]; then \
		echo "❌ Keine Kapitel gefunden!"; \
		exit 1; \
	fi; \
	BASENAME=$$(basename "$$LATEST" .md); \
	PDF_TEMP="$(SRC_DIR)/$$BASENAME.pdf"; \
	PDF_OUTPUT="$(OUTPUT_DIR)/$$BASENAME.pdf"; \
	echo "📚 Generiere PDF für neuestes Kapitel..."; \
	echo "   Quelle: $$LATEST"; \
	./node_modules/.bin/mdpdf "$$LATEST"; \
	if [ -f "$$PDF_TEMP" ]; then \
		mv "$$PDF_TEMP" "$$PDF_OUTPUT"; \
		echo "✅ PDF erstellt: $$PDF_OUTPUT"; \
		echo "📊 Dateigröße: $$(du -h $$PDF_OUTPUT | cut -f1)"; \
	else \
		echo "❌ Fehler: PDF wurde nicht erstellt"; \
		exit 1; \
	fi

# Aufräumen
clean:
	@echo "🧹 Lösche generierte Dateien..."
	@rm -f $(PDF_FILE) $(COMBINED_MD)
	@rm -f $(OUTPUT_DIR)/chapter-*.pdf $(OUTPUT_DIR)/kapitel-*.pdf
	@echo "✅ Aufgeräumt!"
