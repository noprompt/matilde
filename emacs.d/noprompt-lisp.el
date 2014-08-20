;; =====================================================================
;; Lisp family packages and configuration

;; ---------------------------------------------------------------------
;; Packages

(add-to-list 'load-path (expand-file-name "~/.emacs.d/non-elpa/highlight-sexp/"))
(package-require 'lispy)
(package-require 'shen-mode)
(package-require 'racket-mode)
(package-require 'geiser)
(require 'geiser)
(require 'lispy)
(require 'highlight-sexp)
(require 'color)
(require 'shen-mode)
(require 'inf-shen)
(require 'racket-mode)

;; ---------------------------------------------------------------------
;; Settings

(defun noprompt/setup-lisp-mode ()
  (paredit-mode)
  (rainbow-delimiters-mode)
  (eldoc-mode)
  (noprompt/define-paredit-keys))

(defun insert-lisp-comment-header (&optional title)
  (interactive)
  (insert ";; ---------------------------------------------------------------------\n")
  (insert ";;")
  (when (stringp title)
    (insert " ")
    (insert title)))

(defun setup-geiser-mode ()
  (nlmap ",e" 'geiser-eval-definition)
  (nlmap ",E" 'geiser-eval-definition-and-go)
  (nlmap ",l" 'geiser-load-current-buffer)
  (nlmap ",L" 'geiser-load-file))

(add-hook 'geiser-mode-hook 'setup-geiser-mode)

;; ---------------------------------------------------------------------
;; Racket 

(defun setup-racket-mode ()
  (noprompt/setup-lisp-mode)
  (geiser-mode))

(add-hook 'racket-mode-hook 'setup-racket-mode)

;; ---------------------------------------------------------------------
;; Guile 

(defun setup-guile-mode ()
  (noprompt/setup-lisp-mode)
  (geiser-mode)
  (geiser-mode))

(add-hook 'guile-mode-hook 'setup-guile-mode)

;; ---------------------------------------------------------------------
;; Shen 

(defun setup-shen-mode ()
  (noprompt/setup-lisp-mode)
  (nlmap ",e" 'shen-eval-defun)
  (nlmap ",l" 'shen-load-fille))

(add-hook 'shen-mode-hook 'setup-shen-mode)

;; ---------------------------------------------------------------------
;; Highlight sexp

(comment
 (setq hl-sexp-background-color
       (-> (face-attribute 'highlight :background)
	   (color-lighten-name 2))))

(provide 'noprompt-lisp)


