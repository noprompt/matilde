;; ---------------------------------------------------------------------
;; Theme settings

(require 'noprompt-util)
(require 'color)

;; ---------------------------------------------------------------------
;; Theme packages

(package-require 'assemblage-theme)
(package-require 'clues-theme)
(package-require 'color-theme-sanityinc-tomorrow)
(package-require 'color-theme-sanityinc-solarized)
(package-require 'cyberpunk-theme)
(package-require 'firebelly-theme)
(package-require 'grandshell-theme)
(package-require 'gruvbox-theme)
(package-require 'ir-black-theme)
(package-require 'jujube-theme)
(package-require 'noctilux-theme)
(package-require 'planet-theme)
(package-require 'seti-theme)
(package-require 'soothe-theme)
(package-require 'spacegray-theme)
(package-require 'stekene-theme)
(package-require 'sublime-themes)
(package-require 'tronesque-theme)
(package-require 'lush-theme)
(package-require 'twilight-anti-bright-theme)

(add-to-list 'custom-theme-load-path
	     (concat (getenv "HOME") "/emacs.d/themes"))

;; ---------------------------------------------------------------------
;; Theme configuration

(defconst noprompt-theme-ring-file-path
  (concat (getenv "HOME")
	  "/.emacs.d/theme-list.el"))

(defun noprompt-theme-ring-load ()
  (read (with-temp-buffer
	  (insert-file-contents noprompt-theme-ring-file-path)
	  (buffer-string))))

(defun noprompt-theme-ring-next ()
  "Return the next theme in the theme ring."
  (let* ((theme-ring (noprompt-theme-ring-load))
	 (theme (car theme-ring))
	 (new-theme-list (append (cdr theme-ring) (list (car theme-ring)))))
    (with-temp-buffer
      (insert (prin1-to-string new-theme-list))
      (when (file-writable-p noprompt-theme-ring-file-path)
	(write-region (point-min) (point-max) noprompt-theme-ring-file-path)))
    theme))

;; ---------------------------------------------------------------------
;; Powerline

(package-require 'powerline)
(powerline-vim-theme)

;; ---------------------------------------------------------------------
;; Typography

(defun noprompt-current-font-height ()
  "Get the current global font height."
  (face-attribute 'default :height))

(defun noprompt-increase-font-height ()
  "Increase the current global font height by 10pts."
  (interactive)
  (when (display-graphic-p)
    (set-face-attribute 'default nil :height (+ (noprompt-current-font-height) 10))))

(defun noprompt-decrease-font-height ()
  "Decrease the current global font height by 10pts."
  (interactive)
  (when (display-graphic-p)
    (set-face-attribute 'default nil :height (- (noprompt-current-font-height) 10))))

(defun noprompt-text-scale-up ()
  (interactive)
  (when (display-graphic-p)
    (text-scale-adjust 0.5)))

(defun noprompt-text-scale-down ()
  (interactive)
  (when (display-graphic-p)
    (text-scale-adjust -0.5)))

(defun* noprompt-set-fonts
    (&key default-font
	  default-font-height
	  mode-line-font
	  mode-line-font-height
	  &allow-other-keys)
  (let* ((default-font-height 160)
	 (mode-line-font-height 140)
	 (mode-line-font (or mode-line-font default-font)))
    (custom-set-faces
     `(default
	((t (:font ,default-font :height ,default-font-height))))
     `(mode-line
       ((t (:font ,mode-line-font :height ,mode-line-font-height))))
     `(mode-line-inactive
       ((t (:slant italic :height ,mode-line-font-height))))
     `(modeline-highlight
       ((t (:height ,mode-line-font-height))))
     `(font-lock-comment-face
       ((t (:slant italic))))
     `(font-lock-doc-face
       ((t (:slant italic)))))))

(defun noprompt-load-next-theme ()
  (load-theme (noprompt-theme-ring-next) t)
  ;; Some themes like to mess with linum-format. Shame on them.
  (setq linum-format 'dynamic))

(when (display-graphic-p)
 (global-set-key (kbd "s-=") 'noprompt-increase-font-height)
 (global-set-key (kbd "s--") 'noprompt-decrease-font-height)
 (global-set-key (kbd "C-=") 'noprompt-text-scale-up)
 (global-set-key (kbd "C--") 'noprompt-text-scale-down)
 (noprompt-load-next-theme)
 (noprompt-set-fonts
  :default-font "Fantasque Sans Mono"))

(when (not (display-graphic-p))
  (load-theme 'cyberpunk t))

(provide 'noprompt-theme)
