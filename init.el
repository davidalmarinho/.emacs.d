;; ~/.emacs.d/init.el

(setq inhibit-startup-screen t) ;; Disable the startup screen
(scroll-bar-mode -1) ;; Disable visible scroll bar
(tool-bar-mode -1) ;; Disable the toolbar

;; (menu-bar-mode -1)            ; Disable the menu bar

(set-face-attribute 'default nil :font "Iosevka Nerd Font Mono" :height 140)

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents (package-refresh-contents))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package command-log-mode)

;; Load Evil configuration
(load-file "~/.emacs.d/evil-config.el")

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

;; Load LSP configuration
(load-file "~/.emacs.d/lsp-config.el")

;; Load theme configurations from themes.el
(load-file "~/.emacs.d/themes.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(evil-leader evil ligature command-log-mode catppuccin-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-preview ((t (:background nil :foreground "#51afef"))))
 '(company-preview-common ((t (:foreground "#88c0d0"))))
 '(company-tooltip ((t (:background "#282c34" :foreground "#ffffff"))))
 '(company-tooltip-selection ((t (:background "#5e81ac" :foreground "#ffffff")))))
