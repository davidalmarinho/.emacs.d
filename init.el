;; ~/.emacs.d/init.el

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(load-file "~/.emacs.d/ui.el")
(load-file "~/.emacs.d/keybinds.el")
;; Plugins
(load-file "~/.emacs.d/which-key.el")  ; Describes keybinds mappings
(load-file "~/.emacs.d/ivy.el")        ; Autocompletation frontend engine
(load-file "~/.emacs.d/counsel.el")    ; Describes commands
(load-file "~/.emacs.d/ivy-rich.el")   ; dont know yet very well
(load-file "~/.emacs.d/helpful.el")    ; Shows better functions documentations
(load-file "~/.emacs.d/evil-mode.el")  ; Vim emulation
(load-file "~/.emacs.d/projectile.el") ; Project manager
(load-file "~/.emacs.d/magit.el")      ; git user interface

;; TODO: Move to another file what is in here
;; ---
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(use-package good-scroll
  :init
  (good-scroll-mode 1))
(global-set-key [next] #'good-scroll-up-full-screen)
(global-set-key [prior] #'good-scroll-down-full-screen)

;; ---

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(catppuccin-theme counsel counsel-projectile doom-modeline evil
		      evil-collection evil-magit general good-scroll
		      helpful ivy-rich magit projectile)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
