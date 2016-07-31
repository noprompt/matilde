;; =====================================================================
;; Utilities

;; ---------------------------------------------------------------------
;; Date and time

(defun ~/insert-date ()
  "Insert the current date using the format `%Y-%m-%d'."
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(defun ~/insert-timestamp ()
  "Inser the current date usint the foramt `%Y-%m-%dT%H:%M:%S'."
  (interactive)
  (insert (format-time-string "%Y-%m-%dT%H:%M:%S")))

(provide 'init-utilities)
