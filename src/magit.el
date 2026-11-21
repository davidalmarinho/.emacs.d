;;; -*- lexical-binding: t; -*-
;; ~/.emacs.d/src/magit.el

(use-package magit
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

(use-package magit-delta
  :hook (magit-mode . magit-delta-mode))
