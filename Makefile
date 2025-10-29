# Makefile für KI-Agent Projekt
# ================================

.PHONY: help install install-tools install-expansion-pack clean

# Default target: Zeige Hilfe
help:
	@echo "=========================================="
	@echo "  KI-Agent Makefile - Verfügbare Befehle"
	@echo "=========================================="
	@echo ""
	@echo "  make          - Zeigt diese Hilfe"
	@echo "  make install  - Installiert Tools und Expansion Pack"
	@echo "  make clean    - Aufräumen (falls benötigt)"
	@echo ""
	@echo "=========================================="

# Vollständige Installation: Tools + Expansion Pack
install: install-tools install-expansion-pack
	@echo ""
	@echo "✅ Installation abgeschlossen!"
	@echo ""
	@echo "Nächste Schritte:"
	@echo "  1. Starten Sie Ihre IDE neu, um die neuen Agenten zu laden"
	@echo "  2. In Claude Code tippen Sie: /BMad:agents:book-strategist"
	@echo "  3. Nach Aktivierung tippen Sie: *help für verfügbare Befehle"
	@echo ""

# Tools lokal installieren
install-tools:
	@echo "📦 Installiere benötigte Tools..."
	@echo ""
	@echo "ℹ  Hinweis: Aktuell sind keine zusätzlichen Tools erforderlich."
	@echo "   Fügen Sie hier npm/pip/andere Installationen hinzu, falls benötigt."
	@echo ""
	@echo "Beispiel:"
	@echo "  @npm install mdpdf"
	@echo ""

# Expansion Pack installieren
install-expansion-pack:
	@echo ""
	@echo "📚 Installiere BMAD Expert Author Expansion Pack..."
	@./scripts/install-expansion-pack.sh

# Aufräumen
clean:
	@echo "🧹 Aufräumen..."
	@echo "ℹ  Nichts zu tun."
	@echo ""
