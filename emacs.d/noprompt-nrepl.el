;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; nREPL

;;;; Required packages

(package-require 'nrepl)
(package-require 'rainbow-delimiters)

(require 'nrepl)
(require 'noprompt-clojure)
(require 'noprompt-auto-complete)
;;(require 'ac-nrepl)

;;;; Settings

(setq nrepl-hide-special-buffers t)
(setq nrepl-buffer-name-separator "-")
(setq nrepl-buffer-name-show-port t)
(setq nrepl-popup-stacktraces nil)
(setq nrepl-popup-stacktraces-in-repl t)
(setq nrepl-history-file "~/.emacs.d/nrepl-history")

;;(eval-after-load "auto-complete" '(add-to-list 'ac-modes 'nrepl-mode))

;;;; Hooks

(add-hook 'nrepl-connected-hook 'nrepl-enable-on-existing-clojure-buffers)
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
;;(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'nrepl-mode-hook 'rainbow-delimiters-mode)
(add-hook 'nrepl-mode-hook
	  'set-auto-complete-as-completion-at-point-function)
(add-hook 'nrepl-interaction-mode-hook
	  'set-auto-complete-as-completion-at-point-function)

;;;; Javert

;;(load-file "~/.emacs.d/javert/nrepl-inspect.el")
;;(define-key nrepl-mode-map (kbd "C-c i") 'nrepl-inspect)

(provide 'noprompt-nrepl)
