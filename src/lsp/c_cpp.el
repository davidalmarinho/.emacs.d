;; ~/.emacs.d/src/lsp/c_cpp.el

(use-package cc-mode
  :hook ((c-mode . lsp)
         (c++-mode . lsp)))

