#!/usr/bin/env bash
# Script to compile apostila_github.tex with XeLaTeX + latexmk
# Usage: ./build.sh

MAIN_FILE="apostila_github.tex"
OUTPUT_PDF="apostila_github_local.pdf"

echo "=== LaTeX local build script ==="
echo "Using main file: $MAIN_FILE"

# Verify that the font exists
if [ ! -f "fonts/Arial.ttf" ]; then
  echo "❌ Error: fonts/Arial.ttf not found!"
  echo "Please make sure you have placed Arial.ttf in the fonts/ directory."
  exit 1
fi

# Run latexmk with XeLaTeX, output PDF renamed
echo "🚀 Running latexmk..."
latexmk -pdf -xelatex "$MAIN_FILE"

# Rename generated PDF
GENERATED_PDF="${MAIN_FILE%.tex}.pdf"
if [ -f "$GENERATED_PDF" ]; then
  mv "$GENERATED_PDF" "$OUTPUT_PDF"
fi

# Clean auxiliary files but keep PDF
echo "🧹 Cleaning up temporary files..."
latexmk -c

# Check output
if [ -f "$OUTPUT_PDF" ]; then
  echo "✅ Build successful! PDF generated: $OUTPUT_PDF"
else
  echo "❌ Build failed. Check logs."
  exit 1
fi
