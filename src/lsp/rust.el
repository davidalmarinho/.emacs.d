;; ~/.emacs.d/src/lsp/rust.el

(use-package rust-mode
  :hook (rust-mode . lsp)
  :config
  (setq rust-format-on-save t))

