;; ~/.emacs.d/src/lsp/init-lsp.el

;; Show the filepath in the top of the window
(defun efs/lsp-mode-setup ()
  (setq lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols))
  (lsp-headerline-breadcrumb-mode))

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook (lsp-mode . efs/lsp-mode-setup)
  :init
  (setq lsp-keymap-prefix "C-c l") ;; Or 'C-l', 's-l'
  :config
  (lsp-enable-which-key-integration t) ;; So lsp keybinds shows above when pressing the keybinds
  (setq lsp-rust-server 'rust-analyzer)
  (setq lsp-rust-analyzer-server-display-inlay-hints t)
  (setq lsp-rust-analyzer-display-parameter-hints t)
  (setq lsp-rust-analyzer-display-chaining-hints t)
  (setq lsp-rust-analyzer-cargo-watch-command "clippy")
  (setq lsp-rust-analyzer-proc-macro-enable t)
)

;; Better completions UI with company-mode
(use-package company
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :bind (:map company-active-map
	      ("<tab>" . company-complete-selection))
	(:map lsp-mode-map
	      ("<tab>" .  company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.1))
  
(use-package company-box
  :hook (company-mode . company-box-mode))

;; More UI enhancements lsp-ui-mode
;; helpful pop ups with the messages appearing of the code editor at the right
(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :custom
  (lsp-ui-doc-position 'bottom)) ; documentation popup appears at the bottom

(use-package lsp-treemacs
  :after lsp)

