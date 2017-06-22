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
(setq-default truncate-lines t)

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

(defmacro ~/comment (&rest body)
  "Comment out one or more s-expressions."
  nil)

;; ---------------------------------------------------------------------
;; AG

(~/package-require 'ag)
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
;; PROJECTILE

(~/package-require 'projectile)

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
;; WORDNET

(setq ~/wordnut-source-path
      (concat user-emacs-directory "lisp/wordnut/"))

(add-to-list 'load-path ~/wordnut-source-path)
(require 'wordnut)

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
;; INDENT GUIDES

(~/package-require 'highlight-indent-guides)
(setq highlight-indent-guides-method 'character)

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
(~/package-require 'clj-refactor)

(require 'clojure-mode)

;; CLOJURE CIDER

(add-to-list 'load-path (expand-file-name "~/.emacs.d/non-elpa/cider"))
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

  ;; korma
  (select 'defun)
  (insert 'defun)

  ;; compojure
  (GET 'defun)
  (POST 'defun)
  (context 2)

  ;; persephone
  (start 'defun)
  (start* 'defun)

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

  ;; midje
  (fact 'defun)
  (facts 'defun)

  ;; other
  (λ 1)
  (variant 1)
  (field 1)
  (optional-field 1))

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

(setq ~/rbenv-el-source-path
      (concat user-emacs-directory "lisp/rbenv.el/"))

(setq rbenv-installation-dir "/usr/local/")

(add-to-list 'load-path ~/rbenv-el-source-path)

(require 'rbenv)

(global-rbenv-mode)

;; RUBY BURDOCK
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
;; HASKELL

(package-require 'ghc)
(package-require 'intero)
(package-require 'haskell-mode)
(package-require 'hindent)
(require 'haskell)
(require 'hindent)

(setq auto-mode-alist (cons '("\.hs$" . haskell-mode) auto-mode-alist))

;; HASKELL FUNCTIONS

(defun ~/haskell/before-save-hook ()
  (haskell-mode-stylish-buffer))

(add-hook 'haskell-mode-hook
          (lambda ()
            (add-hook 'before-save-hook '~/haskell/before-save-hook nil 'local)))

;; HASKELL HOOKS

(add-hook 'haskell-mode-hook 'intero-mode)

(add-hook 'haskell-mode-hook 'autopair-mode)

(add-hook 'haskell-mode-hook
           (lambda ()
             (haskell-indentation-mode 1)))

(add-hook 'haskell-mode-hook
          (lambda ()
            (add-hook 'before-save-hook '~/haskell/before-save-hook nil 'local)))

(add-hook 'haskell-mode-hook 'highlight-indent-guides-mode)

(add-hook 'haskell-mode-hook
          (lambda ()
            (setq evil-shift-width 2)))

;; HASKELL KEY BINDINGS

(define-key haskell-mode-map (kbd "TAB")
  'evil-shift-right-line)

(define-key haskell-mode-map (kbd "S-TAB")
  'evil-shift-line-line)

;; Configuration from "Using Emacs for Haskell development"
;; See: https://github.com/serras/emacs-haskell-tutorial/blob/master/tutorial.md

(let ((my-cabal-path (expand-file-name "~/.cabal/bin")))
  (setenv "PATH" (concat my-cabal-path path-separator (getenv "PATH")))
  (add-to-list 'exec-path my-cabal-path))


(~/comment
 (eval-after-load 'haskell-mode
   '(progn
      (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
      (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
      (define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
      (define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
      (define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
      (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)
      (define-key haskell-mode-map (kbd "C-c M-j") 'haskell-interactive-bring)
      (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)
      ;; This should probably be a bit more sophisticated.
      (define-key haskell-mode-map (kbd "TAB") 'haskell-indent-cycle)))

 (eval-after-load 'haskell-cabal
   '(progn
      (define-key haskell-cabal-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
      (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
      (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
      (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)))

 (add-hook 'haskell-mode-hook 'haskell-doc-mode))

;; ---------------------------------------------------------------------
;; RACKET

(~/package-require 'quack)
(~/package-require 'scribble-mode)
(require 'quack)
(require 'scribble-mode)


(evil-define-key
  'normal racket-mode-map
  (kbd ",e") 'geiser-eval-definition)

;; ---------------------------------------------------------------------
;; ELM

(add-to-list 'load-path (expand-file-name "~/.emacs.d/non-elpa/elm-mode"))

;; We need to require these packages before requiring elm-mode.
(~/package-require 'f)
(~/package-require 'let-alist)
(~/package-require 's)
(require 'elm-mode)

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

(package-require 'js2-mode)
(package-require 'skewer-mode)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq-default js2-basic-offset 2)

;; Prevents funky characters at the REPL.
(setenv "NODE_NO_READLINE" "1")

;;;; Functions

(defun ~/javascript/nodejs-repl ()
  (interactive)
  (pop-to-buffer (make-comint "nodejs" "node")))

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



;; ---------------------------------------------------------------------
;; BARF

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(burdock-ruby-source-directory "/Users/noprompt/git/noprompt/rhubarb-mode/ruby/")
 '(custom-safe-themes
   (quote
    ("3f546f127564de59f1c42dfd65d32bd7650fa5a614cd58c2df061da052ea3ec0" "cea3ec09c821b7eaf235882e6555c3ffa2fd23de92459751e18f26ad035d2142" "3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" "08b8807d23c290c840bbb14614a83878529359eaba1805618b3be7d61b0b0a32" "41eb3fe4c6b80c7ad156a8c52e9dd6093e8856c7bbf2b92cc3a4108ceb385087" "946e871c780b159c4bb9f580537e5d2f7dba1411143194447604ecbaf01bd90c" "9955cc54cc64d6c051616dce7050c1ba34efc2b0613d89a70a68328f34e22c8f" "fc7fd2530b82a722ceb5b211f9e732d15ad41d5306c011253a0ba43aaf93dccc" "25c242b3c808f38b0389879b9cba325fb1fa81a0a5e61ac7cae8da9a32e2811b" "ef04dd1e33f7cbd5aa3187981b18652b8d5ac9e680997b45dc5d00443e6a46e3" "8be07a2c1b3a7300860c7a65c0ad148be6d127671be04d3d2120f1ac541ac103" "3de3f36a398d2c8a4796360bfce1fa515292e9f76b655bb9a377289a6a80a132" "7bef2d39bac784626f1635bd83693fae091f04ccac6b362e0405abf16a32230c" "722e1cd0dad601ec6567c32520126e42a8031cd72e05d2221ff511b58545b108" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "1606c3a5e58d74a10289df3c7a4005b670e2b80a54c87f05263862cbe4626ac5" "f869a5d068a371532c82027cdf1feefdc5768757c78c48a7e0177e90651503ad" "986e7e8e428decd5df9e8548a3f3b42afc8176ce6171e69658ae083f3c06211c" "463340338b9a67e1389be83e9220a0a2785433ff153fd9d659041c70a7a308d3" "4bf5c18667c48f2979ead0f0bdaaa12c2b52014a6abaa38558a207a65caeb8ad" "df21cdadd3f0648e3106338649d9fea510121807c907e2fd15565dde6409d6e9" "cbd8e65d2452dfaed789f79c92d230aa8bdf413601b261dbb1291fb88605110c" "ffe80c88e3129b2cddadaaf78263a7f896d833a77c96349052ad5b7753c0c5a5" "5a7830712d709a4fc128a7998b7fa963f37e960fd2e8aa75c76f692b36e6cf3c" "6145e62774a589c074a31a05dfa5efdf8789cf869104e905956f0cbd7eda9d0e" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "c968804189e0fc963c641f5c9ad64bca431d41af2fb7e1d01a2a6666376f819c" "85e6bb2425cbfeed2f2b367246ad11a62fb0f6d525c157038a0d0eaaabc1bfee" "d9dab332207600e49400d798ed05f38372ec32132b3f7d2ba697e59088021555" "250268d5c0b4877cc2b7c439687f8145a2c85a48981f7070a72c7f47a2d2dc13" "d96587ec2c7bf278269b8ec2b800c7d9af9e22d816827639b332b0e613314dfd" "6f3e8df833cdaaef4ae0fb5cad70f5f74afc834a5eb8eec45efa5dd8f7356f9d" "3f67aee8f8d8eedad7f547a346803be4cc47c420602e19d88bdcccc66dba033b" "7790dbc91156dd9a5c7f2ee99e5f7e6549f244038b46ed6352d7693be2e0aec6" "5b8eccff13d79fc9b26c544ee20e1b0c499587d6c4bfc38cabe34beaf2c2fc77" "8543b328ed10bc7c16a8a35c523699befac0de00753824d7e90148bca583f986" "aeb698d431751b18153e89b5f838fc3992433780a39a082740db216c7202a1c9" "6271fc9740379f8e2722f1510d481c1df1fcc43e48fa6641a5c19e954c21cc8f" "076a94693c0f6fa99612121c18ccb48bfbd842c05b6b9ed04b6e7e0a0f95a53e" "aea30125ef2e48831f46695418677b9d676c3babf43959c8e978c0ad672a7329" "1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "93268bf5365f22c685550a3cbb8c687a1211e827edc76ce7be3c4bd764054bad" "9be1d34d961a40d94ef94d0d08a364c3d27201f3c98c9d38e36f10588469ea57" "73ad471d5ae9355a7fa28675014ae45a0589c14492f52c32a4e9b393fcc333fd" "b8929cff63ffc759e436b0f0575d15a8ad7658932f4b2c99415f3dde09b32e97" "9c4acf7b5801f25501f0db26ac3eee3dc263ed51afd01f9dcfda706a15234733" "85d609b07346d3220e7da1e0b87f66d11b2eeddad945cac775e80d2c1adb0066" "e1498b2416922aa561076edc5c9b0ad7b34d8ff849f335c13364c8f4276904f0" "5a39d2a29906ab273f7900a2ae843e9aa29ed5d205873e1199af4c9ec921aaab" "840db7f67ce92c39deb38f38fbc5a990b8f89b0f47b77b96d98e4bf400ee590a" "a62f0662e6aa7b05d0b4493a8e245ab31492765561b08192df61c9d1c7e1ddee" "159aab698b9d3fb03b495ce3af2d298f4c6dfdf21b53c27cd7f472ee5a1a1de3" "3e34e9bf818cf6301fcabae2005bba8e61b1caba97d95509c8da78cff5f2ec8e" "1d079355c721b517fdc9891f0fda927fe3f87288f2e6cc3b8566655a64ca5453" "92192ea8f0bf04421f5b245d906701abaa7bb3b0d2b3b14fca2ee5ebb1da38d8" "34ed3e2fa4a1cb2ce7400c7f1a6c8f12931d8021435bad841fdc1192bd1cc7da" "760ce657e710a77bcf6df51d97e51aae2ee7db1fba21bbad07aab0fa0f42f834" "dd4628d6c2d1f84ad7908c859797b24cc6239dfe7d71b3363ccdd2b88963f336" "cabc32838ccceea97404f6fcb7ce791c6e38491fd19baa0fcfb336dcc5f6e23c" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "eb0a314ac9f75a2bf6ed53563b5d28b563eeba938f8433f6d1db781a47da1366" "a632c5ce9bd5bcdbb7e22bf278d802711074413fd5f681f39f21d340064ff292" "afc220610bee26945b7c750b0cca03775a8b73c27fdca81a586a0a62d45bbce2" "7ceb8967b229c1ba102378d3e2c5fef20ec96a41f615b454e0dc0bfa1d326ea6" "32e3693cd7610599c59997fee36a68e7dd34f21db312a13ff8c7e738675b6dfc" "0820d191ae80dcadc1802b3499f84c07a09803f2cb90b343678bdb03d225b26b" "7ed6913f96c43796aa524e9ae506b0a3a50bfca061eed73b66766d14adfa86d1" "0c311fb22e6197daba9123f43da98f273d2bfaeeaeb653007ad1ee77f0003037" "b06a48029805afb142d96e817abb89e742e5dd7ec7e29c2a1b89948c8e9a225b" "e80a0a5e1b304eb92c58d0398464cd30ccbc3622425b6ff01eea80e44ea5130e" "30a8a5a9099e000f5d4dbfb2d6706e0a94d56620320ce1071eede5481f77d312" "024872c7e77508eb4820866aa9f4251e9eae359c613be5950aa1ee33186c8849" "8288b9b453cdd2398339a9fd0cec94105bc5ca79b86695bd7bf0381b1fbe8147" "1619bebce7101253cf2863133632089435d6f25c89f0711be5bdf0746e7d3572" "3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "715fdcd387af7e963abca6765bd7c2b37e76154e65401cd8d86104f22dd88404" "94ba29363bfb7e06105f68d72b268f85981f7fba2ddef89331660033101eb5e5" "9f3dd1d7b46e99b94bb53506c44b651c811b3552100898842bdd22ce63ab8b55" "6c7021e320ab007b8549d46f329f0e53fe33c83fb7e315cbdcf5f5175871f955" "edbd517c6ab14f7a224d9817db571971ed3ca2bbab112ac63d5cba4e81a43e21" "49b1bb63985aefb6fb365967080918e6e773f0ef8348cfdac49a235fde13c57a" "71ecffba18621354a1be303687f33b84788e13f40141580fa81e7840752d31bf" "3ed645b3c08080a43a2a15e5768b893c27f6a02ca3282576e3bc09f3d9fa3aaa" "e62cc95f871e4b5474c45c8d2f426ad91f7557666d48f5c605e9d55c3768752f" "aed73c6d0afcf2232bb25ed2d872c7a1c4f1bda6759f84afc24de6a1aec93da8" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "133222702a3c75d16ea9c50743f66b987a7209fb8b964f2c0938a816a83379a0" "959a77d21e6f15c5c63d360da73281fdc40db3e9f94e310fc1e8213f665d0278" "1edf370d2840c0bf4c031a044f3f500731b41a3fd96b02e4c257522c7457882e" "db9feb330fd7cb170b01b8c3c6ecdc5179fc321f1a4824da6c53609b033b2810" "e681c4fc684a543ce97c2d55082c6585182c0089f605dc9a5fe193870f03edc6" "bf81a86f9cfa079a7bb9841bc6ecf9a2e8999b85e4ae1a4d0138975921315713" "e24679edfdea016519c0e2d4a5e57157a11f928b7ef4361d00c23a7fe54b8e01" "cdfb22711f64d0e665f40b2607879fcf2607764b2b70d672ddaa26d2da13049f" "50e7f9d112e821e42bd2b8410d50de966c35c7434dec12ddea99cb05dd368dd8" "492d12e4ec6a4bb098a8150e8c99372f75617f141b78f94ff5af358c6bda23a1" "1e467344d9bc6dfdd71d64705612882c795170097e48a5bad10ce587e49e97d5" "44eec3c3e6e673c0d41b523a67b64c43b6e38f8879a7969f306604dcf908832c" "4904daa168519536b08ca4655d798ca0fb50d3545e6244cefcf7d0c7b338af7e" "419637b7a8c9cb43f273980f0c9879c0cbadace6b38efac0281e031772c84eb2" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "196cc00960232cfc7e74f4e95a94a5977cb16fd28ba7282195338f68c84058ec" "1fab355c4c92964546ab511838e3f9f5437f4e68d9d1d073ab8e36e51b26ca6a" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" "88d556f828e4ec17ac074077ef9dcaa36a59dccbaa6f2de553d6528b4df79cbd" "b6f42c69cf96795c75b1e79e5cd8ca62f9f9a0cb07bf11d1e0b49f97785358f1" "7d2447bfa3b440e4eb985c6d199afb25c1b71ea8179066b81a09915ebf3aa95e" "5d7e1a089a0392827c1a1a626c93f2be5cf1a108a5f86663e9f1eed67fd094ea" "cdd26fa6a8c6706c9009db659d2dffd7f4b0350f9cc94e5df657fa295fffec71" "28c015882edacd8a785f191d91104ee47c45fc6f5ca23e7a3d1700169cd75516" "dc261a3614777e08f8c8f70d7cf63215786eafeedae45fc7f062c614eabf584c" "726dd9a188747664fbbff1cd9ab3c29a3f690a7b861f6e6a1c64462b64b306de" "76626efc044daee1c402e50f185bd633d1a688c332bc15c8fd5db4cdf2966b79" "86a731bda96ed5ed69980b4cbafe45614ec3c288da3b773e4585101e7ece40d2" "fbcdb6b7890d0ec1708fa21ab08eb0cc16a8b7611bb6517b722eba3891dfc9dd" "f9d34593e9dd14b2d798494609aa0fddca618145a5d4b8a1819283bc5b7a2bfd" "8f0334c430540bf45dbcbc06184a2e8cb01145f0ae1027ce6b1c40876144c0c9" "beeb5ac6b65fcccfe434071d4624ff0308b5968bf2f0c01b567d212bcaf66054" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "de2c46ed1752b0d0423cde9b6401062b67a6a1300c068d5d7f67725adc6c3afb" "95db78d85e3c0e735da28af774dfa59308db832f84b8a2287586f5b4f21a7a5b" "66132890ee1f884b4f8e901f0c61c5ed078809626a547dbefbb201f900d03fd8" "f04122bbc305a202967fa1838e20ff741455307c2ae80a26035fbf5d637e325f" "c1390663960169cd92f58aad44ba3253227d8f715c026438303c09b9fb66cdfb" "bf648fd77561aae6722f3d53965a9eb29b08658ed045207fe32ffed90433eb52" "53c542b560d232436e14619d058f81434d6bbcdc42e00a4db53d2667d841702e" "f7094f95081ade69e556e0f77b92685a528edc62adbff33f19a0fef9c1424975" "41f5dc9ed7495632659799cad8f2a800e647039c8156118eeace34b1487a4372" "77fc243537528d575a79ba067f163d9af80df6f8600a20805de2ba8da6b3ba65" "7d4d00a2c2a4bba551fcab9bfd9186abe5bfa986080947c2b99ef0b4081cb2a6" "38743882bea2c9b8cca7b3beec6cd295af182b09cd7931e60826ce84c09e5ab8" "e53cc4144192bb4e4ed10a3fa3e7442cae4c3d231df8822f6c02f1220a0d259a" "72348ab1195650b7357fc109c1695da71e0dff6e2cf59f144851afd330308720" "51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" "57c3a891ccbe422beab64b87906b9fc32a1b14d120b28577dea3b3bad5901c03" "56cb99174fad69feba8edd6663c592e77d77332fb4c4bb5be058ef459a426463" "6eaf798ea6d282767006d74d79435c4f0eb9826fcc1afa9ef0c4f9a69fdd44da" "387c1002dc74cc227328b361ad8e2772736e4c4bf5c17a1f76f66a6f6e3524c6" "e504d40d974f54ee7f5e3e667f984fcd0b180fd4b3efcd89832b95e52cb5050c" "43ad20da04c7ef7b66c5bdc9c6ca3212ea43ba7d71efbbdd70e4c299c08c093e" "d43938753d1553540a99e0ff915f31a0efe295656195016d6b479777b50a3f90" "61cbf304a24a2f9dce16efe22130a4576c568f16c64ef9d6ae82e11b65ba1c52" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "ee6081af57dd389d9c94be45d49cf75d7d737c4a78970325165c7d8cb6eb9e34" "941bc214a26ed295e68bbeaadcd279475a3d6df06ae36b0b2872319d58b855f7" "329e9e8c979ce487c8b4f923a8ddfdbdcf5c6c69082a27e2271d9f4b23b7477a" "7dd515d883520286fc8936ce32381fb01b978d0d7cfb6fe56f7f55d8accbf63a" "b234b4b98c70de265ed95f73ba4bb4e6a1ec7e70c0bfe355f60b2c1f94b45d5e" "b8a865d858814ef21d2fc27328a55da9e47ef924afc6043a4b4b9774786c6677" "2a8571b0d6aafa09a9b044db2cddf15acbdcc5a2eda3a848304343177a6b98aa" "b775f042ee4eac6fb17231ba939140fa688b6bad098e54ba3c0ed7d9a6cc3268" "73338d58c8d87c722be9fdfe5af45baa26bbdff2c3e2305bd6c9481f8867bdc4" "b5dbcd843f467fb8a85440bc148f065e3ba6318eeabb493c5869d0e4e783cead" "58ef798c0d6700e9c4b6af5371b88ce72cf272a0f51677b714ba7eb9f7f44dd5" "d915f98ec1b444953ef5a58e17de3df122a7876996eb48cb7042c0df2fb49fc7" "50f2c52f87cadf18c9f6f6da73a48123f6f9563f3f8565ef334e8c8bfd3748e2" "e3cba678a91ca9d10d676ac098677a5f73568ca4553c9640e5d04b35ea27c150" "3a5d311c0c6770a7fbda07e59b694f7f17ab6d472e8dfd0421146176aac6df5c" "2ffd1e3f39dc4284688775ff2eca173fb7a5f0b81cbec7bbc4bdafe2c5bdc59b" "28e8be1d4ecc0007c695db5df83b515c41551971e9bb688235a57f04a896be52" "c675b5d31397ea1c5138c3d23a66c27a13371e3a32a475a59808ba5e8b18036c" "27188886f3bb62e00f1f9a778d91afd6072c7f31941ecf9ec7a847da0ce65d96" "bb912be2c5c5013c3e6ec95ecc7de389e3736ecb4f920283877addde69d3af4b" "e9b6a09c4b4ec239dc60851d2504e8d0200b165b26cf3949a71754b01224fce8" "9d8123cade02c4fb3168e8b6f3278296b3ebfbb2d013f089f8f38a45e79d209a" "4fff2cd238cd997353fee5c0b91709b5f8ac01f290244559627b357c3ad02c75" "1b23bd6576aea1926ba6c528b1541a474613706ba4b021484ce9a4895c18458b" "5051c19b8a50dcc04f866ec34ff76b9e3393dc2546890cdb566f4a38697d30a9" "031711b978eeaab58685dbdcf1e91a2b1be4908f962697ba72b7784ad50ba51c" "e16940739758b35d82ee55d269f5f028c8b23e5c5786e8e63ad890580c792e78" "12b43553eb62fad4fc5361a9afc874b48cc77b76891e6a2d2f6ec957b934554c" "5a515057e7c4e39b42d402c3e9a5dff6984717af09a9abd05cc3d590a08a19cb" "e802c27d13f74a70f06973c4794382343de653a61d664dcf361a2a7bb697bf2c" "9921c8ce62cc6191a05fef3e681f7110c6272dfca75a25cd588bc7f6103e005e" "8fbaca482eb08c07dd3dee3495c621de3c6e4ebbcbe2f6cc88949d57787cb74d" "53e29ea3d0251198924328fd943d6ead860e9f47af8d22f0b764d11168455a8e" "0744f61189c62ed6d1f8fa69f6883d5772fe8577310b09e623c62c040f208cd4" "454dc6f3a1e9e062f34c0f988bcef5d898146edc5df4aa666bf5c30bed2ada2e" "573e46dadf8c2623256a164831cfe9e42d5c700baed1f8ecd1de0675072e23c2" "3cdc26b9fce6dbc23594b6194150b025909daa4b33fa58343aef4228b1baa4b5" "a5062bd764b24b4c6b3311c5130edc9dec2ed0a5be099db16f67ca648d5116d4" "e2efd6fb54caa83a0b90b5531dff9a0e82a85da0ec6be1e1e099a3812a64700b" "8c2c0368b83202caddaaf4f3d73427f644539a26c299fde942e37401959cb9e4" "c746b748e2a7eff4d211dd7bb5454d9641dffdfd3f03d13a3465cf416858fcf7" "cec78cf3910d386a50c6367dd7c41d13420326148a59b0ceaa02991786b023f0" "e6d83e70d2955e374e821e6785cd661ec363091edf56a463d0018dc49fbc92dd" "da49c10eb5dfa7779d9ac68629f00e42463f82c80ea849a251336e806dfec4b1" default)))
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
 '(package-selected-packages
   (quote
    (highlight-indent-guides hindent sql-indent sqlup-mode restclient scribble-mode quack jsc-light-theme rubocop rubocop-mode subatomic256-theme ham-mode evil moe-theme clojure-mode zonokai-theme yoshi-theme yard-mode yaml-mode xresources-theme which-key web-mode ubuntu-theme twilight-bright-theme twilight-anti-bright-theme tuareg tronesque-theme toml-mode theme-changer term+ tagedit swiper sublime-themes subatomic-theme stekene-theme sr-speedbar spacegray-theme soothe-theme smyx-theme smex smartparens smart-tab slime-theme slime-js slim-mode skewer-mode shen-mode seti-theme scss-mode sass-mode sane-term ruby-tools ruby-test-mode ruby-end ruby-electric rspec-mode robe rinari request rbenv rainbow-mode rainbow-identifiers rainbow-delimiters racket-mode racer quasi-monochrome-theme projectile planet-theme pivotal-tracker noctilux-theme neotree monokai-theme molokai-theme maxframe markdown-mode majapahit-theme magit lush-theme lispy less-css-mode lenlen-theme key-chord jujube-theme jsx-mode jdee jazz-theme ir-black-theme intero ido-vertical-mode ido-ubiquitous idle-highlight-mode highlight-sexp highlight-indentation heroku-theme hamburg-theme gruvbox-theme grandshell-theme gotham-theme goose-theme github-theme gherkin-mode ghc geiser fuzzy flycheck-haskell flatland-theme fish-mode firecode-theme firebelly-theme feature-mode farmhouse-theme faff-theme faceup exec-path-from-shell evil-paredit evil-mc evil-annoying-arrows elm-mode elfeed eink-theme dracula-theme dash-functional dash-at-point darktooth-theme darkmine-theme dark-krystal-theme darcula-theme cyberpunk-theme csv-nav csv-mode css-eldoc csharp-mode company-quickhelp company-inf-ruby colorsarenice-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode clues-theme clojurescript-mode clj-refactor cargo boron-theme birds-of-paradise-plus-theme beacon base16-theme autopair aurora-theme atom-one-dark-theme atom-dark-theme assemblage-theme arjen-grey-theme apache-mode airline-themes aggressive-indent ag ac-cider-compliment ac-cider)))
 '(sql-postgres-options (quote ("-P" "pager=off")))
 '(truncate-lines nil)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(font-lock-comment-face ((t (:slant italic))))
 '(font-lock-doc-face ((t (:slant italic))))
 '(mode-line ((t (:font "IosevkaCC" :height 140))))
 '(mode-line-highlight ((t (:height 140))))
 '(mode-line-inactive ((t (:slant italic :height 140)))))
