;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Evil

;;;; Required packages

(package-require 'evil)
(package-require 'evil-paredit)

(require 'evil)

;;;; Settings

(evil-mode t)

(setq evil-shift-width 2
      evil-default-cursor t)

;;;; Functions

(defun gui (face &rest options)
  "Shorthand for set-face-attribute for FACE."
  (progn
    (eval (append '(set-face-attribute face nil) options))))

(defun guibg (face color)
  "Set face background for FACE to COLOR."
  (set-face-background face color))

(defun guifg (face color)
  "Set face foreground for FACE to COLOR."
  (set-face-foreground face color))

(defun nmap (key def)
  "Define an Evil normal state sequence."
  (define-key evil-normal-state-map key def))

(defun nmmap (keymap key def)
  "Define an Evil normal state sequence for a mode."
  (evil-define-key 'normal keymap key def))

(defun nlmap (key def)
  "Define a local Evil normal state sequence."
  (define-key evil-normal-state-local-map key def))

(defun imap (key def)
  "Define an Evil insert state sequence."
  (define-key evil-insert-state-map key def))

(defun ilmap (key def)
  "Define a local Evil insert state sequence."
  (define-key evil-insert-state-local-map key def))

;;;; Hooks

;(add-hook 'prog-mode-hook 'evil-close-folds)

(provide 'noprompt-evil)
