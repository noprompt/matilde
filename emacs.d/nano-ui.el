(require 'color)

(setq-default mode-line-format nil)
(setq nano-font "Victor Mono")
(setq nano-mode-line-format nil)
(setq nano-font-height 150)

(defun nano-frame-default-alist ()
  (list
   `(font . ,nano-font)
   '(internal-border-width . 1)
   '(vertical-scroll-bars . nil)
   '(left-fringe . 32)
   '(right-fringe . 32)
   '(tool-bar-lines . 0)
   '(menu-bar-lines . 0)))

(defun nano-set-default-frame-alist  ()
  (setq default-frame-alist (nano-frame-default-alist)))

(nano-set-default-frame-alist)

(setq inhibit-startup-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t
      initial-scratch-message nil)

(tool-bar-mode 0)

(menu-bar-mode 0)

(tooltip-mode 0)

(setq org-hide-emphasis-markers t)


;; Header line
;; -----------

(defun header-line-render (left right)
  (let* ((available-width (- (window-total-width) (length left) )))
    (format (format "%%s%%%ds" available-width) left right)))

(setq-default header-line-format
              '((:eval
                 (header-line-render
                  (format-mode-line
                   (list
                    (cond ((and buffer-file-name (buffer-modified-p)) " [M] ")
                          (buffer-read-only                           " [RO] ")
                          (t                                          " "))
                    (propertize "%b" 'face '(:weight regular))
                    " (%m)"
                    (propertize " " 'display '(raise +0.25))
                    (propertize " " 'display '(raise -0.30))))
                  (format-mode-line
                   (list "%l:%c "))))))

;; Mode line
;; ---------

(setq-default mode-line-format nano-mode-line-format)

;; See https://200ok.ch/posts/...
;;   ... 2020-09-29_comprehensive_guide_on_handling_long_lines_in_emacs.html
(setq bidi-paragraph-direction 'left-to-right)
(if (version<= "27.1" emacs-version)
    (setq bidi-inhibit-bpa t))
(if (version<= "27.1" emacs-version)
    (global-so-long-mode 1))


;; (defun help-message ()
;;   (interactive)
;;   (let ((message-log-max nil))
;;     (message
;;      (concat
;;       "[C-x C-f] Open  [M-w] Copy   [C-w] Cut   [C-s] Search   ——  "
;;       (propertize "[C-g]   Cancel" 'face `(:foreground ,(face-attribute 'default :foreground)))
;;       "\n"
;;       "[C-x C-s] Save  [C-y] Paste  [C-/] Undo  [M-x] Command  ——  "
;;       (propertize "[C-x C-c] Quit" 'face `(:foreground ,(face-attribute 'default :foreground)))))
;;     ;; (message
;;     ;;  (concat
;;     ;;   "[⌘-O] Open [⌘-C] Copy  [⌘-X] Cut  [⌘-F] Search  [⌘-H] Help  "
;;     ;;   (propertize "[Esc] Cancel" 'face '(:foreground "black"))
;;     ;;   "\n"
;;     ;;   "[⌘-S] Save [⌘-V] Paste [⌘-Z] Undo [⌘-R] Replace [⌘-P] Command "
;;     ;;   (propertize "[⌘-Q] Quit" 'face '(:foreground "black"))))
;;     (sit-for 30)))

;;(help-message)
;; (define-key global-map (kbd "C-h") 'help-message)

(setq minibuffer-prompt-properties
      (quote (read-only nil
                        cursor-intangible t
                        face minibuffer-prompt)))

(defun nano-minibuffer-hook ()
  nil
  ;; (if (active-minibuffer-window)
  ;;     (with-current-buffer
  ;;         (window-buffer (active-minibuffer-window))
  ;;       (add-text-properties (point-min) (point-max)
  ;;       		     `(display '(raise +0.25)))))
  )

(defun nano-minibuffer-setup-hook ()
  (add-hook 'post-command-hook 'nano-minibuffer-hook))

(defun nano-minibuffer-exit-hook ()
  (remove-hook 'post-command-hook 'nano-minibuffer-hook))

(defun nano-command-error-function (data context caller)
  "Ignore some minor warnings."
  (when (not (memq (car data) '(quit
				beginning-of-line    end-of-line
				beginning-of-buffer  end-of-buffer
				end-of-file          buffer-read-only)))
    (command-error-default-function data context caller)))

(setq command-error-function #'nano-command-error-function)

(defun nano-message (orig-fun &rest args)
  (let* ((msg (if (car args) (apply 'format-message args) ""))
	 (split (string-match "\n.*\\'" msg)))
    (if split
	(let ((part-1 (substring msg 0 split))
	      ;; (part-2 (propertize (substring msg split) 'display '(raise +0.25)))
              (part-2 (substring msg split)))
	  (apply orig-fun (list (concat part-1 part-2))))
      ;;(apply orig-fun (list (propertize msg 'display '(raise +0.25))))
      (funcall orig-fun msg))))

(add-hook 'minibuffer-setup-hook 'nano-minibuffer-setup-hook)
(add-hook 'minibuffer-exit-hook 'nano-minibuffer-exit-hook)
(advice-add 'message :around #'nano-message)

(defun nano-refresh-mini-buffers ()
  (dolist (buffer (list " *Minibuf-0*" " *Echo Area 0*"
                        " *Minibuf-1*" " *Echo Area 1*"))
    (when (get-buffer buffer)
      (with-current-buffer buffer
        (face-remap-add-relative 'default `(:foreground ,(face-attribute 'default :foreground)))))))

(defun nano-refresh-frame-parameters ()
  (dolist (pair (nano-frame-default-alist))
    (set-frame-parameter nil (car pair) (cdr pair))))

(defun nano-accent-color-name (color)
  "Return COLOR lightened by 5% if it's lightness is less than 0.5 and
darkened by 5% otherwise."
  (pcase (color-name-to-rgb color)
    (`(,r ,g ,b)
     (pcase (color-rgb-to-hsl r g b)
       (`(,h ,s ,l)
        (if (< l 0.5)
            (color-lighten-name color 5)
          (color-darken-name color 5)))))))

(setq ~/typography-global-targets
      '(default
         header-line
         mode-line
         mode-line-inactive))

(defun nano-refresh-face-height ()
  (seq-do
   (lambda (face)
     (set-face-attribute face nil :height nano-font-height))
   ~/typography-global-targets))

(defun nano-refresh-face-attributes () 
  (set-face-attribute 'mode-line nil
                      :foreground (face-attribute 'default :foreground)
                      :background (face-attribute 'default :background)
                      :height 1
                      :overline nil
                      :underline nil
                      :box nil)

  (set-face-attribute 'mode-line-inactive nil
                      :foreground (face-attribute 'default :foreground)
                      :background (face-attribute 'default :background)
                      :height 1
                      :overline nil 
                      :underline nil
                      :inherit nil
                      :box nil)

  (set-face-attribute 'header-line nil
                      :foreground (face-attribute 'default :foreground)
                      :background (nano-accent-color-name (face-attribute 'default :background)) 
                      :weight 'light
                      :overline nil
                      :underline nil
                      :box nil
                      :box `(:line-width 1 :color ,(face-attribute 'default :background), :style nil)
                      :inherit nil)

  (set-face-attribute 'internal-border nil
                      :foreground (face-attribute 'default :foreground))

  (set-face-attribute 'fringe nil
                      :foreground (face-attribute 'default :foreground)
                      :background (face-attribute 'default :background))

  (set-face-attribute 'bold nil
                      :weight 'medium)

  (when (facep 'linum)
    (set-face-attribute 'linum nil
                        :foreground (nano-accent-color-name (face-attribute 'default :background)) 
                        :background (face-attribute 'default :background)))

  (nano-refresh-face-height))

(defun nano-load-theme (theme)
  (interactive
   (list (intern (completing-read "Load custom theme: " (mapcar 'symbol-name (custom-available-themes))))))

  ;; Disable all currently enabled themes
  (mapcar #'disable-theme custom-enabled-themes)

  ;; Load the theme without prompting
  (load-theme theme t nil)

  (nano-refresh-frame-parameters)
  (nano-refresh-face-attributes)
  (nano-refresh-mini-buffers))

(defun nano-linum-before-numbering-hook ()
  (setq linum-format (format " %%%dd" (length (number-to-string (count-lines (point-min) (point-max)))))))
(add-hook 'linum-before-numbering-hook 'nano-linum-before-numbering-hook)


;; Typography controls
;; ---------------------------------------------------------------------



(defun nano-increase-font-height ()
  "Increase the current global font height by 10pts."
  (interactive)
  (setq nano-font-height (+ nano-font-height 10))
  (when (display-graphic-p)
    (seq-do
     (lambda (face)
       (set-face-attribute face nil :height nano-font-height))
     ~/typography-global-targets)))

(defun nano-decrease-font-height ()
  "Decrease the current global font height by 10pts."
  (interactive)
  (setq nano-font-height (- nano-font-height 10))
  (when (display-graphic-p)
    (seq-do
     (lambda (face)
       (set-face-attribute face nil :height nano-font-height))
     ~/typography-global-targets)))

(defun ~/mono-font-family-list ()
  (seq-filter
   (lambda (font)
     (let ((info (font-info font)))
       (if info
           (string-match-p "spacing=100" (aref info 1)))))
   (font-family-list)))

(defun nano-pick-font (font)
  (interactive
   (list (completing-read "Font: " (~/mono-font-family-list))))
  (dolist (face ~/typography-global-targets)
    (set-face-attribute face nil :font font))
  (setq nano-font font)
  t)

(global-set-key (kbd "C-=") 'nano-increase-font-height)
(global-set-key (kbd "C--") 'nano-decrease-font-height)

(defun ~/set-default-face-weight (weight)
  (interactive
   (list (completing-read "Weight: " '(ultra-bold extra-bold bold semi-bold normal semi-light light extra-light ultra-light))))
  (set-face-attribute 'default nil :weight (intern-soft weight))
  t)
