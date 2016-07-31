;; =====================================================================
;; Elm

(add-to-list 'load-path (expand-file-name "~/.emacs.d/non-elpa/elm-mode"))
(package-require 'f)
(package-require 'let-alist)
(package-require 's)

(require 'elm-mode)

(provide 'init-elm)
