(setq default-frame-alist '((width . 140)(height . 60)))
(set-frame-position (selected-frame) 500 0)

(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)

(load-file "~/.emacs.d/emacs-for-python/epy-init.el")

(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation)

(global-hl-line-mode t)
(set-face-background 'hl-line "honeydew")
