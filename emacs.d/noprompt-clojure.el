;; Clojure
(require 'clojure-mode)

(add-hook 'clojure-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map "(" 'paredit-backward-slurp-sexp)
            (define-key evil-normal-state-local-map ")" 'paredit-backward-barf-sexp)
            (define-key evil-normal-state-local-map "{" 'paredit-forward-barf-sexp)
            (define-key evil-normal-state-local-map "}" 'paredit-forward-slurp-sexp)
            (define-key evil-normal-state-local-map "S" 'paredit-splice-sexp)
            (define-key evil-normal-state-local-map "T" 'transpose-sexps)
            (define-key evil-normal-state-local-map "t" 'clojure-test-run-test)
            (rainbow-delimiters-mode)))

(provide 'noprompt-clojure)
