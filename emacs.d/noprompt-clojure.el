;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Clojure

;;;; Required packages

(package-require 'paredit)
(package-require 'rainbow-delimiters)
(package-require 'clojure-mode)
(package-require 'clojure-test-mode)
(package-require 'clojurescript-mode)
(package-require 'cider)

(require 'clojure-mode)
(require 'clojurescript-mode)
(require 'noprompt-paredit)

;;;; Settings

(add-to-list 'auto-mode-alist '("\\.cljx$" . clojure-mode))

(define-clojure-indent
  ;; clojure.core
  (apply 1)
  ;; clojure.test
  (are 'defun)
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
  (start* 'defun))

(put 'defcomponent 'clojure-backtracking-indent '(4 (2)))
(put-clojure-indent 'defcomponent 1)

(setq nrepl-hide-special-buffers t)
;; Stop the error buffer from popping up while working in buffers
;; other than the REPL
(setq cider-popup-stacktraces nil)
(setq cider-repl-popup-stacktraces t)
;; Do not auto-select the error buffer when it's displayed.
(setq cider-auto-select-error-buffer nil)

;;;; Functions

;; Commandeered from https://github.com/halgari/clojure-conj-2013-core.async-examples#usage
(defun cider-eval-expression-at-point-in-repl ()
  (interactive)
  (let ((form (nrepl-expression-at-point)))
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

;;;; Hooks

(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'noprompt/define-paredit-keys)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook
          (lambda ()
            (define-key nrepl-interaction-mode-map (kbd "C-c C-d")
	      'ac-nrepl-popup-doc)
            (nlmap ",e" 'nrepl-eval-expression-at-point)
            (nlmap ",l" 'nrepl-load-file)))

;; Cider

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

;;;; Keybindings

(define-key clojure-mode-map (kbd "C-:") 'toggle-clj-keyword-string)
(define-key clojure-mode-map (kbd "C-;") 'cider-eval-expression-at-point-in-repl)

(provide 'noprompt-clojure)
