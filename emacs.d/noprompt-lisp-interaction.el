;; Lisp interaction

(add-hook 'lisp-interaction-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map "(" 'paredit-backward-slurp-sexp)
            (define-key evil-normal-state-local-map ")" 'paredit-backward-barf-sexp)
            (define-key evil-normal-state-local-map "{" 'paredit-forward-barf-sexp)
            (define-key evil-normal-state-local-map "}" 'paredit-forward-slurp-sexp)
            (rainbow-delimiters-mode)))

(key-chord-define lisp-interaction-mode-map ",d" 'eval-defun)

(provide 'noprompt-lisp-interaction)
