(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))

(defmacro comment (&rest body)
  "Comment out one or more s-expressions."
  nil)

;; Packages
(require 'package)
(add-to-list 'package-archives
            '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; Editor
(when (display-graphic-p)
  (progn
    (set-face-attribute 'default nil :font "Cousine" :height 140)
    (require 'maxframe)
    (maximize-frame)))

;; Path fix for OS X.
(setenv "PATH" (shell-command-to-string "bash -lc 'echo $PATH'"))

;; Turn off the annoying visual bell.
(setq visible-bell nil)

;; Turn off line highlighting.
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
;(remove-hook 'prog-mode-hook 'esk-pretty-lambdas)

;; Color theme
(load-theme 'sanityinc-tomorrow-night t)

;; Evil
(require 'evil)
(evil-mode 1)
(setq evil-shift-width 2)
(setq evil-default-cursor t)

(defun nmap (key def)
  "Define an Evil normal state sequence."
  (define-key evil-normal-state-map key def))

(defun imap (key def)
  "Define an Evil insert state sequence."
  (define-key evil-insert-state-map key def))

;; Normal
(nmap "\C-j" 'evil-scroll-page-down)
(nmap "\C-k" 'evil-scroll-page-up)
(nmap "W(" 'paredit-wrap-round)
(nmap "W[" 'paredit-wrap-square)
(nmap "W{" 'paredit-wrap-curly)

;; Insert
(imap (kbd "TAB") 'hippie-expand)

;; ElScreen
(require 'elscreen)
(nmap (kbd "C-w t") 'elscreen-create)
(nmap (kbd "C-w x") 'elscreen-kill)
(nmap "gT" 'elscreen-previous)
(nmap "gt" 'elscreen-next)

;; Key-chord
(require 'key-chord)
(key-chord-mode 1)

(key-chord-define-global "ET" 'evil-mode) ; Toggle evil-mode 
(key-chord-define evil-insert-state-map ",e" 'evil-normal-state)
(key-chord-define evil-normal-state-map ",f" 'find-file)
(key-chord-define evil-normal-state-map ",s" 'switch-to-buffer)
(key-chord-define evil-normal-state-map "xk" 'kill-buffer)

;; Language hooks
(require 'noprompt-clojure)
(require 'noprompt-nrepl)
(require 'noprompt-lisp-interaction)
(require 'noprompt-emacs-lisp)

;; Generated garbage
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("9f42bccce1e13fa5017eb8718574db099e85358b9f424db78e7318f86d1be08f" "3caf9aab5327a0be6ff93f01a6eceb9b11027f6c261e6dd433a2e9f46e4d9926" "60a2ebd7effefeb960f61bc4772afd8b1ae4ea48fae4d732864ab9647c92093a" "fe0a47cc3952fede574527a1c28ddf3a1af381fc1fb5843ca60d22e4c841011a" "ad63a0dfb8bd5d4c0c7015e851a09283ff050b8df37d2ffe2028be77ff446119" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "fe6330ecf168de137bb5eddbf9faae1ec123787b5489c14fa5fa627de1d9f82b" "936e5cac238333f251a8d76a2ed96c8191b1e755782c99ea1d7b8c215e66d11e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
