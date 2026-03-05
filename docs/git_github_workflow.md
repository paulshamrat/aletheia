# 🐙 Git & GitHub Workflow Guide

This guide documents the exact workflow we used to secure, version-control, and host the **Aletheia Wiki**.

---

## 1. Initializing the Repository
To turn a local folder into a Git repository:
```bash
cd ~/works/wiki
git init
```

## 2. Connecting to GitHub (`gh` CLI)
We used the **GitHub CLI** to handle authentication and repository creation without leaving the terminal.

### Authentication
```bash
gh auth login
```
*Selection during setup*: SSH, Web Browser login.

### Creating the Project
```bash
gh repo create aletheia --public --source=. --remote=origin --push
```
- `--public`: Makes the code visible to everyone.
- `--source=.`: Uses the current folder as the local source.
- `--push`: Uploads the code immediately.

### Updating Metadata (About Section)
```bash
gh repo edit paulshamrat/aletheia \
  --description "A curated technical knowledge base..." \
  --homepage "https://paulshamrat.github.io/aletheia/"
```

---

## 3. The Branching Strategy
We use two main branches to keep the source code and the website separate:

1.  **`main` branch**: Contains your **Markdown source files**. This is what you edit.
2.  **`gh-pages` branch**: Contains the **built HTML files**. This is what the public sees as a website.

### Switching Branches
```bash
git checkout main      # Back to editing mode
git checkout gh-pages  # View the built website files
```

---

## 4. Hosting on GitHub Pages
To update your website after making changes to your Markdown files:

### The Manual (Safe) Way
```bash
# 1. Build the site
mkdocs build 

# 2. Deploy to the special gh-pages branch
mkdocs gh-deploy
```

---

## 5. Security & Privacy
This is the most critical part of our setup. We use three layers of security to keep your personal data private.

### Layer 1: `.gitignore`
Prevents Git from ever "seeing" certain files.
```text
# .gitignore content
docs/internal/    # Your private notes folder
site/             # The built website (we only push it to gh-pages)
*.log             # System logs
```

### Layer 2: MkDocs Snippets
Allows you to keep a guide public but "punch out" a hole for private data.
```markdown
# In your guide:
--8<-- "docs/internal/rclone_secrets.md"
```
- **Local**: MkDocs fills the hole with your secret file.
- **GitHub**: The hole remains empty (invisible).

### Layer 3: `exclude_docs` (Build Security)
Prevents private files from being accidentally included in the website bundle during `mkdocs build`.
```yaml
# mkdocs.yml
exclude_docs: |
  internal/*
```

---

## 6. Daily Commands Summary
| Action | Command |
| :--- | :--- |
| **Save Changes** | `git add . && git commit -m "Your message"` |
| **Upload Source** | `git push origin main` |
| **Update Website** | `mkdocs gh-deploy` |
| **Start Local View**| `wiki` (custom alias) |
