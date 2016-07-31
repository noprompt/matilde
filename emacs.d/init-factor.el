(add-to-list 'load-path "/Applications/factor/misc/fuel")
(require 'factor-mode)

(setq fuel-factor-root-dir "/Applications/factor")
(require 'fuel-mode)

(add-to-list 'auto-mode-alist '("\\.factor$" . factor-mode))

(provide 'init-factor)
