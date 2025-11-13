#!/bin/bash
# ============================================
# GitHub Timelapse Commit Script (No File)
# --------------------------------------------
# Makes an empty commit with timestamp message
# so your GitHub stays active and shows time history.
# ============================================

# Path to your local repository
REPO_PATH="/home/aetos/Documents/daily-commit-bot-"   # <--- change this path

cd "$REPO_PATH" || { echo "❌ Repo not found!"; exit 1; }

# Create an empty commit (no file changes)
git commit --allow-empty -m "Timelapse: $(date)"

# Push to GitHub
git push origin main >/dev/null 2>&1 || git push origin master >/dev/null 2>&1

echo "✅ Empty commit pushed at $(date)"
