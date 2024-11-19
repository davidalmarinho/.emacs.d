;; ~/.emacs.d/lsp-config.el

;; There are some things to install in the Operating System:
;; For Rust:
;; -> rustup component add rust-analyzer
;; -> cargo install rust-analyzer
;; For Go:
;; -> go install golang.org/x/tools/gopls@latest
;; For Lua:
;; -> luarocks install lua-language-server
;; For Javascrip:
;; -> npm install -g typescript typescript-language-server
;; HTML Lint:
;; -> npm install -g htmlhint
;; For Prolog:
;; sudo pacman -S swi-prolog
;; swipl -g 'pack_install(lsp_server).' // https://emacs-lsp.github.io/lsp-mode/page/lsp-prolog/

;; Install flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; Install and configure lsp-mode
(use-package lsp-mode
  :commands lsp
  :hook
  (c-mode . lsp)           ;; C
  (c++-mode . lsp)         ;; C++
  (java-mode . lsp)        ;; Java
  (rust-mode . lsp)        ;; Rust
  (lua-mode . lsp)         ;; Lua
  (go-mode . lsp)          ;; Go
  (prolog-mode . lsp)      ;; Prolog
  :config
  (lsp-enable-which-key-integration t) ;; Enable which-key integration
  (setq lsp-prefer-flymake nil)          ;; Use flycheck instead of flymake
  (setq lsp-rust-analyzer-server-command '("rust-analyzer")) ;; Use rust-analyzer
  ;; (setq lsp-prolog-server-command "swipl"
  ;;       lsp-prolog-server-args '("-g" "use_module(library(lsp_server))." "-g" "lsp_server:main" "-t" "halt" "--" "stdio"))
)

(setq lsp-clients-clangd-executable "clangd")

;; Java support
(use-package lsp-java
  :after lsp-mode
  :hook (java-mode . lsp)
  :config
  (setq lsp-java-server-install-dir "/path/to/java-server/")) ;; Set to your Java LSP server path

;; Rust support
(use-package rust-mode
  :hook (rust-mode . lsp)
  :config
  (setq lsp-rust-analyzer-server-command '("rust-analyzer"))
)

;; Prolog support (assuming you have 'swi-prolog' installed)
(use-package prolog
  :ensure t
  :mode ("\\.pl\\'" . prolog-mode)) ;; Associate .pl files with prolog-mode

;; Register Prolog LSP client in lsp-mode
(with-eval-after-load 'lsp-mode
  (lsp-register-client
    (make-lsp-client
    :new-connection (lsp-stdio-connection
                     '("swipl" "-g" "use_module(library(lsp_server))."
                       "-g" "lsp_server:main" "-t" "halt" "--" "stdio"))
    :major-modes '(prolog-mode)
    :server-id 'prolog-lsp)
  )
)

;; Go support
(use-package go-mode
  :hook (go-mode . lsp))

;; Lua support
(use-package lua-mode
  :hook (lua-mode . lsp))

;; GLSL Syntax Highlighting
(use-package glsl-mode
  :mode ("\\.glsl\\'" . glsl-mode))

;; Optionally: use which-key to display available keybindings
(use-package which-key
  :config
  (which-key-mode))

;; Optionally set up tooltip settings for hover information
(setq lsp-hover-enable t) ;; Enable hover information in LSP
(setq lsp-hover-show-frame t) ;; Show hover information in a frame

;; Install and configure company-mode
(use-package company
  :ensure t
  :hook (after-init . global-company-mode)
  :config
  (setq company-idle-delay 0.2)
  (setq company-minimum-prefix-length 1)
  (setq company-show-numbers t)
  (setq company-tooltip-limit 10) ;; Show up to 10 candidates in the tooltip

  ;; Add yasnippet support to company backends
  (setq company-backends '((company-files           ;; Files & directories
                            company-capf            ;; LSP completions
                            company-yasnippet       ;; Snippet completions
                            company-dabbrev-code    ;; Code-based completions
                            company-dabbrev))))
;; Install all-the-icons
(use-package all-the-icons
  :ensure t)

;; Company-box for improved UI
(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode)
  :config
  (setq company-box-icons-alist 'company-box-icons-all-the-icons)
  (setq company-box-max-candidates 30)  ;; Show up to 30 candidates
  (setq company-box-show-single-candidate t)
  (setq company-box-doc-enable t)       ;; Show documentation tooltip
)

;; LSP hover tooltips
(setq lsp-hover-enable t)
(setq lsp-hover-show-frame t)
(setq lsp-hover-delay 0.05)
