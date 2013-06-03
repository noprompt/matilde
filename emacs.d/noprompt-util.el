;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Utility functions and macros

(defmacro comment (&rest body)
  "Comment out one or more s-expressions."
  nil)

(defun current-font-height ()
  "Get the current global font height."
  (cdr (assoc :height (face-all-attributes 'default))))

(defun increase-font-height ()
  "Increase the current global font height by 10pts."
  (interactive)
  (when (display-graphic-p)
    (set-face-attribute 'default nil :height (+ (current-font-height) 10))))

(defun decrease-font-height ()
  "Decrease the current global font height by 10pts."
  (interactive)
  (when (display-graphic-p)
    (set-face-attribute 'default nil :height (- (current-font-height) 10))))

;; Function to implement a smarter TAB (EmacsWiki)
(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
   the minibuffer. Else, if mark is active, indents region. Else if
   point is at the end of a symbol, expands it. Else indents the
   current line."
  (interactive)
  (if (minibufferp)
      (unless (minibuffer-complete)
        (hippie-expand nil))
    (if mark-active
        (indent-region (region-beginning)
                       (region-end))
      (if (looking-at "\\_>")
         (hippie-expand nil)
        (indent-for-tab-command)))))


(comment
 (defun evil-eval (&optional prefix)
   (interactive "P")
   (progn (goto-char (+ (point) 1))
          (if prefix 
              (progn (insert " ")
                     (nrepl-eval-last-expression prefix))
            (nrepl-eval-last-expression))
          (goto-char (- (point) 1)))))


;; Function to force kill an eshell buffer.
;; SEE: http://lists.gnu.org/archive/html/bug-gnu-emacs/2013-03/msg00668.html
(defun kill-eshell-buffer ()
  "Force kills an eshell buffer."
  (with-current-buffer "*eshell*"
    (let ((inhibit-read-only t))
      (kill-this-buffer))))

;; Toggle between strings and keyword.
;; SEE: http://java.dzone.com/articles/emacs-lisp-toggle-between
(defun char-at-point ()
  (interactive)
  (buffer-substring-no-properties (point) (+ 1 (point))))

(defun clj-string-name (s)
  (substring s 1 -1))

(defun clj-keyword-name (s)
  (substring s 1))

(defun delete-and-extract-sexp ()
  (let* ((begin (point)))
    (forward-sexp)
    (let* ((result (buffer-substring-no-properties begin (point))))
      (delete-region begin (point))
      result)))

(defun toggle-clj-keyword-string ()
  (interactive)
  (save-excursion 
    (if (equal 1 (point))
        (message "Beginning of file reached, this was probably a mistake.")
      (cond
       ((equal "\"" (char-at-point))
        (insert ":" (clj-string-name (delete-and-extract-sexp))))
       ((equal ":" (char-at-point))
        (insert "\"" (clj-keyword-name (delete-and-extract-sexp)) "\""))
       (t (progn
            (backward-char)
            (toggle-clj-keyword-string)))))))

(provide 'noprompt-util)
