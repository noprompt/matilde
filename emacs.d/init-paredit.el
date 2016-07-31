;; =====================================================================
;; Paredit


;; ---------------------------------------------------------------------
;; Required packages

(package-require 'paredit)
(require 'paredit)


;; ---------------------------------------------------------------------
;; Functions

(defun ~/paredit-wrap-quote ()
  "Wrap the following sexp in double quotes."
  (interactive)
  (save-excursion
    (insert "\"")
    (forward-sexp)
    (insert "\"")))

(defun ~/forward-transpose-sexps ()
  (interactive)
  (paredit-forward)
  (transpose-sexps 1)
  (paredit-backward))

(defun ~/backward-transpose-sexps ()
  (interactive)
  (transpose-sexps 1)
  (paredit-backward)
  (paredit-backward))

(defun ~/paredit-insert ()
  (interactive)
  (paredit-kill)
  (evil-insert-state))

(defun ~/define-paredit-keys ()
  (progn
    (nlmap "W("          'paredit-wrap-round)
    (nlmap "W["          'paredit-wrap-square)
    (nlmap "W{"          'paredit-wrap-curly)
    (nlmap "W\""         '~/paredit-wrap-quote)
    (nlmap "("           'paredit-backward-slurp-sexp)
    (nlmap ")"           'paredit-backward-barf-sexp)
    (ilmap (kbd "C-(")   'paredit-backward-slurp-sexp)
    (ilmap (kbd "C-)")   'paredit-backward-barf-sexp)
    (nlmap "{"           'paredit-forward-barf-sexp)
    (nlmap "}"           'paredit-forward-slurp-sexp)
    ;; I don't like the inconsistency here but C-{ and C-} don't seem
    ;; to work.
    (ilmap (kbd "C-[")   'paredit-forward-barf-sexp)
    (ilmap (kbd "C-]")   'paredit-forward-slurp-sexp)
    (nlmap (kbd "C-S-r") 'paredit-raise-sexp)
    (nlmap "S"           'paredit-splice-sexp)
    (nlmap "s"           'paredit-split-sexp)
    (nlmap "T"           '~/backward-transpose-sexps)
    (nlmap "t"           '~/forward-transpose-sexps)
    (nlmap "Y"           'paredit-copy-as-kill)
    (nlmap "C"           '~/paredit-insert)
    (nlmap "D"           'paredit-kill)))

(defun ~/define-paredit-keys-for-evil-mode ()
  (interactive)
  (~/define-paredit-keys))

(provide 'init-paredit)
