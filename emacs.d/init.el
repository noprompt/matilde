(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(require 'init-util)

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
(set-default 'truncate-lines t)

;; Backup configuration.
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))

;; ---------------------------------------------------------------------
;; PACKAGE CONFIGURATION

(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))


;; ---------------------------------------------------------------------
;; UTILITY FUNCTIONS

(defun ~/package-require (pkg)
  "Install a package only if it's not already installed."
  (when (not (package-installed-p pkg))
    (package-install pkg)))


;; DATE AND TIME FUNCTIONS

(defun ~/insert-date ()
  "Insert the current date using the format `%Y-%m-%d'."
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(defun ~/insert-timestamp ()
  "Inser the current date usint the foramt `%Y-%m-%dT%H:%M:%S'."
  (interactive)
  (insert (format-time-string "%Y-%m-%dT%H:%M:%S")))

;; ---------------------------------------------------------------------
;; AG

(package-require 'ag)
(require 'ag)

(define-key ag-mode-map (kbd "k") 'evil-previous-line)

;; ---------------------------------------------------------------------
;; BEACON

(~/package-require 'beacon)

(beacon-mode t)


;; ---------------------------------------------------------------------
;; IDLE HIGHLIGHT

(~/package-require 'idle-highlight-mode)

(require 'idle-highlight-mode)

(add-hook 'prog-mode-hook 'idle-highlight-mode)


;; ---------------------------------------------------------------------
;; IDO

(require 'ido)

(~/package-require 'ido-ubiquitous)
(~/package-require 'ido-vertical-mode)

(ido-mode t)
(ido-ubiquitous t)
(ido-vertical-mode t)
(setq ido-enable-flex-matching t)

(setq ido-use-virtual-buffers t)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(defun ~/ido/recentf ()
  (interactive)
  (find-file (ido-completing-read "Find recent file: " recentf-list)))


;; ---------------------------------------------------------------------
;; SMEX

(~/package-require 'smex)

(require 'smex)

(smex-initialize)
(smex-initialize-ido)

;; ---------------------------------------------------------------------
;; KEYBOARD CONFIGURATION

;; EVIL

(~/package-require 'evil)
(~/package-require 'evil-paredit)
(~/package-require 'evil-mc)

(require 'evil)

(evil-mode t)

(setq evil-shift-width 2)
(setq evil-default-cursor t)

;; ACE JUMP

(~/package-require 'ace-jump-mode)
(require 'ace-jump-mode)

;; KEY-CHORD

(~/package-require 'key-chord)

(require 'key-chord)

(key-chord-mode t)

(key-chord-define-global ",x" 'smex) ;; M-x
(key-chord-define-global ",f" 'find-file)
(key-chord-define evil-normal-state-map ",k" 'kill-buffer)
(key-chord-define evil-normal-state-map ",r" '~/ido/recentf)
(key-chord-define evil-normal-state-map ",s" 'ido-switch-buffer)

;; Fixes borked electric-indent in Emacs 24.
(define-key evil-insert-state-map [remap newline] 'evil-ret-and-indent)

;; Escape
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
;; COMPANY

(~/package-require 'company)
(require 'company)

(define-key company-mode-map [remap indent-for-tab-command]
  'company-indent-for-tab-command)

(setq tab-always-indent 'complete)

(define-key company-mode-map (kbd "<C-tab>") 'company-complete)
(define-key company-mode-map (kbd "C-n") 'company-select-next)
(define-key company-mode-map (kbd "C-p") 'company-select-previous)

;; ---------------------------------------------------------------------
;; PAREDIT

(~/package-require 'paredit)
(require 'paredit)

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
;; LISP

(~/package-require 'highlight-sexp)
(require 'highlight-sexp)

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

(defun ~/emacs-lisp/define-keys ()
  (define-key emacs-lisp-mode-map (kbd "C-;")
    '~/emacs-lisp/eval-expression-at-point-in-ielm)

  (define-key evil-normal-state-map
    ",e" 'eval-defun)

  (define-key evil-normal-state-map
    ",l" 'eval-buffer)

  (define-key emacs-lisp-mode-map
    (kbd "C-c C-d") 'lispy-describe-inline)

  (define-key emacs-lisp-mode-map
    (kbd "C-c D") 'lispy-describe)

  (define-key emacs-lisp-mode-map (kbd "C-;")
    'elisp-eval-expression-at-point-in-ielm))


(defun ~/emacs-lisp-mode ()
  (~/lisp/setup-imenu)
  (~/lisp-mode)
  (~/emacs-lisp/define-keys))

(add-hook 'emacs-lisp-mode-hook '~/emacs-lisp-mode)

;; CLOJURE

(~/package-require 'clojure-mode)
(~/package-require 'clojurescript-mode)
(~/package-require 'clj-refactor)

(require 'clojure-mode)
(require 'clojurescript-mode)

;; Support for CLJX files.
(add-to-list 'auto-mode-alist '("\\.cljx$" . clojure-mode))

;; CLOJURE CIDER

(add-to-list 'load-path (expand-file-name "~/.emacs.d/non-elpa/cider"))
(require 'cider)


(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

(setq cider-interactive-eval-result-prefix ";; => ")
;; Stop the error buffer from popping up while working in buffers
;; other than the REPL
(setq cider-popup-stacktraces nil)
(setq cider-repl-popup-stacktraces nil)
;; Do not auto-select the error buffer when it's displayed.
(setq cider-auto-select-error-buffer nil)
(setq cider-repl-use-clojure-font-lock t)
(setq cider-repl-use-pretty-printing nil)
;; This can cause a lot of problems with ClojureScript errors so it's
;; turned off right now.
(setq cider-show-error-buffer nil)

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
  "Create/retrieve a Clojure scratch buffer and switch to it.."
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

  ;; Garden
  (css 'defun)
  (at-media 1)
  (at-keyframes 1)

  ;; Korma
  (select 'defun)
  (insert 'defun)

  ;; Compojure
  (GET 'defun)
  (POST 'defun)
  (context 2)

  ;; Persephone
  (start 'defun)
  (start* 'defun)

  ;; core.logic
  (run* 1)
  (fresh 1)

  ;; cljs.core
  (specify! 'defun)
  (specify 'defun)
  (this-as 'defun)

  ;; midje
  (fact 'defun)
  (facts 'defun))

(dolist (html-tag '(a
		    abbr
		    address
		    area
		    article
		    aside
		    audio
		    b
		    base
		    bdi
		    bdo
		    big
		    blockquote
		    body
		    br
		    button
		    canvas
		    caption
		    cite
		    code
		    col
		    colgroup
		    data
		    datalist
		    dd
		    del
		    dfn
		    div
		    dl
		    dt
		    em
		    embed
		    fieldset
		    figcaption
		    figure
		    footer
		    form
		    h1
		    h2
		    h3
		    h4
		    h5
		    h6
		    head
		    header
		    hr
		    html
		    i
		    iframe
		    img
		    input
		    ins
		    kbd
		    keygen
		    label
		    legend
		    li
		    link
		    main
		    ;;map
		    mark
		    menu
		    menuitem
		    meta
		    meter
		    nav
		    noscript
		    object
		    ol
		    optgroup
		    option
		    output
		    p
		    param
		    pre
		    progress
		    q
		    rp
		    rt
		    ruby
		    s
		    samp
		    script
		    section
		    select
		    small
		    source
		    span
		    strong
		    style
		    sub
		    summary
		    sup
		    table
		    tbody
		    td
		    tfoot
		    th
		    thead
		    time
		    title
		    tr
		    track
		    u
		    ul
		    var
		    video
		    wbr

		    ;; svg
		    circle
		    ellipse
		    g
		    line
		    path
		    polyline
		    rect
		    svg
		    text
		    defs
		    linearGradient
		    polygon
		    radialGradient
		    stop
		    tspan))
  (put-clojure-indent html-tag 'defun))

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

(require 'ruby-mode)

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

(defun ~/ruby/scratch ()
  "Create/retrieve a Clojure scratch buffer and switch to it.."
  (interactive)
  (let ((buf (get-buffer-create "*rb-scratch*")))
    (switch-to-buffer buf)
    (ruby-mode)))

(defun ~/ruby/repl-clear-buffer ()
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))

(define-key ruby-mode-map (kbd "C-c M-j") '~/conditionally-run-ruby)
(add-hook 'ruby-mode-hook 'yard-mode)
(add-hook 'ruby-mode-hook 'highlight-indentation-mode)

;; ---------------------------------------------------------------------
;; MISCELLANEOUS

(~/package-require 'highlight-indentation)
(require 'highlight-indentation)

(~/package-require 'exec-path-from-shell)

(exec-path-from-shell-initialize)

;; ---------------------------------------------------------------------
;; Used configuration

;;(require 'init-ruby)
;;(require 'init-javascript)
;;(require 'init-css)
;;(require 'init-markdown)
;;(require 'init-prolog)
;;(require 'init-erlang)
;;(require 'init-go)
;;(require 'init-factor)
;;(require 'init-python)
;;(require 'init-haskell)
(require 'init-theme)
;;(require 'init-elm)
;;(require 'init-html)
;;(require 'init-fsharp)
;;(require 'init-rust)
;;(require 'init-multi-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(burdock-ruby-source-directory "/Users/noprompt/git/noprompt/rhubarb-mode/ruby/")
 '(custom-safe-themes
   (quote
    ("024872c7e77508eb4820866aa9f4251e9eae359c613be5950aa1ee33186c8849" "8288b9b453cdd2398339a9fd0cec94105bc5ca79b86695bd7bf0381b1fbe8147" "1619bebce7101253cf2863133632089435d6f25c89f0711be5bdf0746e7d3572" "3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "715fdcd387af7e963abca6765bd7c2b37e76154e65401cd8d86104f22dd88404" "94ba29363bfb7e06105f68d72b268f85981f7fba2ddef89331660033101eb5e5" "9f3dd1d7b46e99b94bb53506c44b651c811b3552100898842bdd22ce63ab8b55" "6c7021e320ab007b8549d46f329f0e53fe33c83fb7e315cbdcf5f5175871f955" "edbd517c6ab14f7a224d9817db571971ed3ca2bbab112ac63d5cba4e81a43e21" "49b1bb63985aefb6fb365967080918e6e773f0ef8348cfdac49a235fde13c57a" "71ecffba18621354a1be303687f33b84788e13f40141580fa81e7840752d31bf" "3ed645b3c08080a43a2a15e5768b893c27f6a02ca3282576e3bc09f3d9fa3aaa" "e62cc95f871e4b5474c45c8d2f426ad91f7557666d48f5c605e9d55c3768752f" "aed73c6d0afcf2232bb25ed2d872c7a1c4f1bda6759f84afc24de6a1aec93da8" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "133222702a3c75d16ea9c50743f66b987a7209fb8b964f2c0938a816a83379a0" "959a77d21e6f15c5c63d360da73281fdc40db3e9f94e310fc1e8213f665d0278" "1edf370d2840c0bf4c031a044f3f500731b41a3fd96b02e4c257522c7457882e" "db9feb330fd7cb170b01b8c3c6ecdc5179fc321f1a4824da6c53609b033b2810" "e681c4fc684a543ce97c2d55082c6585182c0089f605dc9a5fe193870f03edc6" "bf81a86f9cfa079a7bb9841bc6ecf9a2e8999b85e4ae1a4d0138975921315713" "e24679edfdea016519c0e2d4a5e57157a11f928b7ef4361d00c23a7fe54b8e01" "cdfb22711f64d0e665f40b2607879fcf2607764b2b70d672ddaa26d2da13049f" "50e7f9d112e821e42bd2b8410d50de966c35c7434dec12ddea99cb05dd368dd8" "492d12e4ec6a4bb098a8150e8c99372f75617f141b78f94ff5af358c6bda23a1" "1e467344d9bc6dfdd71d64705612882c795170097e48a5bad10ce587e49e97d5" "44eec3c3e6e673c0d41b523a67b64c43b6e38f8879a7969f306604dcf908832c" "4904daa168519536b08ca4655d798ca0fb50d3545e6244cefcf7d0c7b338af7e" "419637b7a8c9cb43f273980f0c9879c0cbadace6b38efac0281e031772c84eb2" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "196cc00960232cfc7e74f4e95a94a5977cb16fd28ba7282195338f68c84058ec" "1fab355c4c92964546ab511838e3f9f5437f4e68d9d1d073ab8e36e51b26ca6a" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" "88d556f828e4ec17ac074077ef9dcaa36a59dccbaa6f2de553d6528b4df79cbd" "b6f42c69cf96795c75b1e79e5cd8ca62f9f9a0cb07bf11d1e0b49f97785358f1" "7d2447bfa3b440e4eb985c6d199afb25c1b71ea8179066b81a09915ebf3aa95e" "5d7e1a089a0392827c1a1a626c93f2be5cf1a108a5f86663e9f1eed67fd094ea" "cdd26fa6a8c6706c9009db659d2dffd7f4b0350f9cc94e5df657fa295fffec71" "28c015882edacd8a785f191d91104ee47c45fc6f5ca23e7a3d1700169cd75516" "dc261a3614777e08f8c8f70d7cf63215786eafeedae45fc7f062c614eabf584c" "726dd9a188747664fbbff1cd9ab3c29a3f690a7b861f6e6a1c64462b64b306de" "76626efc044daee1c402e50f185bd633d1a688c332bc15c8fd5db4cdf2966b79" "86a731bda96ed5ed69980b4cbafe45614ec3c288da3b773e4585101e7ece40d2" "fbcdb6b7890d0ec1708fa21ab08eb0cc16a8b7611bb6517b722eba3891dfc9dd" "f9d34593e9dd14b2d798494609aa0fddca618145a5d4b8a1819283bc5b7a2bfd" "8f0334c430540bf45dbcbc06184a2e8cb01145f0ae1027ce6b1c40876144c0c9" "beeb5ac6b65fcccfe434071d4624ff0308b5968bf2f0c01b567d212bcaf66054" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "de2c46ed1752b0d0423cde9b6401062b67a6a1300c068d5d7f67725adc6c3afb" "95db78d85e3c0e735da28af774dfa59308db832f84b8a2287586f5b4f21a7a5b" "66132890ee1f884b4f8e901f0c61c5ed078809626a547dbefbb201f900d03fd8" "f04122bbc305a202967fa1838e20ff741455307c2ae80a26035fbf5d637e325f" "c1390663960169cd92f58aad44ba3253227d8f715c026438303c09b9fb66cdfb" "bf648fd77561aae6722f3d53965a9eb29b08658ed045207fe32ffed90433eb52" "53c542b560d232436e14619d058f81434d6bbcdc42e00a4db53d2667d841702e" "f7094f95081ade69e556e0f77b92685a528edc62adbff33f19a0fef9c1424975" "41f5dc9ed7495632659799cad8f2a800e647039c8156118eeace34b1487a4372" "77fc243537528d575a79ba067f163d9af80df6f8600a20805de2ba8da6b3ba65" "7d4d00a2c2a4bba551fcab9bfd9186abe5bfa986080947c2b99ef0b4081cb2a6" "38743882bea2c9b8cca7b3beec6cd295af182b09cd7931e60826ce84c09e5ab8" "e53cc4144192bb4e4ed10a3fa3e7442cae4c3d231df8822f6c02f1220a0d259a" "72348ab1195650b7357fc109c1695da71e0dff6e2cf59f144851afd330308720" "51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" "57c3a891ccbe422beab64b87906b9fc32a1b14d120b28577dea3b3bad5901c03" "56cb99174fad69feba8edd6663c592e77d77332fb4c4bb5be058ef459a426463" "6eaf798ea6d282767006d74d79435c4f0eb9826fcc1afa9ef0c4f9a69fdd44da" "387c1002dc74cc227328b361ad8e2772736e4c4bf5c17a1f76f66a6f6e3524c6" "e504d40d974f54ee7f5e3e667f984fcd0b180fd4b3efcd89832b95e52cb5050c" "43ad20da04c7ef7b66c5bdc9c6ca3212ea43ba7d71efbbdd70e4c299c08c093e" "d43938753d1553540a99e0ff915f31a0efe295656195016d6b479777b50a3f90" "61cbf304a24a2f9dce16efe22130a4576c568f16c64ef9d6ae82e11b65ba1c52" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "ee6081af57dd389d9c94be45d49cf75d7d737c4a78970325165c7d8cb6eb9e34" "941bc214a26ed295e68bbeaadcd279475a3d6df06ae36b0b2872319d58b855f7" "329e9e8c979ce487c8b4f923a8ddfdbdcf5c6c69082a27e2271d9f4b23b7477a" "7dd515d883520286fc8936ce32381fb01b978d0d7cfb6fe56f7f55d8accbf63a" "b234b4b98c70de265ed95f73ba4bb4e6a1ec7e70c0bfe355f60b2c1f94b45d5e" "b8a865d858814ef21d2fc27328a55da9e47ef924afc6043a4b4b9774786c6677" "2a8571b0d6aafa09a9b044db2cddf15acbdcc5a2eda3a848304343177a6b98aa" "b775f042ee4eac6fb17231ba939140fa688b6bad098e54ba3c0ed7d9a6cc3268" "73338d58c8d87c722be9fdfe5af45baa26bbdff2c3e2305bd6c9481f8867bdc4" "b5dbcd843f467fb8a85440bc148f065e3ba6318eeabb493c5869d0e4e783cead" "58ef798c0d6700e9c4b6af5371b88ce72cf272a0f51677b714ba7eb9f7f44dd5" "d915f98ec1b444953ef5a58e17de3df122a7876996eb48cb7042c0df2fb49fc7" "50f2c52f87cadf18c9f6f6da73a48123f6f9563f3f8565ef334e8c8bfd3748e2" "e3cba678a91ca9d10d676ac098677a5f73568ca4553c9640e5d04b35ea27c150" "3a5d311c0c6770a7fbda07e59b694f7f17ab6d472e8dfd0421146176aac6df5c" "2ffd1e3f39dc4284688775ff2eca173fb7a5f0b81cbec7bbc4bdafe2c5bdc59b" "28e8be1d4ecc0007c695db5df83b515c41551971e9bb688235a57f04a896be52" "c675b5d31397ea1c5138c3d23a66c27a13371e3a32a475a59808ba5e8b18036c" "27188886f3bb62e00f1f9a778d91afd6072c7f31941ecf9ec7a847da0ce65d96" "bb912be2c5c5013c3e6ec95ecc7de389e3736ecb4f920283877addde69d3af4b" "e9b6a09c4b4ec239dc60851d2504e8d0200b165b26cf3949a71754b01224fce8" "9d8123cade02c4fb3168e8b6f3278296b3ebfbb2d013f089f8f38a45e79d209a" "4fff2cd238cd997353fee5c0b91709b5f8ac01f290244559627b357c3ad02c75" "1b23bd6576aea1926ba6c528b1541a474613706ba4b021484ce9a4895c18458b" "5051c19b8a50dcc04f866ec34ff76b9e3393dc2546890cdb566f4a38697d30a9" "031711b978eeaab58685dbdcf1e91a2b1be4908f962697ba72b7784ad50ba51c" "e16940739758b35d82ee55d269f5f028c8b23e5c5786e8e63ad890580c792e78" "12b43553eb62fad4fc5361a9afc874b48cc77b76891e6a2d2f6ec957b934554c" "5a515057e7c4e39b42d402c3e9a5dff6984717af09a9abd05cc3d590a08a19cb" "e802c27d13f74a70f06973c4794382343de653a61d664dcf361a2a7bb697bf2c" "9921c8ce62cc6191a05fef3e681f7110c6272dfca75a25cd588bc7f6103e005e" "8fbaca482eb08c07dd3dee3495c621de3c6e4ebbcbe2f6cc88949d57787cb74d" "53e29ea3d0251198924328fd943d6ead860e9f47af8d22f0b764d11168455a8e" "0744f61189c62ed6d1f8fa69f6883d5772fe8577310b09e623c62c040f208cd4" "454dc6f3a1e9e062f34c0f988bcef5d898146edc5df4aa666bf5c30bed2ada2e" "573e46dadf8c2623256a164831cfe9e42d5c700baed1f8ecd1de0675072e23c2" "3cdc26b9fce6dbc23594b6194150b025909daa4b33fa58343aef4228b1baa4b5" "a5062bd764b24b4c6b3311c5130edc9dec2ed0a5be099db16f67ca648d5116d4" "e2efd6fb54caa83a0b90b5531dff9a0e82a85da0ec6be1e1e099a3812a64700b" "8c2c0368b83202caddaaf4f3d73427f644539a26c299fde942e37401959cb9e4" "c746b748e2a7eff4d211dd7bb5454d9641dffdfd3f03d13a3465cf416858fcf7" "cec78cf3910d386a50c6367dd7c41d13420326148a59b0ceaa02991786b023f0" "e6d83e70d2955e374e821e6785cd661ec363091edf56a463d0018dc49fbc92dd" "da49c10eb5dfa7779d9ac68629f00e42463f82c80ea849a251336e806dfec4b1" default)))
 '(electric-indent-mode t)
 '(fci-rule-character-color "#192028")
 '(fci-rule-color "#192028")
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-add-package nil)
 '(haskell-process-suggest-haskell-docs-imports nil)
 '(haskell-process-suggest-hayoo-imports nil)
 '(haskell-process-suggest-hoogle-imports nil)
 '(haskell-process-suggest-language-pragmas nil)
 '(haskell-process-suggest-no-warn-orphans nil)
 '(haskell-process-suggest-overloaded-strings nil)
 '(haskell-process-suggest-remove-import-lines nil)
 '(haskell-process-type (quote stack-ghci))
 '(haskell-tags-on-save t)
 '(truncate-lines nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
