;; Emacs lisp

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map "(" 'paredit-backward-slurp-sexp)
            (define-key evil-normal-state-local-map ")" 'paredit-backward-barf-sexp)
            (define-key evil-normal-state-local-map "{" 'paredit-forward-barf-sexp)
            (define-key evil-normal-state-local-map "}" 'paredit-forward-slurp-sexp)
            (define-key evil-normal-state-local-map "S" 'paredit-splice-sexp)
            (define-key evil-normal-state-local-map "t" 'clojure-test-run-test)
            (define-key evil-normal-state-local-map ",e" 'eval-defun)
            (rainbow-delimiters-mode)))

(provide 'noprompt-emacs-lisp)
