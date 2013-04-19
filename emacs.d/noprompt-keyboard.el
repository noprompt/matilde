(require 'noprompt-evil)
(require 'key-chord)
(key-chord-mode 1)

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

; Normal state

(nmap (kbd "C-j") 'evil-scroll-page-down)
(nmap (kbd "C-k") 'evil-scroll-page-up)
(nmap (kbd "C-f") 'find-file)

(nmap "W(" 'paredit-wrap-round)
(nmap "W[" 'paredit-wrap-square)
(nmap "W{" 'paredit-wrap-curly)

; Insert state

(imap (kbd "TAB") 'smart-tab)
(imap (kbd "C-j") 'next-line)
(imap (kbd "C-k") 'previous-line)

;; Chords

; M-x
(key-chord-define-global "x," 'execute-extended-command)

; Toggle evil-mode
(key-chord-define-global "GH" 'evil-mode) 
(key-chord-define evil-insert-state-map ",e" 'evil-normal-state)
(key-chord-define evil-normal-state-map ",s" 'switch-to-buffer)
(key-chord-define evil-normal-state-map "xk" 'kill-buffer)

(provide 'noprompt-keyboard)
