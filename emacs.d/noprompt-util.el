;; ---------------------------------------------------------------------
;; Utility functions and macros

(defun package-require (pkg)
  "Install a package only if it's not already installed."
  (when (not (package-installed-p pkg))
    (package-install pkg)))

(defmacro comment (&rest body)
  "Comment out one or more s-expressions."
  nil)

(defmacro if-let (bindings if-true if-false)
  (let ((sym (car bindings))
	(test (cadr bindings)))
    `(let ((,sym ,test))
       (if ,test
	   ,if-true
	 ,if-false))))

(defmacro when-let (bindings & body)
  `(if-let ,bindings (progn ,@body)))

;; Threading macros from Clojure
;; SEE: http://www.emacswiki.org/emacs/ThreadMacroFromClojure

(defmacro -> (&rest body)
  (let ((result (pop body)))
    (dolist (form body result)
      (setq result (append (list (car form) result)
			   (cdr form))))))

(defmacro ->> (&rest body)
      (let ((result (pop body)))
        (dolist (form body result)
          (setq result (append form (list result))))))

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


;; Function to force kill an eshell buffer.
;; SEE: http://lists.gnu.org/archive/html/bug-gnu-emacs/2013-03/msg00668.html
(defun kill-eshell-buffer ()
  "Force kills an eshell buffer."
  (with-current-buffer "*eshell*"
    (let ((inhibit-read-only t))
      (kill-this-buffer))))

(defun char-at-point ()
  (interactive)
  (buffer-substring-no-properties (point) (+ 1 (point))))

(provide 'noprompt-util)
