;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Key bindings

;;;; Required packages

(package-require 'ace-jump-mode)
(package-require 'key-chord)

(require 'ace-jump-mode)
(require 'key-chord)
(require 'noprompt-evil)

;;;; Settings

(key-chord-mode t)

;; Evil normal state bindings

(nmap (kbd "C-j") 'evil-scroll-page-down)
(nmap (kbd "C-k") 'evil-scroll-page-up)
(nmap (kbd "C-f") 'find-file)
(nmap "zo" 'evil-toggle-fold)
(nmap "zc" 'evil-toggle-fold)
(nmap (kbd "SPC") 'ace-jump-mode)
(nmap (kbd "S-SPC") 'ace-jump-mode-pop-mark)

;; Evil insert state bindings

(imap (kbd "C-j") 'next-line)
(imap (kbd "C-k") 'previous-line)
(imap (kbd "C-n") nil)
(imap (kbd "C-p") nil)

;;;; Escape

(define-key minibuffer-local-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-ns-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-completion-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-must-match-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-isearch-map [escape] 'keyboard-escape-quit)

;;;; Key-chord bindings

(key-chord-define-global "GH" 'evil-mode) ; Toggle evil-mode
(key-chord-define evil-insert-state-map ",e" 'evil-normal-state)
(key-chord-define evil-normal-state-map ",s" 'switch-to-buffer)
(key-chord-define evil-normal-state-map "xk" 'kill-buffer)

;; M-x emulation
(key-chord-define-global "x," 'smex)

(provide 'noprompt-key-bindings)
