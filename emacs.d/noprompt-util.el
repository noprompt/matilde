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


;;; Tab

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


;;; Lists

(defun util/get-random-element (list)
  "Returns a random element of LIST."
  (if (and list (listp list))
      (nth (random (1- (1+ (length list)))) list)
    (error "Argument to get-random-element not a list or the list is empty")))


;;; File


(defun util/read-string-from-file (file-name)
  (with-temp-buffer
    (insert-file-contents file-name)
    (buffer-string)))


(defun util/write-string-to-file (string file)
  (interactive "sEnter the string: \nFFile to save to: ")
  (with-temp-buffer
    (insert string)
    (when (file-writable-p file)
      (write-region (point-min) (point-max) file))))


(defun util/rotate (lst)
  (append (cdr lst) (list (car lst))))


;;; Misc


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


;;; Windows

(defun noprompt-rotate-windows (arg)
  "Rotate your windows; use the prefix argument to rotate the other
direction."
  (interactive "P")
  (if (not (> (count-windows) 1))
      (message "You can't rotate a single window!")
    (let* ((rotate-times (if (and (numberp arg) (not (= arg 0))) arg 1))
           (direction (if (or (< rotate-times 0) (equal arg '(4)))
                          'reverse
                        (lambda (x) x)))
           (i 0))
      (while (not (= rotate-times 0))
        (while  (< i (- (count-windows) 1))
          (let* ((w1 (elt (funcall direction (window-list)) i))
                 (w2 (elt (funcall direction (window-list)) (+ i 1)))
                 (b1 (window-buffer w1))
                 (b2 (window-buffer w2))
                 (s1 (window-start w1))
                 (s2 (window-start w2))
                 (p1 (window-point w1))
                 (p2 (window-point w2)))
            (set-window-buffer-start-and-point w1 b2 s2 p2)
            (set-window-buffer-start-and-point w2 b1 s1 p1)
            (setq i (1+ i))))

        (setq i 0
              rotate-times
              (if (< rotate-times 0) (1+ rotate-times) (1- rotate-times)))))))

(global-set-key (kbd "s-R") 'noprompt-rotate-windows)


(provide 'noprompt-util)
