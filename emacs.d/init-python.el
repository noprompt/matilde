;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python

;;;; Required packages

(package-require 'python-mode)
(package-require 'smartparens)

(require 'python-mode)
(require 'smartparens)
(require 'noprompt-paredit)

;;;; Hooks

(add-hook 'python-mode-hook 'smartparens-mode)
(add-hook 'python-mode-hook 'noprompt/define-paredit-keys)
(add-hook 'python-mode-hook 'rainbow-delimiters-mode)
(add-hook 'python-mode-hook (lambda () (electric-indent-mode -1)))

(provide 'noprompt-python)
