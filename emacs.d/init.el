;; Editor
(set-face-attribute 'default nil :font "Cousine" :height 120)
(setq visible-bell nil)

;; Path fix for OS X.
(setenv "PATH" (shell-command-to-string "bash -lc 'echo $PATH'"))

;; Packages
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; Turn off line highlighting.
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)

;; Evil
(require 'evil)
(evil-mode 1)
(setq evil-shift-width 2)

(require 'evil-leader)
(evil-leader/set-leader ",")

;; Key-chord
(require 'key-chord)
(key-chord-define evil-insert-state-map ",e" 'evil-normal-state)
(key-chord-mode 1)

;; Color theme
(load-theme 'sanityinc-tomorrow-night t)

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
 '(custom-safe-themes (quote ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
