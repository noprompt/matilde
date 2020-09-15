;; ---------------------------------------------------------------------
;; Theme settings

(require 'init-util)
(require 'color)

;; ---------------------------------------------------------------------
;; Theme packages

(package-require 'atom-one-dark-theme)
(package-require 'badwolf-theme)
(package-require 'base16-theme)
(package-require 'brutalist-theme)
(package-require 'cyberpunk-theme)
(package-require 'darktooth-theme)
(package-require 'doom-themes)
(package-require 'eink-theme)
(package-require 'gruvbox-theme)
(package-require 'hamburg-theme)
(package-require 'jazz-theme)
(package-require 'kaolin-themes)
(package-require 'monotropic-theme)
(package-require 'noctilux-theme)
(package-require 'seti-theme)
(package-require 'smyx-theme)

;; The doom themes seem to assume this variable is bound.
(if (not (boundp 'region-fg))
    (defvar region-fg
      nil))

;; ---------------------------------------------------------------------
;; Theme configuration


(defconst ~/theme-ring-file-path
  (concat user-emacs-directory 
          (if (display-graphic-p)
              "lisp/theme-list.el"
            "lisp/theme-256-list.el")))


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
      (insert "(")
      (dolist (theme new-theme-list)
        (newline-and-indent)
        (insert (symbol-name theme)))
      (newline)
      (insert ")")
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
  (interactive
   (list
    (intern (completing-read "Load custom theme: " (mapcar 'symbol-name (custom-available-themes))))
    t nil))
  (let ((current-default-font (face-attribute 'default :font))
        (current-mode-line-font (face-attribute 'mode-line :font))
        (current-default-height (face-attribute 'default :height))
        (current-mode-line-height (face-attribute 'mode-line :height)))
    (~/disable-all-themes)
    (load-theme theme no-confirm no-enable)
    ;; Some themes like to mess with linum-format. Shame on them.
    (setq linum-format 'dynamic)
    (set-face-attribute 'default nil :height current-default-height)
    (set-face-attribute 'mode-line nil :height current-mode-line-height)
    (set-face-attribute 'default nil :font current-default-font)
    (set-face-attribute 'mode-line nil :font current-mode-line-font)
    (set-face-attribute 'font-lock-comment-face nil :slant 'italic)
    (set-face-attribute 'font-lock-doc-face nil :slant 'italic))
  t)


(defun ~/theme/prev-themes ()
  (let* ((current-theme (car custom-enabled-themes))
         (prev-themes (reverse
                       (seq-take-while
                        (lambda (theme)
                          (not (equal theme current-theme)))
                        (custom-available-themes)))))
    (or prev-themes (reverse (custom-available-themes)))))

(defun ~/theme/next-themes ()
  (let* ((current-theme (car custom-enabled-themes))
         (next-themes (cdr
                       (seq-drop-while
                        (lambda (theme)
                          (not (equal theme current-theme)))
                        (custom-available-themes)))))
    (or next-themes (custom-available-themes))))

(defhydra ~/hydra-pick-theme (nil nil)
  "Theme"
  ("p"
   (lambda ()
     (interactive)
     (letrec ((load-prev-theme
               (lambda (prev-themes)
                 (condition-case nil
                     (let ((new-theme (car prev-themes)))
                       (~/load-theme (car prev-themes) t)
                       (message "%s" new-theme))
                   (error
                    (funcall load-prev-theme (cdr prev-themes)))))))
       (funcall load-prev-theme (~/theme/prev-themes))))
   "prev")
  ("n"
   (lambda ()
     (interactive)
     (letrec ((load-next-theme
               (lambda (next-themes)
                 (condition-case nil
                     (let ((new-theme (car next-themes)))
                       (~/load-theme (car next-themes) t)
                       (message "%s" new-theme))
                   (error
                    (funcall load-next-theme (cdr next-themes)))))))
       (funcall load-next-theme (~/theme/next-themes))))
   "next")
  ("l"
   (lambda ()
     (interactive)
     (setq linum-format 'dynamic))
   "dynamic linum")
  ("d"
   (lambda ()
     (interactive)
     (mapc #'disable-theme custom-enabled-themes))
   "disable"))

(defun ~/load-next-theme ()
  (interactive)
  (~/load-theme (~/theme-ring-next) t))

(defun ~/decrease-transparency ()
  "Decrease selected-frame transparency by 1."
  (interactive)
  (pcase (frame-parameter (selected-frame) 'alpha)
    ('nil
     '(100 . 100))

    (`(100 . 100)
     '(100 . 100))

    (`(,alpha-1 . 100)
     (set-frame-parameter (seected-frame) 'alpha `(,(+ alpha-1 1) . 100)))

    (`(100 . ,alpha-2)
     (set-frame-parameter (selected-frame) 'alpha `(100 . ,(+ alpha-2 1))))

    (`(,alpha-1 . ,alpha-2)
     (set-frame-parameter (selected-frame) 'alpha `(,(+ alpha-1 1) . ,(+ alpha-2 1))))))

(defun ~/increase-transparency ()
  "Increase selected-frame transparency by 1."
  (interactive)
  (pcase (frame-parameter (selected-frame) 'alpha)
    ('nil
     (set-frame-parameter (selected-frame) 'alpha `(99 . 99)))

    (`(0 . 0)
     '(0 . 0))

    (`(,alpha-1 . 0)
     (set-frame-parameter (selected-frame) 'alpha `(,(- alpha-1 1) . 100)))

    (`(0 . ,alpha-2)
     (set-frame-parameter (selected-frame) 'alpha `(100 . ,(- alpha-2 1))))

    (`(,alpha-1 . ,alpha-2)
     (set-frame-parameter (selected-frame) 'alpha `(,(- alpha-1 1) . ,(- alpha-2 1))))))

(defhydra ~/hydra-transparency (nil nil)
  "Transparency"
  ("i" ~/increase-transparency "increase")
  ("d" ~/decrease-transparency "decrease"))


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
  (let* ((default-font-height 140)
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
        (anonymous-pro . "Anonymous Pro")
        (camingo . "Camingo Code")
        (code-new-roman . "Code New Roman")
        (consolas . "Consolas")
        ;; http://cm-unicode.sourceforge.net/download.html
        (computer-modern . "CMU Typewriter Text")
        (courier . "Courier")
        (courier-new . "Courier New")
        (courier-prime-code . "Courier Prime Code")
        (fantasque . "Fantasque Sans Mono")
        (fira-code . "Fira Code")
        (fixedsys . "Fixedsys Excelsior 3.01")
        (gohu . "GohuFont")
        ;; https://github.com/iaolo/iA-Fonts
        (ia-writer . "iA Writer Duospace")
        (inconsolata . "Inconsolata LGC")
        (input . "Input Mono Compressed")
        (iosevka . "IosevkaCC")
        (liberation . "Liberation Mono")
        (office-code-pro . "Office Code Pro")
        (overpass . "Overpass Mono")
        (menlo . "Menlo")
        (monaco . "Monaco")
        (monoid . "Monoid")
        (nanum . "NanumGothicCoding")
        (plex . "IBM Plex Mono")
        (pt-mono . "PT Mono")
        (pf-din . "PFDin")
        (pragmata . "PragmataPro")
        (roboto . "Roboto Mono")
        (sax . "saxMono")
        (source-code-pro . "Source Code Pro")
        (terminus . "Terminus")
        ;; https://practicaltypography.com/triplicate.html
        (triplicate . "Triplicate T4c")
        ;; http://unifoundry.com/unifont/index.html
        (uni . "Unifont")
        (ubuntu . "Ubuntu Mono")
        (victor . "Victor Mono")
        (whois . "Whois")))

(defun ~/get-font (key)
  (cdr (assoc key ~/font-families-alist)))

(defun ~/set-font (key)
  (let ((font (~/get-font key)))
    (set-face-attribute 'default nil :font font)
    (set-face-attribute 'mode-line nil :font font)))

(defun ~/mono-font-family-list ()
  (seq-filter
   (lambda (font)
     (let ((info (font-info font)))
       (if info
           (string-match-p "spacing=100" (aref info 1)))))
   (font-family-list)))

(defun ~/pick-font (font)
  (interactive
   (list (completing-read "Font: " (~/mono-font-family-list))))
  (set-face-attribute 'default nil :font font)
  (set-face-attribute 'mode-line nil :font font)
  t)


;; ---------------------------------------------------------------------
;; UI Initialization

(when (display-graphic-p)
  (global-set-key (kbd "s-=") '~/increase-font-height)
  (global-set-key (kbd "s--") '~/decrease-font-height)
  (global-set-key (kbd "C-=") '~/text-scale-up)
  (global-set-key (kbd "C--") '~/text-scale-down)
  (setq linum-format 'dynamic)
  (~/set-fonts :default-font (~/get-font 'input)))

(~/load-next-theme)

(provide 'init-theme)
