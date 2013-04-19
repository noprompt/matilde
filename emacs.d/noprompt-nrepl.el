;; nREPL

(defun evil-eval (&optional prefix)
  (interactive "P")
  (progn (goto-char (+ (point) 1))
         (if prefix 
             (progn (insert " ")
                    (nrepl-eval-last-expression prefix))
           (nrepl-eval-last-expression))
         (goto-char (- (point) 1))))

(setq nrepl-hide-special-buffers nil)

(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)

(add-hook 'nrepl-mode-hook
          (lambda ()
            (paredit-mode)
            (rainbow-delimiters-mode)))

(add-hook 'clojure-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map ",e" 'nrepl-eval-expression-at-point)
            (define-key evil-normal-state-local-map ",l" 'nrepl-load-file)))

(provide 'noprompt-nrepl)
