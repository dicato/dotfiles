(setq default-frame-alist '((width . 140)(height . 60)))
(set-frame-position (selected-frame) 500 0)

(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)

(load-file "~/.emacs.d/emacs-for-python/epy-init.el")

(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation)

(global-hl-line-mode t)
(set-face-background 'hl-line "honeydew")

(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/color-theme-6.6.0")

(add-to-list 'load-path "~/.emacs.d/emacs-color-theme-solarized")
(require 'color-theme-solarized)

(require 'color-theme)

(if window-system
    (eval-after-load "color-theme"
      '(progn
	 (color-theme-initialize)
	 (color-theme-solarized-light)))
)

(unless  window-system
    (eval-after-load "color-theme"
      '(progn
	 (color-theme-initialize)
	 (color-theme-arjen)))
)

