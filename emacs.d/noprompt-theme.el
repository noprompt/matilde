;; ---------------------------------------------------------------------
;; Theme settings

(require 'noprompt-util)
(require 'color)

(package-require 'twilight-anti-bright-theme)
(package-require 'noctilux-theme)
(package-require 'assemblage-theme)
(package-require 'clues-theme)
(package-require 'grandshell-theme)
(package-require 'sublime-themes)
(package-require 'tronesque-theme)
(package-require 'jujube-theme)
(package-require 'soothe-theme)
(package-require 'stekene-theme)
(package-require 'firebelly-theme)
(package-require 'gruvbox-theme)
(package-require 'planet-theme)
(package-require 'colorsarenice-theme)
(package-require 'cyberpunk-theme)
(package-require 'powerline)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(powerline-default-theme)

(setq default-font-family "Consolas"
      default-font-size 160
      mode-line-font-family "Consolas"
      mode-line-font-size 120)

;; Company's default styling makes my eyes bleed.
(defun set-company-faces ()
  (let ((bg (face-attribute 'default :background)))
    (custom-set-faces
     `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 2)))))
     `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 10)))))
     `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 5)))))
     `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
     `(company-tooltip-common ((t (:inherit font-lock-constant-face)))))))

(when (display-graphic-p)

 (global-set-key (kbd "s-<return>") 'maximize-frame)
 (global-set-key (kbd "s-=") 'increase-font-height)
 (global-set-key (kbd "s--") 'decrease-font-height)

 (load-theme 'jazz t)

 ;; Some themes like to mess with linum-format. Shame on them.
 (setq linum-format 'dynamic)

 (set-face-attribute 'default nil
		     :font default-font-family
		     :height default-font-size)

 (set-face-attribute 'font-lock-comment-face nil
		     :slant 'italic)

 (set-face-attribute 'font-lock-doc-face nil
		     :slant 'italic)

 (set-company-faces)

 (comment
  (set-face-attribute 'font-lock-doc-string-face nil
		      :slant 'italic))

 (set-face-attribute 'mode-line nil
		     :font mode-line-font-family
		     :height mode-line-font-size)

 (set-face-attribute 'mode-line-inactive nil
		     :slant 'italic
		     :height mode-line-font-size)

 (set-face-attribute 'modeline-highlight nil
		     :height mode-line-font-size))

(provide 'noprompt-theme)
