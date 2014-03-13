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
(require 'noprompt-key-bindings)

;;;; Settings

(setq ruby-end-insert-newline nil)
(add-to-list 'auto-mode-alist '("^Gemfile$" . ruby-mode))

(eval-after-load "hideshow"
  '(add-to-list 'hs-special-modes-alist
                 `(ruby-mode
                   ,(rx (or "def" "class" "module" "{" "[")) ; Block start
                   ,(rx (or "}" "]" "end"))                  ; Block end
                   ,(rx (or "#" "=begin"))                   ; Comment start
                   ruby-forward-sexp nil)))
;;;; Functions

(defun ruby-mode-hook-for-fixing-ruby-electric ()
  (require 'ruby-electric)
  (ruby-electric-mode)
  (ruby-electric-mode -1))

(defun ruby-send-buffer ()
  (interactive)
  (ruby-send-region (point-min) (point-max)))

(defun ruby-send-line ()
  (interactive)
  (ruby-send-region (point-at-bol) (point-at-eol)))

;;;; Hooks

(remove-hook 'ruby-mode-hook 'ruby-electric-mode)
(add-hook 'ruby-mode-hook 'ruby-mode-hook-for-fixing-ruby-electric)
(add-hook 'ruby-mode-hook
	  (lambda ()
	    (nlmap ",b" 'ruby-send-buffer)
	    (nlmap ",l" 'ruby-send-line)))


(provide 'noprompt-ruby)
