(add-to-list 'load-path "~/.emacs.d/themes/color-theme-6.6.0/")
(require 'color-theme)
(color-theme-initialize)

;; theme like railscasts
(load-file "~/.emacs.d/themes/color-theme-railscasts.el")
(color-theme-railscasts)

(setq org-todo-keyword-faces
'(("TODO" . (:foreground "red" :weight bold))
("WAIT" . (:foreground "orange" :weight bold))
("DONE" . (:foreground "green" :weight bold)))
)

;; change font-size
;;(set-face-attribute 'default nil :height 90)
;;(set-default-font "Droid-8")

;; turn on column number mode
(column-number-mode t)

;; highlight brackets
(show-paren-mode t)

;; frame size
(setq default-frame-alist
      (append default-frame-alist
	      '((width . 130)
		(height . 40))))
(setq initial-frame-alist (copy-alist default-frame-alist))

(setq split-width-threshold nil)

;; remove splash screen
;;(setq inhibit-splash-screen t)

;; highlight current line
;;(global-hl-line-mode t)
