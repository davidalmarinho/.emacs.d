;; (setq inhibit-startup-screen t) ;; Disable the startup screen
;; (scroll-bar-mode -1) ;; Disable visible scroll bar
;; (tool-bar-mode -1) ;; Disable the toolbar

;; (menu-bar-mode -1)            ; Disable the menu bar

(set-face-attribute 'default nil :font "Iosevka Nerd Font Mono" :height 140)

;; Enable absolute line numbers
(global-display-line-numbers-mode 1)

;; Install and configure ligature package
(use-package ligature
   :config
   (ligature-set-ligatures
    't
    '("www" "~~" "||" "|||" "++" "**" "::" ":::" "!!" "!!1" "??" "??1" "->" "<-" "=>" "<=>" "===" "===" "===" "===" "->>" "<<<" "<=>" "<>" "<<" "!=" "==" ">=" "<="))
   ;; Activate ligatures for programming modes
   (global-ligature-mode t))

;; Load Evil configuration
(load-file "~/.emacs.d/modules/evil-config.el")

