;; =====================================================================
;; Clojure

;; ---------------------------------------------------------------------
;; Packages

(package-require 'paredit)
(package-require 'rainbow-delimiters)
(package-require 'clojure-mode)
(package-require 'clojurescript-mode)
;(package-require 'cider)
(package-require 'ac-cider-compliment)
(package-require 'ac-cider)

(add-to-list 'load-path
  (expand-file-name "~/.emacs.d/non-elpa/slamhound/"))

(add-to-list 'load-path
  (expand-file-name "~/.emacs.d/non-elpa/cider"))

(require 'clojure-mode)
(require 'clojurescript-mode)
(require 'cider)
(require 'ac-cider)
;(require 'ac-cider-compliment)
(require 'noprompt-paredit)
(require 'noprompt-key-bindings)
(require 'noprompt-lisp)
(require 'slamhound)

;; ---------------------------------------------------------------------
;; Settings

(add-to-list 'auto-mode-alist '("\\.cljx$" . clojure-mode))

(define-clojure-indent
  ;; clojure.core
  (apply 1)
  (as-> 'defun)
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
  (specify! 'defun))

;; ---------------------------------------------------------------------
;; Functions

(defun toggle-clojure-defun-style-indent ()
  (interactive)
  (let ((b clojure-defun-style-default-indent))
    (setq clojure-defun-style-default-indent (not b))))

;; Commandeered from https://github.com/halgari/clojure-conj-2013-core.async-examples#usage
(defun cider-eval-expression-at-point-in-repl ()
  (interactive)
  (let ((form (cider-defun-at-point)))
    ;; Strip excess whitespace
    (while (string-match "\\`\s+\\|\n+\\'" form)
      (setq form (replace-match "" t t form)))
    (set-buffer (cider-find-or-create-repl-buffer))
    (goto-char (point-max))
    (insert form)
    (cider-repl-return)))

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
;;

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)


(setq cider-interactive-eval-result-prefix ";; => ")
(setq cider-repl-use-clojure-font-lock nil)

(setq nrepl-hide-special-buffers t)
;; Stop the error buffer from popping up while working in buffers
;; other than the REPL
(setq cider-popup-stacktraces nil)
(setq cider-repl-popup-stacktraces nil)
;; Do not auto-select the error buffer when it's displayed.
(setq cider-auto-select-error-buffer nil)
(setq cider-repl-use-clojure-font-lock t)
(setq cider-repl-use-pretty-printing nil)
(setq cider-show-error-buffer t)

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

(define-key clojure-mode-map
  (kbd "C-:") 'toggle-clj-keyword-string)

(define-key cider-mode-map
  (kbd "C-;") 'cider-eval-expression-at-point-in-repl)

(define-key cider-mode-map
  (kbd "C-c C-d") 'cider-doc)

(nmmap cider-mode-map ",e" 'cider-eval-defun-at-point)
(nmmap cider-mode-map ",l" 'cider-load-file)
(nmmap cider-mode-map ",d" 'cider-doc)
(nmmap cider-docview-mode-map "q" 'quit-window)
(nmmap cider-stacktrace-mode-map "q" 'quit-window)

(provide 'noprompt-clojure)
