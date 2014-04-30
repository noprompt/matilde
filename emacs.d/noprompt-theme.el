;;----------------------------------------------------------------------
;; Theme settings
(require 'noprompt-util)

(package-require 'twilight-anti-bright-theme)
(package-require 'noctilux-theme)
(package-require 'assemblage-theme)
(package-require 'clues-theme)
(package-require 'grandshell-theme)
(package-require 'sublime-themes)
(package-require 'tronesque-theme)
(package-require 'jujube-theme)
(package-require 'soothe-theme)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(defmacro when-graphics (&rest body)
  `(if (display-graphic-p)
       (progn ,@body)))

(defmacro when-not-graphics (&rest body)
  `(if (not (display-graphic-p))
       (progn ,@body)))

(when-graphics

 (setq default-font-family "Cousine"
       default-font-size 140
       mode-line-font-family "Cousine"
       mode-line-font-size 120)

 (global-set-key (kbd "s-<return>") 'maximize-frame)
 (global-set-key (kbd "s-=") 'increase-font-height)
 (global-set-key (kbd "s--") 'decrease-font-height)

 (load-theme 'junio t)

 (set-face-attribute 'default nil
		     :font default-font-family
		     :height default-font-size)

 (set-face-attribute 'font-lock-comment-face nil
		     :slant 'italic)

 (set-face-attribute 'font-lock-doc-face nil
		     :slant 'italic)

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

(when-not-graphics
 (load-theme 'noctilux t))

(provide 'noprompt-theme)
