;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; JavaScript

;;;; Required packages

(package-require 'js2-mode)
(package-require 'skewer-mode)
(package-require 'smartparens)

(require 'js2-mode)
(require 'smartparens)

;;;; Settings

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq-default js2-basic-offset 2)

;; Prevents funky characters at the REPL.
(setenv "NODE_NO_READLINE" "1")

;;;; Functions

(defun nodejs-repl ()
  (interactive)
  (pop-to-buffer (make-comint "nodejs" "node")))

(provide 'noprompt-javascript)
