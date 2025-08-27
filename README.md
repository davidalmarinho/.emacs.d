# My emacs config and learning

## TODO

Check out for:  

- general: Lets you define keybinds in an isolated space. Prety cool to organize, for example, git keybinds and launching apps. And you can put vim emulation there.
- hydra: Lets you define keybinds for repetitive tasks
- org-agenda: You still have to define a directory for org-agenda

## Index
- [Learning and my own keybinds](#learning-and-my-own-keybinds)
    - [Close buffer](#close-buffer)
    - [Copy from clipboard](#copy-from-clipboard)
    - [Cut from clipboard](#cut-from-clipboard)
    - [Eval buffer](#eval-buffer)
    - [LSP Code formatting](#lsp-code-formatting)
    - [LSP Find definitions](#lsp-find-definitions)
    - [LSP Find references](#lsp-find-references)
    - [LSP Focus documentation frame](#lsp-focus-documentation-frame)
    - [LSP Ivy workspace symbol](#lsp-ivy-workspace-symbol)
    - [LSP Peak find references](#lsp-peak-find-references)
    - [LSP Rename symbol](#lsp-rename-symbol)
    - [LSP Show diagnostics](#lsp-show-diagnostics)
    - [LSP Treemacs](#lsp-treemacs)
    - [LSP Treemacs references](#lsp-treemacs-references)
    - [LSP Treemacs symbols](#lsp-treemacs-symbols)
    - [LSP Unfocus documentation frame](#lsp-unfocus-documentation-frame)
    - [Paste](#paste)
    - [Paste from clipboard](#paste-from-clipboard)
    - [Project folder](#project-folder)
    - [Save file](#save-file)
    - [Reload config](#reload-config) # FIXME: This is just wrong
    - [Search for filenames and words inside files](#search-for-filenames-and-words-inside-files)
    - [Undo](#undo)
    - [Write file](#write-file)

---

## Learning and My Own Keybinds

### Close buffer

```bash
M-x kill-buffer
```

Or

```bash
C-x k
```

### Copy from clipboard

```bash
M-x clipboard-kill-ring-save
```

Or custom keybind

```bash
```

### Cut from clipboard

```bash
M-x clipboard-kill-region
```

Or custom keybind

```bash
```

### Eval buffer

```bash
M-x eval-buffer
```

### LSP Code Formatting

```bash
M-x lsp-format-buffer
```

### LSP Find definitions

```bash
M-x lsp-find-definition
```

### LSP Find references

```bash
M-x lsp-find-references
```

### LSP Focus documentation frame

```bash
M-x lsp-ui-doc-focus-frame
```

### LSP Ivy workspace symbol

Search for any symbol inside whole project.  

```bash
M-x lsp-ivy-workspace-symbol
```

### LSP Peak find references

```bash
M-x lsp-ui-peek-find-references
```

Alt + N + P to scroll through the references  

### LSP Rename symbol

```bash
M-x lsp-rename
```

### LSP Show diagnostics

```bash
M-x flymake-show-diagnostics-buffer
```

### LSP Treemacs

```bash
M-x treemacs
```

### LSP Treemacs references

```bash
M-x lsp-treemacs-references
```

### LSP Treemacs symbols

Present symbols in a hierarchical fashion.  

```bash
M-x lsp-treemacs-symbols
```

### LSP Unfocus documentation frame

```bash
M-x lsp-ui-doc-unfocus-frame
```

### Paste

```bash
C-y
```

### Paste from clipboard

```bash
M-x clipboard-yank
```

### Project folder

```bash
M-x treemacs
```

Or custom keybind

```bash
```

### Save file

```bash
C-x C-s
```

### Reload config

```bash
M-x eval-last-sexp
```

Or

```bash
C-x C-e
```

### Search for filenames and words inside files

Depends on 'projectile' package.  

```bash
M-x counsel-projectile-rg
```

Or

```bash
C-c p s r
```

### Undo

```bash
M-x undo
```

Or

```bash
C-x u
```

Or

```bash
C-_
```

### Write file

```bash
C-x C-w
```
