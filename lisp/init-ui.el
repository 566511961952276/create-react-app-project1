;;; init-ui.el --- settings for the Emacs UI

;;; Commentary:
;;; (c) Cabins, github.com/cabins/.emacs.d

;;; Code:


;; Settings for UI theme
(use-package gruvbox-theme
  :unless *is-windows*
  :when (display-graphic-p)
  :init (load-theme 'gruvbox-dark-soft t))
;; (use-package smart-mode-line-powerline-theme)

(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t
	    sml/theme 'respectful)
  ;; (if *is-windows*
  ;; (setq sml/theme 'powerline
  ;; sml/theme 'powerline))
  (sml/setup))

;; Font settings
(use-package emacs
  :config
  (set-default 'cursor-type 'bar)
  (setq default-frame-alist '((width . 150) (height . 35)))
  ;; (set-frame-parameter nil 'fullscreen 'maximized)

  (set-face-attribute 'default nil :font "Ubuntu Mono 10")
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset (font-spec :family "华文细黑" :size 10.5))))

;; Hide scroll bar and tool bar in GUI mode
(when (display-graphic-p)
  (scroll-bar-mode -1)
  (tool-bar-mode -1))

(provide 'init-ui)
;;; init-ui.el ends here
