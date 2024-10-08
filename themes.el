;; ~/.emacs.d/themes.el

;; Ensure that use-package is loaded
(require 'use-package)

;; Install and load the Catppuccin theme
(use-package catppuccin-theme
  :ensure t
  :init
  ;; Start with the dark theme (mocha) by default
  (setq catppuccin-flavor 'mocha)
  :config
  (load-theme 'catppuccin t))

;; Function to set the dark theme
(defun set-dark-theme ()
  "Set the Catppuccin dark theme."
  (interactive)
  (setq catppuccin-flavor 'mocha)  ;; Set to dark flavor
  (catppuccin-reload))              ;; Reload the theme

;; Function to set the light theme
(defun set-light-theme ()
  "Set the Catppuccin light theme."
  (interactive)
  (setq catppuccin-flavor 'latte)   ;; Set to light flavor
  (catppuccin-reload))               ;; Reload the theme

;; Keybindings for dark and light themes
(global-set-key (kbd "<f8>") 'set-dark-theme)  ;; F8 for dark theme
(global-set-key (kbd "<f9>") 'set-light-theme) ;; F9 for light theme

