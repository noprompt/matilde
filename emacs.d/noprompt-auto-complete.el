;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autocomplete

(package-require 'auto-complete)
(package-require 'company)
(package-require 'company-cider)

(require 'color)

;;;; Settings

;; Auto Complete

(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))

(require 'auto-complete)
(require 'auto-complete-config)

(add-hook 'auto-complete-mode-hook
	  'set-auto-complete-as-completion-at-point-function)

(define-key ac-mode-map (kbd "C-n") 'ac-next)
(define-key ac-mode-map (kbd "C-p") 'ac-previous)
(setq ac-auto-show-menu 0.5)

;; Company

(comment
  (require 'company)

  (setq company-idle-delay 0.25)
  (setq company-auto-complete t)

  ;; Company's default styling makes my eyes bleed.
  (let ((bg (face-attribute 'default :background)))
    (custom-set-faces
     `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 2)))))
     `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 10)))))
     `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 5)))))
     `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
     `(company-tooltip-common ((t (:inherit font-lock-constant-face))))))

  (add-hook 'after-init-hook 'global-company-mode)

  (eval-after-load 'company
    '(add-to-list 'company-backends 'company-cider))

  (define-key company-mode-map (kbd "C-n") 'company-select-next)
  (define-key company-mode-map (kbd "C-p") 'company-select-previous))

(provide 'noprompt-auto-complete)
