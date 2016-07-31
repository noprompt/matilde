(package-require 'tagedit)

(defun noprompt-define-evil-keys-for-tagedit-mode ()
  (interactive)
  (define-key evil-normal-state-local-map "S" 'tagedit-splice-tag)
  (define-key evil-normal-state-local-map "}" 'tagedit-forward-slurp-tag)
  (define-key evil-normal-state-local-map "{" 'tagedit-backward-slurp-tag))

(add-hook 'html-mode-hook 'noprompt-define-evil-keys-for-tagedit)

(provide 'init-html)
