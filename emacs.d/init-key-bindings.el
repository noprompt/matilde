;; =====================================================================
;; Key bindings

;; ---------------------------------------------------------------------
;; Required packages

(package-require 'ace-jump-mode)
(package-require 'key-chord)
(package-require 'smex)

(require 'smex)
(require 'ace-jump-mode)
(require 'key-chord)
(require 'init-evil)

;; ---------------------------------------------------------------------
;;;; Settings

(key-chord-mode t)

;; ---------------------------------------------------------------------
; Functions

;; TODO: Delete
(defun kcnmap (key def)
  "Define an Evil normal state key-chord sequence."
  (key-chord-define evil-normal-state-map key def))

;; TODO: Delete
(defun kcimap (key def)
  "Define an Evil insert state key-chord sequence."
  (key-chord-define evil-insert-state-map key def))

(defun ~/ido-recentf ()
  (interactive)
  (find-file (ido-completing-read "Find recent file: " recentf-list)))

;; ---------------------------------------------------------------------
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

;; ---------------------------------------------------------------------
;; Evil insert state bindings

(imap (kbd "C-j") 'next-line)
(imap (kbd "C-k") 'previous-line)
(imap (kbd "C-n") nil)
(imap (kbd "C-p") nil)

;; ---------------------------------------------------------------------
;; Escape

(define-key minibuffer-local-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-ns-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-completion-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-must-match-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-isearch-map [escape] 'keyboard-escape-quit)

;; ---------------------------------------------------------------------
;; Key-chord bindings

(key-chord-define-global ",x" 'smex) ;; M-x
(key-chord-define-global ",f" 'find-file)
(key-chord-define evil-normal-state-map ",k" 'kill-buffer)
(key-chord-define evil-normal-state-map ",r" '~/ido-recentf)
(key-chord-define evil-normal-state-map ",s" 'ido-switch-buffer)

(provide 'init-key-bindings)
