;; ~/.emacs.d/lsp/lsp-cpp.el

;; lsp
(use-package lsp-mode
  :after lsp
  :hook ((c-mode . lsp)
	      (c++-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration)))

