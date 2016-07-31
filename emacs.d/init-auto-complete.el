;; =====================================================================
;; Autocomplete

;; ---------------------------------------------------------------------
;; company

(package-require 'company)

(define-key company-mode-map [remap indent-for-tab-command]
  'company-indent-for-tab-command)

(setq tab-always-indent 'complete)

(define-key company-mode-map (kbd "<C-tab>") 'company-complete)
(define-key company-mode-map (kbd "C-n") 'company-select-next)
(define-key company-mode-map (kbd "C-p") 'company-select-previous)

(provide 'init-auto-complete)
