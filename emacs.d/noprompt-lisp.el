;;======================================================================
;; Lisp family packages and configuration

;;;; Packages
(add-to-list 'load-path (expand-file-name "~/.emacs.d/non-elpa/highlight-sexp/"))

(package-require 'lispy)
(require 'lispy)
(require 'highlight-sexp)
(require 'color)

;;;; Settings

(defun noprompt/setup-lisp-mode ()
  (paredit-mode)
  (rainbow-delimiters-mode)
  (eldoc-mode)
  (noprompt/define-paredit-keys))

;; Highlight sexp

(comment
 (setq hl-sexp-background-color
       (-> (face-attribute 'highlight :background)
	   (color-lighten-name 2))))

(provide 'noprompt-lisp)


