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
(add-hook 'nrepl-mode-hook 'rainbow-delimiters-mode)
;(add-hook 'nrepl-mode-hook 'subword-mode)

(provide 'noprompt-nrepl)
