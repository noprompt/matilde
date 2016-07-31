;; ---------------------------------------------------------------------
;; Ruby

(package-require 'inf-ruby)
;;(package-require 'rinari)
(package-require 'ruby-end)
(package-require 'ruby-test-mode)
(package-require 'ruby-tools)
;;(package-require 'request)
(package-require 'feature-mode)
(package-require 'yard-mode)
(package-require 'rbenv)
(package-require 'robe)

;; Enchanced Ruby Mode (https://github.com/jacott/Enhanced-Ruby-Mode)
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/non-elpa/Enhanced-Ruby-Mode/"))
;;(setq enh-ruby-program (shell-command-to-string "rbenv which ruby"))

(require 'ruby-mode)
(require 'init-key-bindings)
(require 'highlight-indentation)

;; ---------------------------------------------------------------------
;; Settings

(setq ~/burdock-mode-source-path
      (concat user-emacs-directory "lisp/burdock-mode/"))

(add-to-list 'load-path ~/burdock-mode-source-path)

(require 'burdock-mode)

(setq burdock-ruby-source-directory
      (concat ~/burdock-mode-source-path "ruby/"))

(defun ~/define-evil-keys-for-burdock-mode ()
  (interactive)
  (define-key evil-normal-state-local-map "D" 'burdock-kill)
  (define-key evil-normal-state-local-map ",e" 'burdock-evaluate-scope-at-point)
  (define-key evil-normal-state-local-map "W(" 'burdock-structured-wrap-round)
  (define-key evil-normal-state-local-map "W[" 'burdock-structured-wrap-square)
  (define-key evil-normal-state-local-map "W{" 'burdock-structured-wrap-curly)
  (define-key evil-normal-state-local-map "W\"" 'burdock-structured-wrap-double-quote)
  (define-key evil-normal-state-local-map "W'" 'burdock-structured-wrap-single-quote)
  (define-key evil-normal-state-local-map "Wl" 'burdock-structured-wrap-lambda)
  (define-key evil-normal-state-local-map "WL" 'burdock-structured-wrap-lambda-call)
  (define-key evil-normal-state-local-map [down] 'burdock-zip-down)
  (define-key evil-normal-state-local-map [up] 'burdock-zip-up)
  (define-key evil-normal-state-local-map [left] 'burdock-zip-left)
  (define-key evil-normal-state-local-map [right] 'burdock-zip-right))

(add-hook 'ruby-mode-hook 'burdock-mode)
(add-hook 'burdock-mode-hook '~/define-evil-keys-for-burdock-mode)
(add-hook 'burdock-mode-hook 'burdock-start)

;; ---------------------------------------------------------------------
;; Settings

(setq ruby-end-insert-newline nil)
(setq ruby-deep-indent-paren nil)
(setq ruby-deep-arglist nil)

(add-to-list 'auto-mode-alist '("\\.irbrc\\'" . ruby-mode))
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

(setq rbenv-installation-dir "/usr/local/bin/")

(when (not (boundp 'inf-ruby-implementations))
  (setq inf-ruby-implementations nil))

(defun ~/paths-to-root (file-name)
  (let* ((path-parts (s-split "/" (file-name-directory file-name) t))
	 (build-path (lambda (path-parts)
		       (concat "/" (s-join "/" path-parts))))
	 (paths (reduce (lambda (state _)
			  (let* ((old-path-parts (cdr state))
				 (new-path-parts (-butlast old-path-parts))
				 (old-paths (car state))
				 (new-paths (cons (funcall build-path new-path-parts) 
						  old-paths)))
			    `(,new-paths . ,new-path-parts)))
			path-parts
			:initial-value
			`(,(list (funcall build-path path-parts))
			  . ,path-parts))))
    (car paths)))

(defun ~/bundler-installed-p ()
  (stringp (executable-find "bundle")))

(defun ~/bundler-project-p ()
  (-any-p 'file-exists-p
	  (-map (lambda (path)
		  (concat path "/Gemfile"))
		(~/paths-to-root (buffer-file-name)))))

(defun ~/rbenv-installed-p ()
  (stringp (executable-find "rbenv")))

(defun ~/pry-installed-p ()
  (stringp (executable-find "pry")))

(defun ~/rails-project-p ()
  (-any-p 'file-exists-p
	  (-map (lambda (path)
		  (concat path "/bin/rails"))
		(~/paths-to-root (buffer-file-name)))))

(defun ~/conditionally-run-ruby ()
  (interactive)
  ;; This is what dying inside looks like...
  (let* ((ruby-command (if (and (~/bundler-installed-p) (~/bundler-project-p))
			   (if (~/rbenv-installed-p)
			       (if (~/rails-project-p)
				   "rbenv exec bundle exec rails console"
				 "rbenv exec bundle console")
			     "bundle console")
			 (if (~/pry-installed-p)
			     "pry"
			   "irb --prompt default --noreadline -r irb/completion"))))
    (setq inf-ruby-implementations
	  (cons `("ruby" . ,ruby-command)
		(delq (assoc "ruby" inf-ruby-implementations)
		      inf-ruby-implementations)))
    (setq inf-ruby-default-implementation "ruby")
    (run-ruby)))

;; ---------------------------------------------------------------------
;; Functions

(defun rb-scratch ()
  "Create/retrieve a Clojure scratch buffer and switch to it.."
  (interactive)
  (let ((buf (get-buffer-create "*rb-scratch*")))
    (switch-to-buffer buf)
    (ruby-mode)))

(defun ruby-repl-clear-buffer ()
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))

(defun run-rails-console ()
  (interactive)
  (inf-ruby "rails-console"))

;; ---------------------------------------------------------------------
;; Key bindings

(define-key ruby-mode-map (kbd "C-c M-j") '~/conditionally-run-ruby)

;; ---------------------------------------------------------------------
;; Hooks

(add-hook 'ruby-mode-hook 'yard-mode)
(add-hook 'ruby-mode-hook 'highlight-indentation-mode)
(add-hook 'ruby-mode-hook 'electric-pair-mode)

(provide 'init-ruby)
