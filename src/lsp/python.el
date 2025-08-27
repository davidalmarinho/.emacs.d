;; ~/.emacs.d/src/lsp/python.el

;; Requires 'npm install -g pyright'

(use-package python
  :hook (python-mode . lsp)
  :config
  (setq python-indent-offset 4))

(setq lsp-pyright-multi-root nil
      lsp-pyright-auto-import-completions t
      lsp-pyright-use-library-code-for-types t)

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp))))  ;; or lsp-deferred

;; Virtualenv integration
(use-package pyvenv
  :ensure t
  :config
  (pyvenv-mode 1))

