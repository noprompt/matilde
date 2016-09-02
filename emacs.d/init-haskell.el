;; ---------------------------------------------------------------------
;; Haskell

(package-require 'ghc)
(package-require 'intero)
;(package-require 'haskell-mode)
;(require 'haskell-cabal)
(add-to-list 'load-path "~/git/haskell/haskell-mode/")
(require 'haskell-mode-autoloads)
(add-to-list 'Info-default-directory-list "~/git/haskell/haskell-mode/")

;; Configuration from "Using Emacs for Haskell development"
;; See: https://github.com/serras/emacs-haskell-tutorial/blob/master/tutorial.md

(let ((my-cabal-path (expand-file-name "~/.cabal/bin")))
  (setenv "PATH" (concat my-cabal-path path-separator (getenv "PATH")))
  (add-to-list 'exec-path my-cabal-path))
(custom-set-variables '(haskell-tags-on-save t))

(custom-set-variables
  '(haskell-process-suggest-remove-import-lines t)
  '(haskell-process-auto-import-loaded-modules t)
  '(haskell-process-log t)
  '(haskell-process-type 'stack-ghci))

(define-key haskell-mode-map (kbd "TAB") 'haskell-indent-cycle)

(eval-after-load 'haskell-mode
  '(progn
     (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
     (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
     (define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
     (define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
     (define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
     (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)
     (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)
     (define-key haskell-mode-map (kbd "C-c M-j") 'haskell-interactive-bring)))

(eval-after-load 'haskell-cabal
  '(progn
     (define-key haskell-cabal-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
     (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
     (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
     (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)))

(setq auto-mode-alist (cons '("\.hs$" . haskell-mode) auto-mode-alist))

;(autoload 'ghc-init "ghc" nil t)
;(autoload 'ghc-debug "ghc" nil t)

(add-hook 'haskell-mode-hook
	  (lambda ()
	    (haskell-doc-mode)
	    ;; haskell-mode doesn't like evil ;_;
	    (setq evil-auto-indent nil)
	    (setq tab-width 4)
	    (haskell-indentation-mode)
	    (ghc-init)
	    ;;(flymake-mode)
	    ))

(add-hook 'haskell-mode-hook 'intero-mode)

(provide 'init-haskell)
