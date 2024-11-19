;; ~/.emacs.d/keybinds.el

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

