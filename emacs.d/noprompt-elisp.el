;; =====================================================================
;; Emacs lisp

;; ---------------------------------------------------------------------
;; Required packages

(package-require 'paredit)
(package-require 'rainbow-delimiters)

(require 'noprompt-paredit)
(require 'noprompt-lisp)

;; ---------------------------------------------------------------------
;; Hooks

(defun ac-emacs-lisp-mode ()
  (setq ac-sources '(ac-source-symbols
		     ac-source-abbrev
		     ac-source-variables
		     ac-source-functions)))

;; ---------------------------------------------------------------------
;; Keybindings

(defun noprompt/define-emacs-lisp-mode-keys ()
  (nlmap ",e" 'eval-defun)
  (nlmap ",l" 'eval-buffer)

  (define-key emacs-lisp-mode-map
    (kbd "C-c C-d") 'lispy-describe-inline)

  (define-key emacs-lisp-mode-map
    (kbd "C-c D") 'lispy-describe)

  (define-key emacs-lisp-mode-map (kbd "C-;")
    'elisp-eval-expression-at-point-in-ielm))

(defun setup-elisp-mode ()
  (noprompt/setup-lisp-mode)
  (auto-complete-mode)
  (ac-emacs-lisp-mode)
  (noprompt/define-emacs-lisp-mode-keys))

(add-hook 'emacs-lisp-mode-hook 'setup-elisp-mode)

(provide 'noprompt-elisp)
