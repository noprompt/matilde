;; GUI key-bindings and settings.
(when (display-graphic-p)
  (progn
    (set-face-attribute 'default nil :font "Liberation Mono" :height 140)
    (global-set-key (kbd "s-<return>") 'maximize-frame)
    (global-set-key (kbd "s-=") 'increase-font-height)
    (global-set-key (kbd "s--") 'decrease-font-height)))

;; Turn off the annoying visual bell.
(setq visible-bell nil)

;; Turn off line highlighting.
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)

;; Color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/lite-brite")
(load-theme 'lite-brite t)

(provide 'noprompt-display)
