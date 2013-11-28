;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autocomplete

(package-require 'auto-complete)

(require 'auto-complete)
(require 'auto-complete-config)

;;;; Settings

(ac-config-default)
(add-to-list 'ac-dictionary-directories
	     "~/.emacs.d/elpa/auto-complete-1.4/dict")

(setq ac-quick-help-delay 1)

;;;; Functions

(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))

;;;; Hooks

(add-hook 'auto-complete-mode-hook
	  'set-auto-complete-as-completion-at-point-function)

;;;; Keybindings

(define-key ac-mode-map (kbd "C-n") 'ac-next)
(define-key ac-mode-map (kbd "C-p") 'ac-previous)

(provide 'noprompt-auto-complete)
