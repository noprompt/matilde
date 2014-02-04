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

;;; Functions

(defun kcnmap (key def)
  "Define an Evil normal state key-chord sequence."
  (key-chord-define evil-normal-state-map key def))

(defun kcimap (key def)
  "Define an Evil insert state key-chord sequence."
  (key-chord-define evil-insert-state-map key def))

(defun ido-recentf ()
  (interactive)
  (find-file (ido-completing-read "Find recent file: " recentf-list)))

;; Evil normal state bindings

(nmap (kbd "C-j") 'evil-scroll-page-down)
(nmap (kbd "C-k") 'evil-scroll-page-up)
(nmap (kbd "C-f") 'find-file)
(nmap "zo" 'evil-toggle-fold)
(nmap "zc" 'evil-toggle-fold)
(nmap (kbd "SPC") 'ace-jump-mode)
(nmap (kbd "S-SPC") 'ace-jump-mode-pop-mark)
(nmap (kbd "s-[") 'evil-prev-buffer)
(nmap (kbd "s-]") 'evil-next-buffer)

;; Evil insert state bindings

(imap (kbd "C-j") 'next-line)
(imap (kbd "C-k") 'previous-line)
(imap (kbd "C-n") nil)
(imap (kbd "C-p") nil)

;; Escape

(define-key minibuffer-local-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-ns-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-completion-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-must-match-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-isearch-map [escape] 'keyboard-escape-quit)

;;;; Key-chord bindings

(key-chord-define-global "GH" 'evil-mode) ; Toggle evil-mode
(kcimap ",e" 'evil-normal-state)
(kcnmap ",s" 'ido-switch-buffer)
(kcnmap ",r" 'ido-recentf)
(kcnmap "xk" 'kill-buffer)

;; M-x emulation
(key-chord-define-global "x," 'smex)


(provide 'noprompt-key-bindings)
