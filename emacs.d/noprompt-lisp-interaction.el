;; =====================================================================
;; Lisp interaction

;; ---------------------------------------------------------------------
;; Required packages

(package-require 'paredit)
(package-require 'rainbow-delimiters)

(require 'noprompt-paredit)
(require 'noprompt-lisp)

;; ---------------------------------------------------------------------
;; Hooks

(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'noprompt/define-paredit-keys)
(add-hook 'emacs-lisp-mode-hook (lambda () (nlmap ",e" 'eval-defun)))

;; ---------------------------------------------------------------------
;; Keybindings

(define-key emacs-lisp-mode-map (kbd "C-;")
    'elisp-eval-expression-at-point-in-ielm)

(provide 'noprompt-lisp-interaction)
