;(package-require 'ghc)
(package-require 'haskell-mode)

(require 'haskell-mode)
;(require 'ghc)

(setq haskell-program-name)
(setq auto-mode-alist (cons '("\.hs$" . haskell-mode) auto-mode-alist))

;(autoload 'ghc-init "ghc" nil t)
(add-hook 'haskell-mode-hook
	  (lambda ()
	    (haskell-doc-mode)
	    ;; haskell-mode doesn't like evil ;_;
	    (setq evil-auto-indent nil)
	    (setq tab-width 4)
	    (haskell-indentation-mode)
	    ;(ghc-init)
	    (flymake-mode)))

(setq haskell-program-name "ghci")
(provide 'noprompt-haskell)
