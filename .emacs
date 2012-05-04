(setq default-frame-alist '((width . 140)(height . 60)))
(set-frame-position (selected-frame) 500 0)

(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)

(load-file "~/.emacs.d/emacs-for-python/epy-init.el")

(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation)

(global-hl-line-mode t)
(set-face-background 'hl-line "honeydew")

(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)

(add-to-list 'load-path "~/.emacs.d/emacs-color-theme-solarized")
(require 'color-theme-solarized)

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

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
