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

;;;; Hooks

(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'noprompt/define-paredit-keys)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook
          (lambda ()
            (define-key nrepl-interaction-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc)
            (define-key evil-normal-state-local-map ",e" 'nrepl-eval-expression-at-point)
            (define-key evil-normal-state-local-map ",l" 'nrepl-load-file)))

;;;; Functions

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

;;;; Keybindings

(define-key clojure-mode-map (kbd "C-:") 'toggle-clj-keyword-string)

(provide 'noprompt-clojure)
