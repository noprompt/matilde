(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/coq/")

(load-file 
 (concat user-emacs-directory "non-elpa/ProofGeneral/generic/proof-site.el"))

(setq auto-mode-alist (cons '("\\.v$" . coq-mode) auto-mode-alist))
(autoload 'coq-mode "coq" "Major mode for editing Coq vernacular." t)
