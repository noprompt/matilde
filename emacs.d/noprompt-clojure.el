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
            (put-clojure-indent 'select 'defun)
            (put-clojure-indent 'insert 'defun)
            (put-clojure-indent 'create-table 'defun)
            (put-clojure-indent 'drop-table 'defun)
            (put-clojure-indent 'GET 'defun)
            (put-clojure-indent 'POST 'defun)
            (rainbow-delimiters-mode)))

(provide 'noprompt-clojure)
