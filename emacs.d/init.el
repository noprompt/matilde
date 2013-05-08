(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(require 'noprompt-util)
(require 'noprompt-package)
(require 'noprompt-display)
(require 'noprompt-evil)
(require 'noprompt-keyboard)

(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)


;; ElScreen
(require 'elscreen)
(nmap (kbd "C-w t") 'elscreen-create)
(nmap (kbd "C-w x") 'elscreen-kill)
(nmap "gh" 'elscreen-previous)
(nmap "gl" 'elscreen-next)

;; Language hooks
(require 'noprompt-clojure)
(require 'noprompt-nrepl)
(require 'noprompt-lisp-interaction)
(require 'noprompt-emacs-lisp)
(require 'noprompt-ruby)
(require 'noprompt-prolog)
