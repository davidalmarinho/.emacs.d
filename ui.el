;; ~/.emacs.d/ui.el

(setq inhibit-startup-message t) ; Hides startup message

(scroll-bar-mode -1)  ; Disable visible scrollbar
(tool-bar-mode -1)    ; Disable visible toolbar
(tooltip-mode -1)     ; Disable tooltips
(set-fringe-mode 10)  ; Give some breathing room

(menu-bar-mode -1) ; Disable the menu bar

(setq visible-bell t) ; Allows the screen to flash instead of producing an audible beep when an error occurs

;; Font settings
(set-face-attribute 'default nil :font "Iosevka Nerd Font Mono" :height 160)

;; Bottom bar customization
;; You need to either run M-x nerd-icons-install-fonts or install the fonts manually, see https://github.com/rainstormstudio/nerd-icons.el#installing-fonts
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))
;; Show which column we are
(column-number-mode)

;; Line numbers customization
(global-display-line-numbers-mode t)
;;(setq display-line-numbers-type t) ; Absolute line numbers
(setq display-line-numbers-type 'relative) ; Relative line numbers
;; Disable line numbers for mode modes
;(dolist (mode '(org-mode-hook
;		term-mode-hook
;		eshell-mode-hook))
;	(add-hook mode (lambda () (display-line-numbers-mode 0))))
(defun do-not-display-line-numbers-mode-hook ()
  "Hook to disable display-line-numbers-mode."
  (display-line-numbers-mode 0))

(dolist (mode '(org-mode-hook
                term-mode-hook
                eshell-mode-hook))
  (add-hook mode #'do-not-display-line-numbers-mode-hook))

;; Cursor customization
(setq-default cursor-type '(bar . 3))

;; Theme
;; Install and load the Catppuccin theme
(use-package catppuccin-theme
  :ensure t
  :init
  ;; Start with the dark theme (mocha) by default
  (setq catppuccin-flavor 'mocha)
  :config
  (load-theme 'catppuccin t))

