;; ---------------------------------------------------------------------
;; Theme settings

(require 'init-util)
(require 'color)

;; ---------------------------------------------------------------------
;; Theme packages

(package-require 'afternoon-theme)
(package-require 'atom-one-dark-theme)
(package-require 'badwolf-theme)
(package-require 'base16-theme)
(package-require 'bubbleberry-theme)
(package-require 'cyberpunk-theme)
(package-require 'darktooth-theme)
(package-require 'doom-themes)
(package-require 'eink-theme)
(package-require 'firebelly-theme)
(package-require 'hamburg-theme)
(package-require 'jazz-theme)
(package-require 'seti-theme)
(package-require 'smyx-theme)
(package-require 'subatomic256-theme)
(package-require 'tronesque-theme)

;; The doom themes seem to assume this variable is bound.
(if (not (boundp 'region-fg))
    (defvar region-fg
      nil))


;; ---------------------------------------------------------------------
;; Theme configuration


(defconst ~/theme-ring-file-path
  (concat (getenv "HOME")
          (if (display-graphic-p)
              "/.emacs.d/theme-list.el"
            "/.emacs.d/theme-256-list.el")))


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


(defun ~/edit-theme-ring ()
  (let ((buffer (find-file ~/theme-ring-file-path)))
    (pop-to-buffer buffer)))


(defun ~/disable-all-themes ()
  (interactive)
  (mapc #'disable-theme custom-enabled-themes))


(defun ~/load-theme (theme &optional no-confirm no-enable)
  "Like `load-theme' but disables all themes in
`custom-enabled-themes' beforehand. This prevents the \"layering\" of
themes that occurs when calling `load-theme' numerous times."
  (~/disable-all-themes)
  (load-theme theme no-confirm no-enable)
  ;; Some themes like to mess with linum-format. Shame on them.
  (setq linum-format 'dynamic)
  t)

(defhydra ~/hydra-next-theme (nil nil)
  "Theme"
  ("p"
   (lambda ()
     (interactive)
     (let* ((old-theme (car custom-enabled-themes))
            (prev-themes (seq-take-while
                          (lambda (theme)
                            (not (equal theme old-theme)))
                          (custom-available-themes)))
            (new-theme (if prev-themes
                           (car (last prev-themes))
                         (car (last (custom-available-themes))))))
       (~/load-theme new-theme t)
       (message "%s" new-theme)))
   "prev")
  ("n"
   (lambda ()
     (interactive)
     (let* ((current-theme (car custom-enabled-themes))
            (next-themes (cdr
                          (seq-drop-while
                           (lambda (theme)
                             (not (equal theme current-theme)))
                           (custom-available-themes))))
            (new-theme (if next-themes
                           (car next-themes)
                         (car (custom-available-themes)))))
       (~/load-theme new-theme t)
       (message "%s" new-theme)))
   "next")
  ("d"
   (lambda ()
     (interactive)
     (mapc #'disable-theme custom-enabled-themes))
   "disable"))

(defun ~/load-next-theme ()
  (interactive)
  (~/load-theme (~/theme-ring-next) t))


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
        (fira-code . "Fira Code")
        (fixedsys . "Fixedsys Excelsior 3.01")
        (gohu . "GohuFont")
        (inconsolata . "Inconsolata LGC")
        (input . "Input Mono")
        (iosevka . "IosevkaCC")
        (liberation . "Liberation Mono")
        (office-code-pro . "Office Code Pro")
        (menlo . "Menlo")
        (monaco . "Monaco")
        (monoid . "Monoid")
        (plex . "IBM Plex Mono")
        (pt . "PT Mono")
        (pt-mono . "PT Mono")
        (roboto . "Roboto Mono")
        (sax . "saxMono")
        (source-code-pro . "Source Code Pro")
        (terminus . "Terminus")
        (triplicate . "Triplicate T4c")
        (ubuntu . "Ubuntu Mono")
        (whois . "Whois")))

(defun ~/get-font (key)
  (cdr (assoc key ~/font-families-alist)))

(when (display-graphic-p)
 (global-set-key (kbd "s-=") '~/increase-font-height)
 (global-set-key (kbd "s--") '~/decrease-font-height)
 (global-set-key (kbd "C-=") '~/text-scale-up)
 (global-set-key (kbd "C--") '~/text-scale-down)
 (~/set-fonts :default-font (~/get-font 'monoid)))

(~/load-next-theme)

(provide 'init-theme)
