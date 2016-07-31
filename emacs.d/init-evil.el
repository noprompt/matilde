;; =====================================================================
;; Evil

;; ---------------------------------------------------------------------
;; Required packages

(package-require 'evil)
(package-require 'evil-paredit)
(package-require 'evil-mc)

(require 'evil)

;; ---------------------------------------------------------------------
;; Settings

(evil-mode t)

(setq evil-shift-width 2
      evil-default-cursor t)

;; Fixes borked electric-indent in Emacs 24
(define-key evil-insert-state-map [remap newline] 'evil-ret-and-indent)

;; ---------------------------------------------------------------------
;; Functions


;; TODO: Remove
(defun gui (face &rest options)
  "Shorthand for set-face-attribute for FACE."
  (progn
    (eval (append '(set-face-attribute face nil) options))))

;; TODO: Remove
(defun guibg (face color)
  "Set face background for FACE to COLOR."
  (set-face-background face color))

;; TODO: Remove
(defun guifg (face color)
  "Set face foreground for FACE to COLOR."
  (set-face-foreground face color))

;; TODO: Remove
(defun nmap (key def)
  "Define an Evil normal state sequence."
  (define-key evil-normal-state-map key def))

;; TODO: Remove
(defun nmmap (keymap key def)
  "Define an Evil normal state sequence for a mode."
  (evil-define-key 'normal keymap key def))

;; TODO: Remove
(defun nlmap (key def)
  "Define a local Evil normal state sequence."
  (define-key evil-normal-state-local-map key def))

;; TODO: Remove
(defun imap (key def)
  "Define an Evil insert state sequence."
  (define-key evil-insert-state-map key def))

;; TODO: Remove
(defun ilmap (key def)
  "Define a local Evil insert state sequence."
  (define-key evil-insert-state-local-map key def))

(provide 'init-evil)
