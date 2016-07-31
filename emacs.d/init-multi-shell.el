;; ---------------------------------------------------------------------
;; Multi-shell

;; Like multi-term but for shell. 

(defun ~/shell-buffer-name (n)
  (format "*shell<%d>*" n))

(defun ~/next-available-shell-buffer-name ()
  (let ((n 1))
    (while (get-buffer (~/shell-buffer-name n))
      (setq n (+ n 1)))
    (~/shell-buffer-name n)))

(defun ~/multi-shell ()
  (interactive)
  (shell (~/next-available-shell-buffer-name)))

(provide 'init-multi-shell)
