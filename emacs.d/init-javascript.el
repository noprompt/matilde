;; ---------------------------------------------------------------------
;; JavaScript

;;;; Required packages

(package-require 'js2-mode)
(package-require 'skewer-mode)
(package-require 'smartparens)
(package-require 'coffee-mode)

(require 'js2-mode)
(require 'smartparens)
(require 'coffee-mode)

;;;; Settings

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq-default js2-basic-offset 2)
(setq-default coffee-tab-width 2)

;; Prevents funky characters at the REPL.
(setenv "NODE_NO_READLINE" "1")

;;;; Functions

(defun nodejs-repl ()
  (interactive)
  (pop-to-buffer (make-comint "nodejs" "node")))

(provide 'init-javascript)
