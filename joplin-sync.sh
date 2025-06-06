#!/bin/bash
cd ~/joplin-notes

# Add everything
git add .

# Commit with timestamp to force change even if no new content
git commit -m "Daily sync: $(date '+%Y-%m-%d %H:%M:%S')" || echo "Nothing to commit"
# Push to Github
git push origin main
