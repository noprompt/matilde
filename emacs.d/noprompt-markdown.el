;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MarkDown

;;;; Required packages

(package-require 'markdown-mode)

(require 'markdown-mode)

;;;; Settings

(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

(provide 'noprompt-markdown)
