;; ---------------------------------------------------------------------
;; Ruby

(package-require 'inf-ruby)
(package-require 'rinari)
(package-require 'ruby-end)
(package-require 'ruby-test-mode)
(package-require 'ruby-tools)
(package-require 'ruby-electric)
(package-require 'request)
(package-require 'feature-mode)
(package-require 'yard-mode)
(package-require 'autopair)

;; Enchanced Ruby Mode (https://github.com/jacott/Enhanced-Ruby-Mode)
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/non-elpa/Enhanced-Ruby-Mode/"))
;;(setq enh-ruby-program (shell-command-to-string "rbenv which ruby"))

(require 'ruby-mode)
(require 'ruby-end)
(require 'ruby-electric)
(require 'noprompt-key-bindings)
(require 'highlight-indentation)

;; ---------------------------------------------------------------------
;; Settings

(setq ruby-end-insert-newline nil)
(setq ruby-deep-indent-paren nil)

(add-to-list 'auto-mode-alist '("\\.pryrc\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile\\'" . ruby-mode))

(eval-after-load "hideshow"
  '(add-to-list 'hs-special-modes-alist
                 `(ruby-mode
		   ;; Block start
                   ,(rx (or "def" "class" "module" "{" "[")) 
		   ;; Block end
                   ,(rx (or "}" "]" "end"))
		   ;; Comment start
                   ,(rx (or "#"))
                   ruby-forward-sexp nil)))

(when (executable-find "pry")
  (when (not (boundp 'inf-ruby-implementations))
    (setq inf-ruby-implementations ()))
  (add-to-list 'inf-ruby-implementations '("pry" . "rbenv exec pry"))
  (setq inf-ruby-default-implementation "pry"))

;; ---------------------------------------------------------------------
;; Functions

(defun rb-scratch ()
  "Create/retrieve a Clojure scratch buffer and switch to it.."
  (interactive)
  (let ((buf (get-buffer-create "*rb-scratch*")))
    (switch-to-buffer buf)
    (ruby-mode)))

(defun ruby-mode-hook-for-fixing-ruby-electric ()
  (ruby-electric-mode)
  (ruby-electric-mode -1))

(defun ruby-repl-clear-buffer ()
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer))) 

(defun run-rails-console ()
  (interactive)
  (inf-ruby "rails-console"))

;; ---------------------------------------------------------------------
;; Key bindings

(define-key ruby-mode-map (kbd "C-c M-j") 'run-ruby)

;; ---------------------------------------------------------------------
;; Hooks

(remove-hook 'ruby-mode-hook 'ruby-electric-mode)
(add-hook 'ruby-mode-hook 'yard-mode)
(add-hook 'ruby-mode-hook 'ruby-mode-hook-for-fixing-ruby-electric)
(add-hook 'ruby-mode-hook 'highlight-indentation-mode)
(add-hook 'ruby-mode-hook 'autopair-mode)

(provide 'noprompt-ruby)
