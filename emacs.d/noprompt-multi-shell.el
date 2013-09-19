;; Like multi-term but for shell. 

(defun noprompt/shell-buffer-name (n)
  (format "*shell<%d>*" n))

(defun noprompt/next-available-shell-buffer-name ()
  (let ((n 1))
    (while (get-buffer (noprompt/shell-buffer-name n))
      (setq n (+ n 1)))
    (noprompt/shell-buffer-name n)))

(defun multi-shell ()
  (interactive)
  (shell (noprompt/next-available-shell-buffer-name)))

(provide 'noprompt-multi-shell)
