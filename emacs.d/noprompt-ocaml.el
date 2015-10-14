(package-require 'tuareg)
(require 'tuareg)

(define-key tuareg-mode-map (kbd "C-;") 'tuareg-eval-phrase)
(define-key tuareg-mode-map (kbd "C-n") 'tuareg-next-phrase)
(define-key tuareg-mode-map (kbd "C-p") 'tuareg-previous-phrase)

(provide 'noprompt-ocaml)
