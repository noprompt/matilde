;; Utility functions and macros.

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

(provide 'noprompt-util)
