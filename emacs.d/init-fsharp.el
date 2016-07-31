;; =====================================================================
;; F#

(add-to-list 'load-path "~/.emacs.d/fsharp-mode/")
(autoload 'fsharp-mode "fsharp-mode" "Major mode for editing F# code." t)
(add-to-list 'auto-mode-alist '("\\.fs[iylx]?$" . fsharp-mode))

(provide 'init-fsharp)
