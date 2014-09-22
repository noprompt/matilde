;; =====================================================================
;; Autocomplete

;; ---------------------------------------------------------------------
;; Packages

(package-require 'auto-complete)
(package-require 'company)

;; ---------------------------------------------------------------------
;; AC

(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))

(defun noprompt/setup-auto-complete ()
  (require 'auto-complete)
  (require 'auto-complete-config)
  ;(ac-config-default)

  (add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)

  (define-key ac-mode-map (kbd "C-n") 'ac-next)
  (define-key ac-mode-map (kbd "C-p") 'ac-previous)
  (setq ac-auto-show-menu 1.5))

;; ---------------------------------------------------------------------
;; Company

(defun setup-company ()
  (require 'company)
  (setq company-idle-delay 0.25)
  (setq company-auto-complete t)

  (add-hook 'after-init-hook 'global-company-mode)
  (define-key company-mode-map (kbd "C-n") 'company-select-next)
  (define-key company-mode-map (kbd "C-p") 'company-select-previous))

(noprompt/setup-auto-complete)

(provide 'noprompt-auto-complete)
