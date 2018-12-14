(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; ---------------------------------------------------------------------
;; GENERAL SETTINGS

;; Disable the splash screen.
(setq inhibit-startup-message t)

;; Turn on column numbers.
(column-number-mode 1)

;; Turn off scroll bars, the tool bar, and the menu bar.
(dolist (mode '(menu-bar-mode scroll-bar-mode tool-bar-mode))
  (when (fboundp mode)
    (funcall mode -1)))

;; Turn off the visual bell.
(setq visible-bell nil)

;; Highlight matching brackets.
(show-paren-mode 1)

;; Smooth scrolling.
(setq scroll-step 1)
(setq scroll-conservatively 10000)

;; Mouse scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; Ask for y/n instead of yes/no.
(defalias 'yes-or-no-p 'y-or-n-p)

(require 'recentf)

(recentf-mode t)

(setq recentf-max-menu-items 25)

(require 'uniquify)

(setq uniquify-buffer-name-style 'forward)

(require 'saveplace)

(setq-default save-place t)

;; Enable line numbering for prog-mode.
(add-hook 'prog-mode-hook 'linum-mode)

;; Do not truncate (wrap) lines by default.
(add-hook 'prog-mode-hook
          (lambda ()
            (setq truncate-lines t)))

;; Always use spaces instead of tabs.
(setq-default indent-tabs-mode nil)

;; Backup configuration.
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))

(add-to-list 'exec-path "/usr/local/bin")

;; ---------------------------------------------------------------------
;; PACKAGE CONFIGURATION

(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(when (not (package-installed-p 'use-package))
    (package-install 'use-package))

(setq use-package-always-ensure t)

;; ---------------------------------------------------------------------
;; UTILITY FUNCTIONS

(defun ~/package-require (pkg)
  "Install a package only if it's not already installed."
  (when (not (package-installed-p pkg))
    (package-install pkg)))

(defun ~/insert-date ()
  "Insert the current date using the format `%Y-%m-%d'."
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(defun ~/insert-timestamp ()
  "Inser the current date usint the foramt `%Y-%m-%dT%H:%M:%S'."
  (interactive)
  (insert (format-time-string "%Y-%m-%dT%H:%M:%S")))

(defmacro ~/comment (&rest body)
  "Comment out one or more s-expressions."
  nil)


;; ---------------------------------------------------------------------
;; HIDESHOW

(require 'hideshow)

(add-hook 'prog-mode-hook 'hs-minor-mode)

;; ---------------------------------------------------------------------
;; HYDRA

(use-package hydra)

;; ---------------------------------------------------------------------
;; IDLE HIGHLIGHT

(use-package idle-highlight-mode
  :config
  (add-hook 'prog-mode-hook 'idle-highlight-mode))

;; ---------------------------------------------------------------------
;; IDO

(use-package ido
  :config
  (ido-mode t)
  (ido-everywhere t)
  (setq ido-enable-flex-matching t)
  (setq ido-use-virtual-buffers t))

(use-package ido-completing-read+
  :ensure t
  :config
  (ido-ubiquitous-mode t))

(use-package ido-vertical-mode
  :ensure t
  :config
  (ido-vertical-mode t)
  (setq ido-vertical-define-keys 'C-n-and-C-p-only))

(defun ~/ido/recentf ()
  (interactive)
  (find-file (ido-completing-read "Find recent file: " recentf-list)))

;; ---------------------------------------------------------------------
;; SMEX

(use-package smex
  :config
  (smex-initialize)
  (smex-initialize-ido))

;; ---------------------------------------------------------------------
;; PROJECTILE

(~/package-require 'projectile)

;; ---------------------------------------------------------------------
;; KEYBOARD CONFIGURATION

;; EVIL

(use-package evil
  :config
  (evil-mode t)
  (setq evil-shift-width 2)
  (setq evil-default-cursor t))

(use-package evil-paredit)

(use-package evil-mc)

;; ACE JUMP

(use-package ace-jump-mode)

;; KEY-CHORD

(use-package key-chord
  :config
  (key-chord-mode t)
  (key-chord-define-global ",x" 'smex) ;; M-x
  (key-chord-define-global ",f" 'find-file)
  (key-chord-define evil-normal-state-map ",k" 'kill-buffer)
  (key-chord-define evil-normal-state-map ",r" '~/ido/recentf)
  (key-chord-define evil-normal-state-map ",s" 'ido-switch-buffer))

;; Fixes borked electric-indent in Emacs 24.
(define-key evil-insert-state-map [remap newline] 'evil-ret-and-indent)

;; Escape

(defun ~/minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))

(global-set-key [escape] 'evil-exit-emacs-state)
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] '~/minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] '~/minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] '~/minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] '~/minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] '~/minibuffer-keyboard-quit)
(define-key minibuffer-local-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-ns-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-completion-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-must-match-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-isearch-map [escape] 'keyboard-escape-quit)

;; Evil normal state bindings.
(define-key evil-normal-state-map
  (kbd "C-j") 'evil-scroll-page-down)

(define-key evil-normal-state-map
  (kbd "C-k") 'evil-scroll-page-up)

(define-key evil-normal-state-map
  (kbd "C-f") 'find-file)

(define-key evil-normal-state-map
  (kbd "C-p") 'projectile-find-file-dwim)

(define-key evil-normal-state-map
  "zo" 'evil-toggle-fold)

(define-key evil-normal-state-map
  "zc" 'evil-toggle-fold)

(define-key evil-normal-state-map
  (kbd "SPC") 'ace-jump-mode)

(define-key evil-normal-state-map
  (kbd "S-SPC") 'ace-jump-mode-pop-mark)

(define-key evil-normal-state-map
  (kbd "s-[") 'evil-prev-buffer)

(define-key evil-normal-state-map
  (kbd "s-]") 'evil-next-buffer)

(define-key evil-normal-state-map
  (kbd ",i") 'imenu)

;; Evil insert state bindings.
(define-key evil-insert-state-map
  (kbd "C-j") 'next-line)

(define-key evil-insert-state-map
  (kbd "C-k") 'previous-line)

(define-key evil-insert-state-map
  (kbd "C-n") nil)

(define-key evil-insert-state-map
  (kbd "C-p") nil)

;; ---------------------------------------------------------------------
;; PAREDIT

(use-package paredit)

(defun ~/paredit/wrap-quote ()
  "Wrap the following sexp in double quotes."
  (interactive)
  (save-excursion
    (insert "\"")
    (forward-sexp)
    (insert "\"")))

(defun ~/paredit/forward-transpose-sexps ()
  (interactive)
  (paredit-forward)
  (transpose-sexps 1)
  (paredit-backward))

(defun ~/paredit/backward-transpose-sexps ()
  (interactive)
  (transpose-sexps 1)
  (paredit-backward)
  (paredit-backward))

(defun ~/paredit/forward-kill-and-insert ()
  (interactive)
  (paredit-kill)
  (evil-insert-state))

(defun ~/paredit/define-evil-keys ()
  ;; Normal state
  (define-key evil-normal-state-local-map
    "W(" 'paredit-wrap-round)
  (define-key evil-normal-state-local-map
    "W[" 'paredit-wrap-square)
  (define-key evil-normal-state-local-map
    "W{" 'paredit-wrap-curly)
  (define-key evil-normal-state-local-map
    "W\"" '~/paredit/wrap-quote)
  (define-key evil-normal-state-local-map
    "(" 'paredit-backward-slurp-sexp)
  (define-key evil-normal-state-local-map
    ")" 'paredit-backward-barf-sexp)
  (define-key evil-normal-state-local-map
    "{" 'paredit-forward-barf-sexp)
  (define-key evil-normal-state-local-map
    "}" 'paredit-forward-slurp-sexp)
  (define-key evil-normal-state-local-map
    (kbd "C-S-r") 'paredit-raise-sexp)
  (define-key evil-normal-state-local-map
    "S" 'paredit-splice-sexp)
  (define-key evil-normal-state-local-map
    "s" 'paredit-split-sexp)
  (define-key evil-normal-state-local-map
    "T" '~/paredit/backward-transpose-sexps)
  (define-key evil-normal-state-local-map
    "t" '~/paredit/forward-transpose-sexps)
  (define-key evil-normal-state-local-map
    "Y" 'paredit-copy-as-kill)
  (define-key evil-normal-state-local-map
    "C" '~/paredit/forward-kill-and-insert)
  (define-key evil-normal-state-local-map
    "D" 'paredit-kill)
  ;; Insert state
  (define-key evil-insert-state-local-map
    (kbd "C-(") 'paredit-backward-slurp-sexp)
  (define-key evil-insert-state-local-map
    (kbd "C-)") 'paredit-backward-barf-sexp)
  ;; I don't like the inconsistency here but C-{ and C-} don't seem to
  ;; work.
  (define-key evil-insert-state-local-map
    (kbd "C-[") 'paredit-forward-barf-sexp)
  (define-key evil-insert-state-local-map
    (kbd "C-]") 'paredit-forward-slurp-sexp))

(defun ~/paredit-mode ()
  (paredit-mode)
  (~/paredit/define-evil-keys))

;; ---------------------------------------------------------------------
;; UI/UX

(use-package ag
  :bind (:map ag-mode-map
              ("k" . evil-previous-line)))

(use-package aggressive-indent)

(use-package rainbow-delimiters)

(use-package highlight-indent-guides
  :config
  (setq highlight-indent-guides-method 'character))

(use-package highlight-sexp)

;; ---------------------------------------------------------------------
;; LISP

(defvar ~/lisp/imenu-section
  '((nil "^;; +\\([A-Z ]+\\)$" 1)))

(defun ~/lisp/setup-imenu ()
  (setq imenu-generic-expression ~/lisp/imenu-section)
  (imenu-add-menubar-index))

(defun ~/lisp/insert-comment-header (&optional title)
  (interactive)
  (insert ";; ---------------------------------------------------------------------\n")
  (insert ";;")
  (when (stringp title)
    (insert " ")
    (insert title)))

(defun ~/lisp-mode ()
  (~/paredit-mode)
  (rainbow-delimiters-mode)
  (eldoc-mode))


;; EMACS LISP

(defun ~/emacs-lisp/eval-expression-at-point-in-ielm ()
  "Eval the current sexpr in ielm."
  (interactive)
  (let ((form (save-excursion
		(end-of-defun)
		(let ((end-point (point))
		      (form-str ""))
		  (beginning-of-defun)
		  (while (not (= (point) end-point))
		    (setq sform (concat form-str (char-at-point)))
		    (forward-char))
		  form-str)))
	(buff (window-buffer))
	(ielm-buff (get-buffer "*ielm*")))
    (if (not ielm-buff)
	(error "ielm not started")
      (progn
	(switch-to-buffer-other-window ielm-buff)
	(goto-char (point-max))
	(insert form)
	(ielm-return)
	(switch-to-buffer-other-frame buff)))))

(defun ~/emacs-lisp/eval-defun-pp ()
  (interactive)
  (let ((output-buffer (get-buffer-create "*elisp-result*"))
        (current-buffer (current-buffer)))
    (save-excursion
      (end-of-defun)
      (beginning-of-defun)
      (let* ((form (read (current-buffer)))
             (result (eval form)))
        (pop-to-buffer output-buffer)
        (setq buffer-read-only nil)
        (erase-buffer)
        (pp result (current-buffer))
        (setq buffer-read-only t)))
    (pop-to-buffer current-buffer)))

(defun ~/emacs-lisp/define-keys ()
  (define-key evil-normal-state-map
    ",e" 'eval-defun)

  (define-key evil-normal-state-map
    ",l" 'eval-buffer))

;; (define-key emacs-lisp-mode-map
;;   (kbd "C-;") 'elisp-eval-expression-at-point-in-ielm)

(define-key emacs-lisp-mode-map
  (kbd "C-c C-d") 'describe-symbol)

(define-key emacs-lisp-mode-map
  (kbd "C-c C-f") '~/emacs-lisp/eval-defun-pp)

(defun ~/emacs-lisp-mode ()
  (~/lisp/setup-imenu)
  (~/lisp-mode)
  (~/emacs-lisp/define-keys)
  (aggressive-indent-mode t))

(add-hook 'emacs-lisp-mode-hook '~/emacs-lisp-mode)

;; CLOJURE

(~/package-require 'clojure-mode)
(require 'clojure-mode)

;; CLOJURE CIDER

(~/package-require 'cider)
(require 'cider)

(add-hook 'cider-mode-hook 'eldoc-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

(setq cider-interactive-eval-result-prefix ";; => ")
;; Stop the error buffer from popping up while working in buffers
;; other than the REPL
(setq cider-popup-stacktraces t)
(setq cider-repl-popup-stacktraces t)
;; Do not auto-select the error buffer when it's displayed.
(setq cider-auto-select-error-buffer nil)
(setq cider-repl-use-clojure-font-lock t)
(setq cider-repl-use-pretty-printing nil)
;; This can cause a lot of problems with ClojureScript errors so it's
;; turned off right now.
(setq cider-show-error-buffer t)

;; CLOJURE MODE FUNCTIONS

(defun ~/clojure/toggle-defun-style-indent ()
  (interactive)
  (let ((b clojure-defun-style-default-indent))
    (setq clojure-defun-style-default-indent (not b))))

(defun ~/clojure/cider-eval-expression-at-point-in-repl ()
  (interactive)
  (let ((form (cider-defun-at-point))
	(buff (window-buffer)))
    ;; Strip excess whitespace
    (while (string-match "\\`\s+\\|\n+\\'" form)
      (setq form (replace-match "" t t form)))
    (cider-switch-to-repl-buffer)
    (goto-char (point-max))
    (insert form)
    (cider-repl-return)
    (switch-to-buffer-other-frame buff)))

(defun ~/clojure/scratch ()
  "Create/retrieve a Clojure scratch buffer and switch to it."
  (interactive)
  (let ((buf (get-buffer-create "*clj-scratch*")))
    (switch-to-buffer buf)
    (clojure-mode)))

(defun ~/clojure/string-name (s)
  (substring s 1 -1))

(defun ~/clojure/keyword-name (s)
  (substring s 1))

(defun ~/clojure/delete-and-extract-sexp ()
  (let* ((begin (point)))
    (forward-sexp)
    (let* ((result (buffer-substring-no-properties begin (point))))
      (delete-region begin (point))
      result)))

(defun ~/clojure/toggle-keyword-string ()
  (interactive)
  (save-excursion
    (if (equal 1 (point))
        (message "Beginning of file reached, this was probably a mistake.")
      (cond
       ((equal "\"" (char-at-point))
        (insert ":" (~/clojure/string-name
		     (~/clojure/delete-and-extract-sexp))))
       ((equal ":" (char-at-point))
        (insert "\"" (~/clojure/keyword-name
		      (~/clojure/delete-and-extract-sexp)) "\""))
       (t (progn
            (backward-char)

            (~/clojure/toggle-keyword-string)))))))

(defun ~/clojure/cider-repl-clear-buffer ()
  (interactive)
  (let ((buffer (cider-get-repl-buffer)))
    (when buffer
      (with-current-buffer buffer
	(cider-repl-clear-buffer)))))


(defun ~/clojure/lein-test-refresh ()
  "Like executing \"M-x compile <RET> lein test-refresh\" but renames
  the buffer appropriately."
  (interactive)
  (let ((lein-test-refresh-buffer (get-buffer "*lein-test-refresh*")))
    (when (not lein-test-refresh-buffer)
        (setq lein-test-refresh-buffer (compile "lein test-refresh"))
        (with-current-buffer lein-test-refresh-buffer
          (rename-buffer "*lein-test-refresh*")))
    lein-test-refresh-buffer))

(setq cider-cljs-lein-repl "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))")

;; CLOJURE INDENTATION

(define-clojure-indent
  ;; clojure.core
  (apply 1)
  (as-> 'defun)
  (add-watch 'defun)

  ;; clojure.test
  (are 'defun)

  ;; clojure.test.check
  (for-all 'defun)

  ;; clojure.core.async
  (go-loop 1)

  ;; garden
  (css 'defun)
  (at-media 1)
  (at-keyframes 1)
  (rule 1)

  ;; compojure
  (GET 'defun)
  (POST 'defun)
  (context 2)

  ;; core.logic
  (run* 1)
  (fresh 1)

  ;; cljs.core
  (specify! 'defun)
  (specify 'defun)
  (this-as 'defun)
  ;; clojure.spec
  (fdef 1)

  ;; clojure.core.match
  (match 1)

  ;; other
  (λ 1)
  (variant 1)
  (field 1)
  (optional-field 1))

;; CLOJURE KEY BINDINGS

(define-key clojure-mode-map
  (kbd "C-c M-b")
  '~/clojure/cider-repl-clear-buffer)

(define-key cider-mode-map
  (kbd "C-;") '~/clojure/cider-eval-expression-at-point-in-repl)

(define-key cider-mode-map
  (kbd "C-c C-d") 'cider-doc)

(define-key cider-mode-map
  (kbd "C-c C-j") 'cider-jump-to-var)

(evil-define-key
  'normal clojure-mode-map
  (kbd ",:") '~/clojure/toggle-keyword-string)

(evil-define-key
  'normal cider-mode-map
  (kbd ",n") 'cider-repl-set-ns)

(evil-define-key
  'normal cider-popup-buffer-mode-map
  (kbd "q") 'quit-window)

(evil-define-key
  'normal cider-docview-mode-map
  (kbd "q") 'quit-window)

(evil-define-key
  'normal cider-stacktrace-mode-map
  (kbd "q") 'quit-window)

(evil-define-key
  'normal cider-mode-map
  (kbd ",e") '~/clojure/cider-eval-expression-at-point-in-repl)

(evil-define-key
  'normal cider-mode-map
  (kbd ",l") 'cider-load-file)

(evil-define-key
  'normal cider-mode-map
  (kbd ",d") 'cider-doc)

(defun ~/clojure-mode ()
  (~/lisp-mode))

(add-hook 'clojure-mode-hook '~/clojure-mode)
(add-hook 'clojure-mode-hook 'aggressive-indent-mode)

(setq-default cider-clojure-cli-global-options "-A:convenient")

;; ---------------------------------------------------------------------
;; YAML

(~/package-require 'yaml-mode)

;; ---------------------------------------------------------------------
;; RUBY

(~/package-require 'inf-ruby)
(~/package-require 'ruby-end)
(~/package-require 'ruby-test-mode)
(~/package-require 'ruby-tools)
(~/package-require 'feature-mode)
(~/package-require 'yard-mode)
(~/package-require 'rbenv)
(~/package-require 'robe)
(~/package-require 'rubocop)

(require 'ruby-mode)
(require 'subr-x)

;; RUBY RBENV

(setq ~/rbenv-el-source-path (concat user-emacs-directory "lisp/rbenv.el/"))
(setq rbenv-installation-dir "/usr/local/")
(add-to-list 'load-path ~/rbenv-el-source-path)
(require 'rbenv)

(global-rbenv-mode)

;; RUBY BURDOCK

(setq ~/burdock-mode-source-path
      (concat user-emacs-directory "lisp/burdock-mode/"))

(when (file-exists-p ~/burdock-mode-source-path)
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

  (add-hook 'ruby-mode-hook 'burdock-mode))

(add-hook 'burdock-mode-hook '~/define-evil-keys-for-burdock-mode)
(add-hook 'burdock-mode-hook 'burdock-start)

;; RUBY CONFIGURATION

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

(defun ~/ruby/scratch ()
  "Create/retrieve a Clojure scratch buffer and switch to it.."
  (interactive)
  (let ((buf (get-buffer-create "*rb-scratch*")))
    (switch-to-buffer buf)
    (ruby-mode)))

(defun ~/ruby/repl-clear-buffer ()
  (interactive)
  (when (bufferp (get-buffer inf-ruby-buffer))
    (with-current-buffer inf-ruby-buffer
      (let ((comint-buffer-maximum-size 0))
	(comint-truncate-buffer)))))

(evil-define-key
  'normal rspec-mode-map
  (kbd ",t") 'rspec-verify)

(evil-define-key
  'normal rspec-mode-map
  (kbd ",T") 'rspec-verify-all)

(define-key ruby-mode-map
  (kbd "C-c M-j") 'inf-ruby-console-auto)

(define-key ruby-mode-map
  (kbd "C-c M-b") '~/ruby/repl-clear-buffer)

(define-key ruby-mode-map
  (kbd "C-c") nil)

;; RUBY HOOKS

(defun ~/ruby/before-save-hook ()
  (whitespace-cleanup))

(add-hook 'ruby-mode-hook
          (lambda ()
            (add-hook 'before-save-hook '~/ruby/before-save-hook nil 'local)))

(add-hook 'ruby-mode-hook 'yard-mode)
(add-hook 'ruby-mode-hook 'highlight-indent-guides-mode)
(add-hook 'ruby-mode-hook 'aggressive-indent-mode)
(add-hook 'ruby-mode-hook 'autopair-mode)


;; ---------------------------------------------------------------------
;; SQL

(require 'sql)

(sql-set-product-feature
 'postgres :prompt-regexp "^[[:alnum:]_]*=[#>] ")

(sql-set-product-feature
 'postgres :prompt-cont-regexp "^[[:alnum:]_]*[-(][#>] ")

(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

;; SQL KEY BINDINGS

(define-key
  sql-interactive-mode-map
  (kbd "C-j") nil)

(evil-define-key
  'normal sql-interactive-mode-map
  (kbd "C-j")
  'evil-scroll-page-down)

(defun sqli-show-completions-if-possible ()
  (interactive)
  (let* ((process (get-buffer-process (current-buffer)))
         (start-point (save-excursion
                        (search-backward-regexp comint-prompt-regexp)
                        (match-end 0)))
         (end-point (point))
         (original-input (buffer-substring-no-properties start-point (point-max)))
         (partial-input (buffer-substring-no-properties start-point end-point))
         (partial-input-with-tabs (concat partial-input "\t\t"))
         (backspaces (replace-regexp-in-string "." "\b" partial-input-with-tabs))
         (input-for-tab (concat partial-input-with-tabs backspaces)))
    (process-send-string process input-for-tab)
    (comint-delete-input)
    (sleep-for 0 30)
    (call-interactively (lookup-key (current-local-map) "\r"))
    (goto-char (point-max))
    (insert original-input)
    (backward-char (- (length original-input)
                      (length partial-input)))))

(define-key sql-interactive-mode-map
  (kbd "<tab>") 'sqli-show-completions-if-possible)

(define-key sql-interactive-mode-map
  "\t" 'sqli-show-completions-if-possible)


;;; heroku pg:psql

(defcustom heroku-sql-program "heroku"
  "Command to start pg:psql by Heroku.

Starts `sql-interactive-mode' after doing some setup."
  :type 'file
  :group 'SQL)

(defcustom heroku-sql-login-params `(database)
  "Login parameters needed to connect to Heroku PostgreSQL."
  :type 'sql-login-params
  :group 'SQL)

(defcustom heroku-sql-options '("pg:psql")
  "List of additional options for `heroku-sql-program'."
  :type '(repeat string)
  :group 'SQL)

;;;###autoload
(defun heroku-sql (&optional buffer)
  "Run heroku pg:psql as an inferior process in an SQL buffer.

Enter app name when prompted for `database'."
  (interactive "P")
  (sql-product-interactive 'heroku buffer))

(defun heroku-sql-comint (product options)
  (let ((params options))
    (sql-comint product (if (string= "" sql-database)
                            options
                          (append options (list "-a" sql-database))))))

(add-to-list 'sql-product-alist
             '(heroku :name "Heroku"
                      :sqli-program heroku-sql-program
                      :sqli-login heroku-sql-login-params
                      :sqli-options heroku-sql-options
                      :sqli-comint-func heroku-sql-comint
                      :font-lock sql-mode-postgres-font-lock-keywords
                      :list-all ("\\d+" . "\\dS+")
                      :list-table ("\\d+ %s" . "\\dS+ %s")
                      :completion-object sql-postgres-completion-object
                      :prompt-regexp "^[^>#]+=[#>] "
                      :prompt-length 5
                      :prompt-cont-regexp "^\\w*[-(][#>] "
                      :input-filter sql-remove-tabs-filter
                      :terminator ("\\(^\\s-*\\\\g$\\|;\\)" . "\\g")))

;; ---------------------------------------------------------------------
;; JAVA

;; The following three forms were taken from
;; https://gist.github.com/skeeto/3178747 and modified to fit the
;; conventions in this file.

(defun ~/javap-handler (op &rest args)
  "Handle .class files by putting the output of javap in the buffer."
  (cond
   ((eq op 'get-file-buffer)
    (let ((file (car args)))
      (with-current-buffer (create-file-buffer file)
        (call-process "javap" nil (current-buffer) nil "-c" "-verbose"
                      "-classpath" (file-name-directory file)
                      (file-name-sans-extension (file-name-nondirectory file)))
        (setq buffer-file-name file)
        (setq buffer-read-only t)
        (set-buffer-modified-p nil)
        (goto-char (point-min))
        (java-mode)
        (current-buffer))))
   ((~/javap-handler-real op args))))

(defun ~/javap-handler-real (operation args)
  "Run the real handler without the javap handler installed."
  (let ((inhibit-file-name-handlers
         (cons '~/javap-handler
               (and (eq inhibit-file-name-operation operation)
                    inhibit-file-name-handlers)))
        (inhibit-file-name-operation operation))
    (apply operation args)))

(add-to-list 'file-name-handler-alist '("\\.class$" . ~/javap-handler))

;; ---------------------------------------------------------------------
;; JAVASCRIPT

(~/package-require 'js2-mode)
(~/package-require 'skewer-mode)
(~/package-require 'jsx-mode)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . jsx-mode))

(setq-default js2-basic-offset 2)

;; Prevents funky characters at the REPL.
(setenv "NODE_NO_READLINE" "1")

(defun ~/javascript/nodejs-repl ()
  (interactive)
  (pop-to-buffer (make-comint "nodejs" "node")))

;; ---------------------------------------------------------------------
;; MISCELLANEOUS

(~/package-require 'highlight-indentation)
(require 'highlight-indentation)

(~/package-require 'exec-path-from-shell)

;; ---------------------------------------------------------------------
;; GRAPHQL

(~/package-require 'graphql-mode)

;; ---------------------------------------------------------------------
;; JSON

(~/package-require 'json-navigator)

;; ---------------------------------------------------------------------
;; WORDNET

(setq ~/wordnut-source-path (concat user-emacs-directory "lisp/wordnut/"))

(when (file-exists-p ~/wordnut-source-path) 
  (add-to-list 'load-path ~/wordnut-source-path)
  (require 'wordnut))

;; ---------------------------------------------------------------------
;; ECHO KEYS
;; See: https://www.emacswiki.org/emacs/EchoKeyPresses

(defvar *echo-keys-last* nil "Last command processed by `echo-keys'.")

(defun echo-keys ()
  (interactive)
  (let ((deactivate-mark deactivate-mark))
    (when (this-command-keys)
      (with-current-buffer (get-buffer-create "*echo-key*")
	(goto-char (point-max))
	;; self  self
	;; self  other \n
	;; other self  \n
	;; other other \n
	(unless (and (eq 'self-insert-command *echo-keys-last*)
		     (eq 'self-insert-command this-command))
	  (insert "\n"))
	(if (eql this-command 'self-insert-command)
	    (let ((desc (key-description (this-command-keys))))
	      (if (= 1 (length desc))
		  (insert desc)
		(insert " " desc " ")))
	  (insert (key-description (this-command-keys))))
	(setf *echo-keys-last* this-command)
	(dolist (window (window-list))
	  (when (eq (window-buffer window) (current-buffer))
	    ;; We need to use both to get the effect.
	    (set-window-point window (point))
	    (end-of-buffer)))))))

(defun toggle-echo-keys ()
  (interactive)
  (if (member 'echo-keys  pre-command-hook)
      (progn
	(remove-hook 'pre-command-hook 'echo-keys)
	(dolist (window (window-list))
	  (when (eq (window-buffer window) (get-buffer "*echo-key*"))
	    (delete-window window))))
    (progn
      (add-hook    'pre-command-hook 'echo-keys)
      (delete-other-windows)
      (split-window nil (- (window-width) 32) t)
      (other-window 1)
      (switch-to-buffer (get-buffer-create "*echo-key*"))
      (set-window-dedicated-p (selected-window) t)
      (other-window 1))))

;; ---------------------------------------------------------------------
;; Used configuration

(require 'init-theme)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0b1c2c" "#bf8b56" "#56bf8b" "#8bbf56" "#8b56bf" "#bf568b" "#8b56bf" "#cbd6e2"])
 '(ansi-term-color-vector
   [unspecified "#0b1c2c" "#bf8b56" "#56bf8b" "#8bbf56" "#8b56bf" "#bf568b" "#8b56bf" "#cbd6e2"])
 '(package-selected-packages
   (quote
    (base16-themes ido-completing-read+ ido-completin-read+ use-package focus smyx-theme seti-theme kaolin-themes jazz-theme hamburg-theme gruvbox-theme yard-mode yaml-mode smex skewer-mode scribble-mode ruby-tools ruby-test-mode ruby-end rubocop robe rbenv quack projectile key-chord jsx-mode json-navigator intero ido-vertical-mode ido-ubiquitous idle-highlight-mode hydra hindent highlight-sexp highlight-indentation highlight-indent-guides graphql-mode ghc feature-mode f exotica-theme exec-path-from-shell evil-paredit evil-mc eink-theme doom-themes darktooth-theme cyberpunk-theme cider bubbleberry-theme base16-theme badwolf-theme atom-one-dark-theme ag afternoon-theme ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:font "Fantasque Sans Mono" :height 140))))
 '(font-lock-comment-face ((t (:slant italic))))
 '(font-lock-doc-face ((t (:slant italic))))
 '(mode-line ((t (:font "Fantasque Sans Mono" :height 120))))
 '(mode-line-inactive ((t (:slant italic :height 120))))
 '(modeline-highlight ((t (:height 120)))))
