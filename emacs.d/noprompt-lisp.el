;;======================================================================
;; Lisp family packages and configuration

;;;; Packages
(add-to-list 'load-path (expand-file-name "~/.emacs.d/non-elpa/highlight-sexp/"))

(package-require 'lispy)
(require 'lispy)

(require 'color)

;;;; Settings

;; Highlight sexp

(setq hl-sexp-background-color
      (-> (face-attribute 'highlight :background)
	  (color-lighten-name 2)))

(provide 'noprompt-lisp)


