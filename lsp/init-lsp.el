;; ~/.emacs.d/lsp/init-lsp.el

(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")  ;; LSP prefix for keybindings
  :hook ((prog-mode . lsp-deferred)) ;; Hook into all programming modes
  :commands (lsp lsp-deferred)
  :config
  ;; Optional: General LSP settings that apply to all languages
  ;; (setq lsp-idle-delay 0.6            ;; Delay for lsp server activation
  ;;       lsp-log-io nil                ;; Disable logging LSP messages
  ;;       lsp-restart 'auto             ;; Auto-restart LSP server if necessary
  ;;       lsp-enable-snippet nil))      ;; Disable snippets by default
    (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
    (setq lsp-file-watch-threshold 15000)
    (define-key lsp-mode-map (kbd "C-c a") 'lsp-execute-code-action))

(load-file (expand-file-name "lsp/lsp-cpp.el" user-emacs-directory))

(use-package lsp-ui
  :ensure t
  :commands (lsp-ui-mode)
  :config
  (setq lsp-ui-doc-enable nil)
  (setq lsp-ui-doc-delay 0.5)
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  )

(use-package lsp-ivy
  :ensure t
  :commands lsp-ivy-workspace-symbol)

(use-package lsp-treemacs
  :ensure t
  :commands lsp-treemacs-errors-list)

;; company
(use-package company
  :ensure t
  :bind ("M-/" . company-complete-common-or-cycle) ;; overwritten by flyspell
  :init (add-hook 'after-init-hook 'global-company-mode)
  :config
  (setq company-show-numbers            t
	company-minimum-prefix-length   1
	company-idle-delay              0.5
	company-backends
	'((company-files          ; files & directory
	   company-keywords       ; keywords
	   company-capf           ; what is this?
	   company-yasnippet)
	  (company-abbrev company-dabbrev))))

(use-package company-box
  :ensure t
  :after company
  :hook (company-mode . company-box-mode))

;; flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode)
  :config
  (setq flycheck-display-errors-function
	#'flycheck-display-error-messages-unless-error-list)

  (setq flycheck-indication-mode nil))

(use-package flycheck-pos-tip
  :ensure t
  :after flycheck
  :config
  (flycheck-pos-tip-mode))
