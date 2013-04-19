;; Lisp interaction

(add-hook 'lisp-interaction-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map "(" 'paredit-backward-slurp-sexp)
            (define-key evil-normal-state-local-map ")" 'paredit-backward-barf-sexp)
            (define-key evil-normal-state-local-map "{" 'paredit-forward-barf-sexp)
            (define-key evil-normal-state-local-map "}" 'paredit-forward-slurp-sexp)
            (define-key evil-normal-state-local-map "S" 'paredit-splice-sexp)
            (define-key evil-normal-state-local-map ",e" 'eval-defun)
            (rainbow-delimiters-mode)))

(provide 'noprompt-lisp-interaction)
