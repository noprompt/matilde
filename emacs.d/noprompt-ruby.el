;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ruby

;;;; Required packages

(package-require 'inf-ruby)
(package-require 'rinari)
(package-require 'ruby-end)
(package-require 'ruby-test-mode)
(package-require 'ruby-tools)

(require 'ruby-mode)
(require 'ruby-end)

;;;; Settings

(setq ruby-end-insert-newline nil)

;;;; Functions

(defun ruby-mode-hook-for-fixing-ruby-electric ()
  (require 'ruby-electric)
  (ruby-electric-mode)
  (ruby-electric-mode -1))

;;;; Hooks

(remove-hook 'ruby-mode-hook 'ruby-electric-mode)
(add-hook 'ruby-mode-hook 'ruby-mode-hook-for-fixing-ruby-electric)

(provide 'noprompt-ruby)
