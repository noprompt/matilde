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

;; Normal state

(nmap (kbd "C-j") 'evil-scroll-page-down)
(nmap (kbd "C-k") 'evil-scroll-page-up)
(nmap (kbd "C-f") 'find-file)
(nmap "W(" 'paredit-wrap-round)
(nmap "W[" 'paredit-wrap-square)
(nmap "W{" 'paredit-wrap-curly)

;; Insert state

; Function to implement a smarter TAB (EmacsWiki)
(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
   the minibuffer. Else, if mark is active, indents region. Else if
   point is at the end of a symbol, expands it. Else indents the
   current line."
  (interactive)
  (if (minibufferp)
      (unless (minibuffer-complete)
        (hippie-expand nil))
    (if mark-active
        (indent-region (region-beginning)
                       (region-end))
      (if (looking-at "\\_>")
         (hippie-expand nil)
        (indent-for-tab-command)))))

;;(imap (kbd "TAB") 'smart-tab)
(imap (kbd "C-j") 'next-line)
(imap (kbd "C-n") 'next-line)
(imap (kbd "C-k") 'previous-line)
(imap (kbd "C-p") 'previous-line)

(provide 'noprompt-evil)
