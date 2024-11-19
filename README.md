# My emacs config and learning

## TODO

Check out for:  

- general: Lets you define keybinds in an isolated space. Prety cool to organize, for example, git keybinds and launching apps. And you can put vim emulation there.
- hydra: Lets you define keybinds for repetitive tasks

## Index
- [Learning and my own keybinds](#learning-and-my-own-keybinds)
    - [Close buffer](#close-buffer)
    - [Copy from clipboard](#copy-from-clipboard)
    - [Cut from clipboard](#cut-from-clipboard)
    - [Eval buffer](#eval-buffer)
    - [Paste](#paste)
    - [Paste from clipboard](#paste-from-clipboard)
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

### Paste

```bash
C-y
```

### Paste from clipboard

```bash
M-x clipboard-yank
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
