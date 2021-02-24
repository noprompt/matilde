;; ---------------------------------------------------------------------
;; Package
;; ---------------------------------------------------------------------

(defvar bootstrap-version)

(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)


;; ---------------------------------------------------------------------
;; Keyboard
;; ---------------------------------------------------------------------

;; C-h h is bound to `view-hello-file`.
(unbind-key (kbd "C-h h"))

(defun ~/minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*")
      (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))

(global-set-key [escape] 'evil-exit-emacs-state)
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

;; Evil
;; ----

(use-package evil
  :config
  (evil-mode t)
  (setq evil-shift-width 2)
  (setq evil-default-cursor t)

  ;; Evil normal state
  ;; -----------------

  (define-key evil-normal-state-map
    [escape] 'keyboard-quit)

  (define-key evil-normal-state-map
    (kbd "C-j") 'evil-scroll-page-down)

  (define-key evil-normal-state-map
    (kbd "C-k") 'evil-scroll-page-up)

  (define-key evil-normal-state-map
    (kbd "C-f") 'find-file)

  (define-key evil-normal-state-map
    (kbd "C-i") 'imenu)


  ;; Evil insert state
  ;; -----------------

  (define-key evil-insert-state-map
    (kbd "C-j") 'next-line)

  (define-key evil-insert-state-map
    (kbd "C-k") 'previous-line)

  (define-key evil-insert-state-map
    (kbd "C-b") 'backward-char)

  (define-key evil-insert-state-map
    (kbd "C-f") 'forward-char)

  ;; Evil visual state
  ;; -----------------

  (define-key evil-visual-state-map
    [escape] 'keyboard-quit)


  :straight t)

(use-package ace-jump-mode
  :config
  (define-key evil-normal-state-map
    (kbd "SPC") 'ace-jump-mode)

  :straight t)

(use-package key-chord
  :config
  (key-chord-mode t)
  (key-chord-define evil-normal-state-map ",x" 'smex)
  (key-chord-define evil-normal-state-map ",s" 'ido-switch-buffer)

  :straight t)

;; ---------------------------------------------------------------------
;; UI/UX
;; ---------------------------------------------------------------------

;; Highlight matching brackets.
(show-paren-mode 1)

;; Smooth scrolling.
(setq scroll-step 1)
(setq scroll-conservatively 10000)

;; Ask for y/n instead of yes/no.
(defalias 'yes-or-no-p 'y-or-n-p)

;; Always use spaces instead of tabs.
(setq-default indent-tabs-mode nil)

;; Do not truncate (wrap) lines by default.
(add-hook 'prog-mode-hook (lambda () (setq truncate-lines t)))


(use-package paredit
  :straight t)

(use-package magit
  :straight t)

(use-package ido
  :config
  (ido-mode t)
  (ido-everywhere t)
  (setq ido-enable-flex-matching t)
  (setq ido-use-virtual-buffers t)

  :straight t)

(use-package ido-completing-read+
  :ensure t
  :config
  (ido-ubiquitous-mode t)

  :straight t)

(use-package ido-vertical-mode
  :ensure t
  :config
  (ido-vertical-mode t)
  (setq ido-vertical-define-keys 'C-n-and-C-p-only)

  :straight t)

(use-package smex
  :config
  (smex-initialize)
  (smex-initialize-ido)

  :straight t)

(use-package idle-highlight-mode
  :config
  (add-hook 'prog-mode-hook 'idle-highlight-mode)

  :straight t)

(use-package rainbow-delimiters
  :straight t)

;; Completion
;; ----------

(use-package company
  :config
  (global-company-mode)
  (define-key company-active-map (kbd "C-n") 'company-select-next-or-abort)
  (define-key company-active-map (kbd "C-p") 'company-select-previous-or-abort)
  (define-key company-active-map (kbd "C-d") 'company-show-doc-buffer)

  (define-key evil-insert-state-map
    (kbd "TAB") 'company-complete)

  :straight t)

;; Paredit
;; -------

(use-package paredit
  :straight t)

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
  (interactive)
  (paredit-mode)
  (~/paredit/define-evil-keys))

(use-package kaolin-themes
  :straight t)

(use-package doom-themes
  :straight t)

(straight-use-package
 '(base16-emacs
   :type git
   :repo "git@github.com:neeasade/base16-emacs.git"))

(add-to-list 'custom-theme-load-path
             (concat user-emacs-directory "straight/repos/base16-emacs/build"))


;; (straight-use-package '(colorless-themes :type git :repo "https://git.sr.ht/~lthms/colorless-themes.el"))
;; (add-to-list 'custom-theme-load-path (concat user-emacs-directory "straight/repos/colorless-themes"))

;; (straight-use-package '(mac-classic-theme :type git :repo "git@github.com:ahobson/mac-classic-theme.git"))
;; (add-to-list 'custom-theme-load-path (concat user-emacs-directory "straight/repos/mac-classic-theme"))

;; (use-package snazzy-theme
;;   :straight t)

;; ---------------------------------------------------------------------
;; Utilites
;; ---------------------------------------------------------------------

(use-package s
  :straight t)

;; ---------------------------------------------------------------------
;; LISP
;; ---------------------------------------------------------------------

(defvar ~/lisp/imenu-section
  '((nil "defun +\\(.+\\)" 1)))

(defun ~/lisp/setup-imenu ()
  (setq imenu-generic-expression ~/lisp/imenu-section)
  (imenu-add-menubar-index))

(defun ~/lisp/insert-comment-h1 (title)
  (interactive (list (read-string "Title: ")))
  (insert ";; " title "\n")
  (insert ";; ---------------------------------------------------------------------\n"))

(defun ~/lisp/insert-comment-h2 (title)
  (interactive (list (read-string "Title: ")))
  (insert ";; " title "\n")
  (insert ";; ")
  (dotimes (n (length title))
    (insert "-"))
  (insert "\n"))

(defun ~/lisp/insert-comment-header (&optional title)
  (interactive)
  (insert ";; ---------------------------------------------------------------------\n")
  (insert ";;")
  (when (stringp title)
    (insert " ")
    (insert title)))

(defun ~/lisp-mode ()
  (interactive)
  (~/paredit-mode)
  (rainbow-delimiters-mode)
  (eldoc-mode))

(defun ~/lisp/narrow-to-defun ()
  (interactive)
  (with-current-buffer (current-buffer)
    (let ((p1 (save-excursion (beginning-of-defun) (point)))
          (p2 (save-excursion (end-of-defun) (point))))
      (narrow-to-region p1 p2))))

(defun ~/lisp/indirect-narrow-to-defun ()
  (interactive)
  (let* ((buffer-name (read-from-minibuffer "Buffer name: "))
         (buffer-name (if (s-blank-p buffer-name)
                          (make-temp-name "defun__")
                        buffer-name)))
    (with-current-buffer (clone-indirect-buffer buffer-name t)
      (~/lisp/narrow-to-defun))))

;; Emacs Lisp
;; ----------

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
        (let ((print-length 64))
          (pp result (current-buffer)))
        (setq buffer-read-only t)))
    (pop-to-buffer current-buffer)))

(defun ~/emacs-lisp/define-keys ()
  (define-key emacs-lisp-mode-map
    (kbd "C-c C-c") 'eval-defun)

  (define-key emacs-lisp-mode-map
    (kbd "C-c C-l") 'eval-buffer)

  (define-key emacs-lisp-mode-map
    (kbd "C-c C-d") 'describe-symbol)

  (define-key emacs-lisp-mode-map
    (kbd "C-c C-f") '~/emacs-lisp/eval-defun-pp))

;; (define-key emacs-lisp-mode-map
;;   (kbd "C-;") 'elisp-eval-expression-at-point-in-ielm)

(defun ~/emacs-lisp-mode ()
  (interactive)
  (~/lisp/setup-imenu)
  (~/lisp-mode)
  (~/emacs-lisp/define-keys))

(add-hook 'emacs-lisp-mode-hook '~/emacs-lisp-mode)

;; Clojure
;; -------

(use-package clojure-mode
  :straight t)

(use-package inf-clojure
  :straight t)

(define-key inf-clojure-minor-mode-map
  (kbd "C-c C-p") 'inf-clojure-eval-last-sexp)

(define-key inf-clojure-minor-mode-map
  (kbd "C-c C-f") 'inf-clojure-eval-defun)

(use-package cider
  :straight t)

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
;; Turn off font-lock for reader conditionals.
(setq cider-font-lock-reader-conditionals nil)

(put-clojure-indent 'compojure.core/DELETE :defn)
(put-clojure-indent 'compojure.core/GET :defn)
(put-clojure-indent 'compojure.core/POST :defn)
(put-clojure-indent 'compojure.core/PUT :defn)
(put-clojure-indent 'compojure.core/context :defn)
(put-clojure-indent 'clojure.test.check.properties/for-all :defn)
(put-clojure-indent 'with :defn)
(put-clojure-indent 'bidi.syntax/branch :defn)

;; Clojure mode functions
;; ----------------------

(defun ~/clojure/toggle-defun-style-indent ()
  (interactive)
  (if (equal clojure-indent-style 'always-indent)
      (setq clojure-indent-style 'always-align)
    (setq clojure-indent-style 'always-indent)))

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
        nil
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

(define-key clojure-mode-map
  (kbd "C-c M-b") '~/clojure/cider-repl-clear-buffer)

(define-key cider-mode-map
  (kbd "C-c C-c") 'cider-eval-defun-at-point)

(define-key cider-mode-map
  (kbd "C-c C-l") 'cider-load-buffer)

(define-key cider-mode-map
  (kbd "C-c C-d") 'cider-doc)

(define-key cider-mode-map
  (kbd "C-c C-j") 'cider-find-dwim)

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

(setq-default cider-clojure-cli-global-options "-A:convenient")

(defun ~/clojure/cider-clojure-cli-jack-in-dependencies (&rest args)
  (pcase (car args)
    (`(,global-opts ,params ,dependencies)
     (list (concat global-opts " " (read-string "Additional options: "))
           params
           dependencies))
    (_ args)))

(advice-add 'cider-clojure-cli-jack-in-dependencies
            :filter-args
            '~/clojure/cider-clojure-cli-jack-in-dependencies)


;; ---------------------------------------------------------------------
;; JavaScript
;; ---------------------------------------------------------------------

(use-package js2-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
  (setq-default js2-basic-offset 2)
  (setq-default js-indent-level 2)

  :straight t)

(use-package rjsx-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.jsx$" . rjsx-mode))

  :straight t)

;;(use-package skewer-mode)

(defun ~/javascript/nodejs-repl ()
  (interactive)
  ;; Prevents funky characters at the REPL.
  (setenv "NODE_NO_READLINE" "1")
  (pop-to-buffer (make-comint "nodejs" "node"))

  :straight t)

;; ---------------------------------------------------------------------
;; Markdown
;; ---------------------------------------------------------------------

(use-package markdown-mode
  :straight t)
