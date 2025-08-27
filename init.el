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

(load-file "~/.emacs.d/src/ui.el")
(load-file "~/.emacs.d/src/keybinds.el")
;; Plugins
(load-file "~/.emacs.d/src/which-key.el")  ; Describes keybinds mappings
(load-file "~/.emacs.d/src/ivy.el")        ; Autocompletation frontend engine
(load-file "~/.emacs.d/src/counsel.el")    ; Describes commands
(load-file "~/.emacs.d/src/ivy-rich.el")   ; dont know yet very well
(load-file "~/.emacs.d/src/helpful.el")    ; Shows better functions documentations
(load-file "~/.emacs.d/src/evil-mode.el")  ; Vim emulation
(load-file "~/.emacs.d/src/projectile.el") ; Project manager
(load-file "~/.emacs.d/src/magit.el")      ; git user interface
(load-file "~/.emacs.d/src/org-mode.el")   ; Framework to organize your life
(load-file "~/.emacs.d/src/lsp/init-lsp.el")
(load-file "~/.emacs.d/src/lsp/rust.el")
(load-file "~/.emacs.d/src/lsp/c_cpp.el")
(load-file "~/.emacs.d/src/lsp/python.el")

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
   '(catppuccin-theme company-box counsel-projectile doom-modeline
		      evil-collection good-scroll helpful ivy-rich
		      lsp-pyright lsp-treemacs lsp-ui magit
		      org-bullets pyvenv rust-mode visual-fill-column)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
