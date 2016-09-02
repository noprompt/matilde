;; ---------------------------------------------------------------------
;; Theme settings

(require 'init-util)
(require 'color)

;; ---------------------------------------------------------------------
;; Theme packages

(package-require 'arjen-grey-theme)
(package-require 'assemblage-theme)
(package-require 'atom-one-dark-theme)
(package-require 'base16-theme)
(package-require 'birds-of-paradise-plus-theme)
(package-require 'clues-theme)
(package-require 'color-theme-sanityinc-solarized)
(package-require 'color-theme-sanityinc-tomorrow)
(package-require 'cyberpunk-theme)
(package-require 'darktooth-theme)
(package-require 'dracula-theme)
(package-require 'eink-theme)
(package-require 'firebelly-theme)
(package-require 'goose-theme)
(package-require 'grandshell-theme)
(package-require 'gruvbox-theme)
(package-require 'hamburg-theme)
(package-require 'ir-black-theme)
(package-require 'jazz-theme)
(package-require 'jujube-theme)
(package-require 'lush-theme)
(package-require 'molokai-theme)
(package-require 'noctilux-theme)
(package-require 'planet-theme)
(package-require 'seti-theme)
(package-require 'slime-theme)
(package-require 'smyx-theme)
(package-require 'soothe-theme)
(package-require 'spacegray-theme)
(package-require 'stekene-theme)
(package-require 'sublime-themes)
(package-require 'tronesque-theme)
(package-require 'ubuntu-theme)
(package-require 'zonokai-theme)

;; ---------------------------------------------------------------------
;; Theme configuration

(dolist (theme-name '("firebelly" "dracula" "hamburg" "seti"))
  (add-to-list 'custom-theme-load-path
	       (concat (getenv "HOME") "/.emacs.d/non-elpa/anti-" theme-name "-theme/")))

(defconst ~/theme-ring-file-path
  (concat (getenv "HOME")
	  "/.emacs.d/theme-list.el"))

(defun ~/theme-ring-load ()
  (read (with-temp-buffer
	  (insert-file-contents ~/theme-ring-file-path)
	  (buffer-string))))

(defun ~/theme-ring-next ()
  "Return the next theme in the theme ring."
  (let* ((theme-ring (~/theme-ring-load))
	 (theme (car theme-ring))
	 (new-theme-list (append (cdr theme-ring) (list (car theme-ring)))))
    (with-temp-buffer
      (insert (prin1-to-string new-theme-list))
      (when (file-writable-p ~/theme-ring-file-path)
	(write-region (point-min) (point-max) ~/theme-ring-file-path)))
    theme))

;; ---------------------------------------------------------------------
;; Powerline

(package-require 'powerline)
(powerline-vim-theme)

;; ---------------------------------------------------------------------
;; Typography

(defun ~/increase-font-height ()
  "Increase the current global font height by 10pts."
  (interactive)
  (when (display-graphic-p)
    (dolist (face '(default mode-line mode-line-inactive))
      (set-face-attribute
       face nil
       :height (+ (face-attribute face :height) 10)))))

(defun ~/decrease-font-height ()
  "Decrease the current global font height by 10pts."
  (interactive)
  (when (display-graphic-p)
    (dolist (face '(default mode-line mode-line-inactive))
      (set-face-attribute
       face nil
       :height (- (face-attribute face :height) 10)))))

(defun ~/text-scale-up ()
  (interactive)
  (when (display-graphic-p)
    (text-scale-adjust 0.5)))

(defun ~/text-scale-down ()
  (interactive)
  (when (display-graphic-p)
    (text-scale-adjust -0.5)))

(defun* ~/set-fonts
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

(defun ~/load-next-theme ()
  (load-theme (~/theme-ring-next) t)
  ;; Some themes like to mess with linum-format. Shame on them.
  (setq linum-format 'dynamic))

(setq ~/font-families-alist
      '((agave . "agave")
	(andale . "Andale Mono")
	(anonymous . "Anonymous Pro")
	(anonymous-pro . "Anonymous Pro")
	(camingo . "Camingo Code")
	(camingo-code . "Camingo Code")
	(code-new-roman . "Code New Roman")
	(consolas . "Consolas")
	(computer-modern . "CMU Typewriter Text")
	(courier . "Courier")
	(courier-new . "Courier New")
	(courier-prime-code . "Courier Prime Code")
	(fantasque . "Fantasque Sans Mono")
	(fixedsys . "Fixedsys Excelsior 3.01")
	(gohu . "GohuFont")
	(inconsolata . "Inconsolata LGC")
	(input . "Input Mono")
	(liberation . "Liberation Mono")
	(office-code-pro . "Office Code Pro")
	(menlo . "Menlo")
	(monaco . "Monaco")
	(monoid . "Monoid")
	(pt . "PT Mono")
	(pt-mono . "PT Mono")
	(roboto . "Roboto Mono")
	(sax . "saxMono")
	(source-code-pro . "Source Code Pro")
	(terminus . "Terminus")
	(ubuntu . "Ubuntu Mono")
	(whois . "Whois")))

(defun ~/get-font (key)
  (cdr (assoc key ~/font-families-alist)))

(when (display-graphic-p)
 (global-set-key (kbd "s-=") '~/increase-font-height)
 (global-set-key (kbd "s--") '~/decrease-font-height)
 (global-set-key (kbd "C-=") '~/text-scale-up)
 (global-set-key (kbd "C--") '~/text-scale-down)
 (~/set-fonts :default-font (~/get-font 'computer-modern))
 (~/load-next-theme))

(when (not (display-graphic-p))
  (load-theme 'jazz t))

(provide 'init-theme)
