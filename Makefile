# Makefile für KI-Agent Projekt
# ================================

OUTPUT_DIR = output
SRC_DIR = chapters
BOOK_NAME = book
PDF_FILE = $(OUTPUT_DIR)/$(BOOK_NAME).pdf
CHAPTERS = $(sort $(wildcard $(SRC_DIR)/chapter-*.md $(SRC_DIR)/kapitel-*.md))

# Kombinierte Markdown-Datei
COMBINED_MD = $(OUTPUT_DIR)/$(BOOK_NAME).md

.PHONY: help install install-tools install-expansion-pack clean md pdf

# Default target: Zeige Hilfe
help:
	@echo "=========================================="
	@echo "  KI-Agent Makefile - Verfügbare Befehle"
	@echo "=========================================="
	@echo ""
	@echo "  make          - Zeigt diese Hilfe"
	@echo "  make install  - Installiert Tools und Expansion Pack"
	@echo "  make md       - Erstellt gesamtes Buch als Markdown-Datei"
	@echo "  make pdf      - Erstellt das gesamte Buch als PDF"
	@echo "  make clean    - Aufräumen (falls benötigt)"
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

# Aufräumen
clean:
	@echo "🧹 Lösche generierte Dateien..."
	@rm -f $(PDF_FILE) $(COMBINED_MD)
	@echo "✅ Aufgeräumt!"
