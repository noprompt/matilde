;; =====================================================================
;; Clojure

;; ---------------------------------------------------------------------
;; Packages

(package-require 'paredit)
(package-require 'rainbow-delimiters)
(package-require 'clojure-mode)
(package-require 'clojurescript-mode)
;(package-require 'cider)
;(package-require 'ac-cider-compliment)
(package-require 'ac-cider)
(package-require 'clj-refactor)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/non-elpa/cider"))

(require 'clojure-mode)
(require 'clojurescript-mode)
(require 'cider)
;(require 'ac-cider)
;(require 'ac-cider-compliment)
(require 'init-paredit)
(require 'init-key-bindings)
(require 'init-lisp)

;; ---------------------------------------------------------------------
;; Settings

(add-to-list 'auto-mode-alist '("\\.cljx$" . clojure-mode))

;;; Indention

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
  (facts 'defun)
  )

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


;; ---------------------------------------------------------------------
;; Functions

(defun toggle-clojure-defun-style-indent ()
  (interactive)
  (let ((b clojure-defun-style-default-indent))
    (setq clojure-defun-style-default-indent (not b))))

(defun cider-eval-expression-at-point-in-repl ()
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

(defun clj-scratch ()
  "Create/retrieve a Clojure scratch buffer and switch to it.."
  (interactive)
  (let ((buf (get-buffer-create "*clj-scratch*")))
    (switch-to-buffer buf)
    (clojure-mode)))

(defun cljs-scratch ()
  "Create/retrieve a ClojureScript scratch buffer and switch to it.."
  (interactive)
  (let ((buf (get-buffer-create "*cljs-scratch*")))
    (switch-to-buffer buf)
    (clojurescript-mode)))

(defun clj-string-name (s)
  (substring s 1 -1))

(defun clj-keyword-name (s)
  (substring s 1))

(defun delete-and-extract-sexp ()
  (let* ((begin (point)))
    (forward-sexp)
    (let* ((result (buffer-substring-no-properties begin (point))))
      (delete-region begin (point))
      result)))

(defun toggle-clj-keyword-string ()
  (interactive)
  (save-excursion
    (if (equal 1 (point))
        (message "Beginning of file reached, this was probably a mistake.")
      (cond
       ((equal "\"" (char-at-point))
        (insert ":" (clj-string-name (delete-and-extract-sexp))))
       ((equal ":" (char-at-point))
        (insert "\"" (clj-keyword-name (delete-and-extract-sexp)) "\""))
       (t (progn
            (backward-char)
            (toggle-clj-keyword-string)))))))


;; ---------------------------------------------------------------------
;; Hooks

(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'noprompt/define-paredit-keys)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojurescript-mode-hook 'paredit-mode)
(add-hook 'clojurescript-mode-hook 'noprompt/define-paredit-keys)
(add-hook 'clojurescript-mode-hook 'rainbow-delimiters-mode)


;; ---------------------------------------------------------------------
;; Cider settings

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)
(setq cider-interactive-eval-result-prefix ";; => ")

(setq nrepl-hide-special-buffers t)
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

(comment
 (eval-after-load 'cider
   '(progn
      (define-key nrepl-interaction-mode-map
	(kbd "C-c D") 'lispy-describe)
      (define-key nrepl-interaction-mode-map
	(kbd "C-c C-d") 'lispy-describe-inline))))

;; ---------------------------------------------------------------------
;; AC settings

(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'cider-mode))

;; ---------------------------------------------------------------------
;; Keybindings

(defun ~/cider-repl-clear-buffer ()
  (interactive)
  (let ((buffer (cider-get-repl-buffer)))
    (when buffer
      (with-current-buffer buffer
	(cider-repl-clear-buffer)))))

(define-key clojure-mode-map
  (kbd "C-c M-b")
  '~/cider-repl-clear-buffer)

(define-key cider-mode-map
  (kbd "C-;") 'cider-eval-expression-at-point-in-repl)

(define-key cider-mode-map
  (kbd "C-c C-d") 'cider-doc)

(define-key cider-mode-map
  (kbd "C-c C-j") 'cider-jump-to-var)

(evil-define-key
  'normal clojure-mode-map
  (kbd ",:") 'toggle-clj-keyword-string)

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
  (kbd ",e") 'cider-eval-expression-at-point-in-repl)

(evil-define-key
  'normal cider-mode-map
  (kbd ",l") 'cider-load-file)

(evil-define-key
  'normal cider-mode-map
  (kbd ",d") 'cider-doc)

(provide 'init-clojure)
