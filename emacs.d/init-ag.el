;; =====================================================================
;; Ag

;; ---------------------------------------------------------------------
;; Packages

(package-require 'ag)
(package-require 'evil)

;; ---------------------------------------------------------------------
;; Keybindings

(define-key ag-mode-map (kbd "k") 'evil-previous-line)

(provide 'init-ag)
