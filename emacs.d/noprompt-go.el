(package-require 'go-mode)

(require 'go-mode)

(add-to-list 'auto-mode-alist '("\\.go$" . go-mode))

(provide 'noprompt-go)
