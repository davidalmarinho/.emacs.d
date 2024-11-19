;; ~/.emacs.d/evil-config.el

;; Enable Evil Mode
(use-package evil
  :init
  (setq evil-want-integration t)   ;; Optional for better integration
  (setq evil-want-keybinding nil)   ;; Disable default keybindings
  :config
  (evil-mode 1))                    ;; Activate Evil Mode globally

;; Optional: Set up Evil Leader Key
(use-package evil-leader
  :after evil
  :config
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>")) ;; Set space as the leader key

;; Activate relative line number.
(setq display-line-numbers-type 'relative)  ;; Set relative line numbers
