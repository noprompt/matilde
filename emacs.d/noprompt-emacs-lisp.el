;; Emacs lisp

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map "(" 'paredit-backward-slurp-sexp)
            (define-key evil-normal-state-local-map ")" 'paredit-backward-barf-sexp)
            (define-key evil-normal-state-local-map "{" 'paredit-forward-barf-sexp)
            (define-key evil-normal-state-local-map "}" 'paredit-forward-slurp-sexp)
            (define-key evil-normal-state-local-map ",d" 'eval-defun)
            (rainbow-delimiters-mode)))

(provide 'noprompt-emacs-lisp)
