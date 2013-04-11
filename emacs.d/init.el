;; Editor
(when (display-graphic-p)
  (set-face-attribute 'default nil :font "Cousine" :height 140))

;; Path fix for OS X.
(setenv "PATH" (shell-command-to-string "bash -lc 'echo $PATH'"))

(defmacro comment (&rest body)
  "Comment out one or more s-expressions."
  nil)

;; Packages
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; Turn off the annoying visual bell.
(setq visible-bell nil)

;; Turn off line highlighting.
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)

;; Evil
(require 'evil)
(evil-mode 1)
(setq evil-shift-width 2)
(setq evil-default-cursor t)

(define-key evil-insert-state-map [(tab)] 'hippie-expand)
(define-key evil-normal-state-map "(" 'paredit-backward-slurp-sexp)
(define-key evil-normal-state-map ")" 'paredit-backward-barf-sexp)
(define-key evil-normal-state-map "{" 'paredit-forward-barf-sexp)
(define-key evil-normal-state-map "}" 'paredit-forward-slurp-sexp)

(comment
 (require 'evil-leader)
 (evil-leader/set-leader ",")
 (evil-leader/set-key
   "e" 'find-file
   "b" 'switch-to-buffer
   "k" 'kill-buffer))

;; Key-chord
(require 'key-chord)
(key-chord-define evil-insert-state-map ",e" 'evil-normal-state)
(key-chord-define evil-normal-state-map ",e" 'find-file)
(key-chord-define evil-normal-state-map ",b" 'switch-to-buffer)
(key-chord-define evil-normal-state-map ",k" 'kill-buffer)
(define-key evil-normal-state-map "W(" 'paredit-wrap-round)
(define-key evil-normal-state-map "W[" 'paredit-wrap-square)
(define-key evil-normal-state-map "W{" 'paredit-wrap-curly)
(key-chord-mode 1)

;; Color theme
(load-theme 'sanityinc-tomorrow-night t)

;; Emacs lisp mode
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)

;; Clojure mode
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; nRepl
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
(add-hook 'nrepl-mode-hook 'subword-mode)
(add-hook 'nrepl-mode-hook 'rainbow-delimiters)
(setq nrepl-hide-special-buffers t)

;; Generated garbage
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "fe6330ecf168de137bb5eddbf9faae1ec123787b5489c14fa5fa627de1d9f82b" "936e5cac238333f251a8d76a2ed96c8191b1e755782c99ea1d7b8c215e66d11e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
