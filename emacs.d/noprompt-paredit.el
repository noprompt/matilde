;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Paredit

(package-require 'paredit)
(require 'paredit)

(defun noprompt/paredit-wrap-quote ()
  "Wrap the following sexp in double quotes."
  (interactive)
  (save-excursion
    (insert "\"")
    (forward-sexp)
    (insert "\"")))

(defun noprompt/forward-transpose-sexps ()
  (interactive)
  (paredit-forward)
  (transpose-sexps 1)
  (paredit-backward))

(defun noprompt/backward-transpose-sexps ()
  (interactive)
  (transpose-sexps 1)
  (paredit-backward)
  (paredit-backward))

(defun noprompt/define-paredit-keys ()
  (progn
    (nlmap "W("          'paredit-wrap-round)
    (nlmap "W["          'paredit-wrap-square)
    (nlmap "W{"          'paredit-wrap-curly)
    (nlmap "W\""         'noprompt/paredit-wrap-quote)
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
    (nlmap "S"           'paredit-splice-sexp)
    (nlmap "s"           'paredit-split-sexp)
    (nlmap "T"           'noprompt/backward-transpose-sexps)
    (nlmap "t"           'noprompt/forward-transpose-sexps)
    (nlmap "Y"           'paredit-copy-as-kill)
    (nlmap "D"           'paredit-kill)))

(provide 'noprompt-paredit)
