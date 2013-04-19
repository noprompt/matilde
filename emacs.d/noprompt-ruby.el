;; Ruby
(require 'ruby-mode)
(require 'ruby-end)

(add-hook 'ruby-mode-hook
          (lambda ()
            (define-key evil-visual-state-local-map "s" 'ruby-send-region)))

(provide 'noprompt-ruby)
