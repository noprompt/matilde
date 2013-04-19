;;; jsshell-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (jsshell-switch-to-shell jsshell-load-file-and-pop
;;;;;;  jsshell-load-file jsshell-send-buffer-and-pop jsshell-send-buffer
;;;;;;  jsshell-send-last-sexp jsshell-send-last-sexp-and-pop jsshell-send-region-and-pop
;;;;;;  jsshell-send-region jsshell) "jsshell" "jsshell.el" (20846
;;;;;;  32429 0 0))
;;; Generated autoloads from jsshell.el

(autoload 'jsshell "jsshell" "\
Run an inferior Javascript shell, with I/O through tne named
BUFFER (which defaults to `*JSShell*').

Interactively, a prefix arg means to prompt for BUFFER.

If BUFFER exists but the shell process is not running, it makes a new shell.

If BUFFER exists and the shell process is running, just switch to BUFFER.

See the help for `shell' for more details.  (Type
\\[describe-mode] in the shell buffer for a list of commands.)

The shell is CSCRIPT.exe (see `jsshell-location-of-cscript-exe'),
which runs a Javascript program that implements a
Read-Execute-Print Loop (REPL). This function looks for the
source for the REPL program first as a string stored in
`jsshell-js-src'. This variable will be non-nil when running the
shell from the bundle version of jsshell.  If that variable nil,
this function gets the source for the REPL from
`jsshell-location-of-jsshell-js'.

NB: Literal strings typed into the shell buffer need extra escaping.
This is espcially a problem with regex strings. eg, a  in a JS
regex gets transformed into just a d when run through the
jsshell.  I think this is not a problem when loading files with
`jsshell-load-file'. The problem may not be worth fixing.

\(fn &optional BUFFER)" t nil)

(autoload 'jsshell-send-region "jsshell" "\
Send the current region to the inferior Javascript process.

\(fn START END &optional BUFFER)" t nil)

(autoload 'jsshell-send-region-and-pop "jsshell" "\
Send the contents of the current region to the inferior
Javascript shell.

\(fn START END &optional BUFFER)" t nil)

(autoload 'jsshell-send-last-sexp-and-pop "jsshell" "\
Send the previous sexp to the inferior Js process, and pop to the buffer.

\(fn)" t nil)

(autoload 'jsshell-send-last-sexp "jsshell" "\
Send the previous sexp to the inferior Javascript process.

\(fn)" t nil)

(autoload 'jsshell-send-buffer "jsshell" "\
Send the entire contents of the current buffer to
the inferior Javascript shell.

\(fn)" t nil)

(autoload 'jsshell-send-buffer-and-pop "jsshell" "\
Send the buffer to the inferior Javascript process.

\(fn)" t nil)

(autoload 'jsshell-load-file "jsshell" "\
Enqueue the file named FILENAME to be loaded into the JSSHell
interpreter designated by BUFFER, or *JSShell* if no buffer supplied.

\(fn FILENAME &optional BUFFER)" t nil)

(autoload 'jsshell-load-file-and-pop "jsshell" "\
Load the file named FILENAME into the JSSHell interpreter designated by
BUFFER, or *JSShell* if no buffer supplied. The pop to that buffer.

\(fn FILENAME &optional BUFFER)" t nil)

(autoload 'jsshell-switch-to-shell "jsshell" "\
Switch to the javascript process buffer.
With non-nil MOVE-TO-EOB argument, position cursor at end of buffer.

\(fn &optional BUFFER MOVE-TO-EOB)" t nil)

;;;***

;;;### (autoloads nil nil ("jsshell-pkg.el") (20846 32429 485718
;;;;;;  0))

;;;***

(provide 'jsshell-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; jsshell-autoloads.el ends here
