;; =====================================================================
;; Ag

;; ---------------------------------------------------------------------
;; Packages
(package-require 'ag)
(require 'ag)

;; ---------------------------------------------------------------------
;; Keybindings

(define-key ag-mode-map (kbd "k") 'evil-previous-line)
;(bound-and-true-p evil-mode)
(provide 'noprompt-ag)
