;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autocomplete

(package-require 'auto-complete)
(package-require 'company)
(package-require 'company-cider)

(require 'company)
(require 'color)

;;;; Settings

;; Company
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

;;;; Functions

;;;; Hooks

(add-hook 'after-init-hook 'global-company-mode)

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-cider))

;;;; Keybindings

(define-key company-mode-map (kbd "C-n") 'company-select-next)
(define-key company-mode-map (kbd "C-p") 'company-select-previous)

(provide 'noprompt-auto-complete)
