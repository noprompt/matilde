;; Evil 
(require 'evil)
(evil-mode t)
(setq evil-shift-width 2)
(setq evil-default-cursor t)

(defun gui (face &rest options)
  "Shorthand for set-face-attribute for FACE."
  (progn
    (eval (append '(set-face-attribute face nil) options))
    (when (and (display-graphic-p)
               (fboundp 'maximize-frame))
      (maximize-frame))))

(defun guibg (face color)
  "Set face background for FACE to COLOR."
  (set-face-background face color))

(defun guifg (face color)
  "Set face foreground for FACE to COLOR."
  (set-face-foreground face color))

(defun nmap (key def)
  "Define an Evil normal state sequence."
  (define-key evil-normal-state-map key def))

(defun imap (key def)
  "Define an Evil insert state sequence."
  (define-key evil-insert-state-map key def))

(provide 'noprompt-evil)
