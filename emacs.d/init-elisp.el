;; =====================================================================
;; Emacs lisp

;; ---------------------------------------------------------------------
;; Required packages

(package-require 'paredit)
(package-require 'rainbow-delimiters)

(require 'init-paredit)
(require 'init-lisp)

;; ---------------------------------------------------------------------
;; Hooks


;; ---------------------------------------------------------------------
;; Keybindings

(defun ~/define-emacs-lisp-mode-keys ()
  (nlmap ",e" 'eval-defun)
  (nlmap ",l" 'eval-buffer)

  (define-key emacs-lisp-mode-map
    (kbd "C-c C-d") 'lispy-describe-inline)

  (define-key emacs-lisp-mode-map
    (kbd "C-c D") 'lispy-describe)

  (define-key emacs-lisp-mode-map (kbd "C-;")
    'elisp-eval-expression-at-point-in-ielm))

(defun ~/elisp/setup ()
  (~/setup-lisp-mode)
  (~/define-emacs-lisp-mode-keys))

(add-hook 'emacs-lisp-mode-hook '~/elisp/setup)

(provide 'init-elisp)
