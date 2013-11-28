(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(require 'noprompt-util)
(require 'noprompt-package)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General settings

;; Disable the splash screen
(setq inhibit-startup-message t)

(menu-bar-mode -1)

;; Turn off scroll bars.
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Turn off the tool bar.
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Turn off the visual bell.
(setq visible-bell nil)

;; Highlight matching brackets.
(show-paren-mode 1)

;; Smooth scrolling.
(setq scroll-step 1
      scroll-conservatively 10000)

(package-require 'ido-ubiquitous)
(require 'ido)

(ido-mode t)
(setq ido-enable-flex-matching t)
(ido-ubiquitous)

(package-require 'smex)
(require 'smex)
(smex-initialize)
(smex-initialize-ido)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'saveplace)
(setq-default save-place t)

;; Turn on idle highlight mode.
(package-require 'idle-highlight-mode)
(require 'idle-highlight-mode)
(add-hook 'prog-mode-hook 'idle-highlight-mode)

(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      apropos-do-all t
      mouse-yank-at-point t
      save-place-file (concat user-emacs-directory "places")
      backup-directory-alist `(("." . ,(concat user-emacs-directory
					       "backups"))))

;; Color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(ac-config-default)
(defun noprompt/init-graphics-theme ()
  (load-theme 'soothe t)
  ;; Override everyone else's opinions.
  (setq default-font-family "Andale Mono"
        default-font-size 140
        mode-line-font-family "Liberation Mono"
        mode-line-font-size 120)

  (set-face-attribute
   'default nil :font default-font-family :height default-font-size)

  (set-face-attribute
   'font-lock-comment-face nil :slant 'italic)

  ;;(set-face-attribute 'font-lock-doc-face nil :slant 'italic)
  ;;(set-face-attribute 'font-lock-doc-string-face nil :slant 'italic)
  (set-face-attribute
   'mode-line nil :font mode-line-font-family :height mode-line-font-size)

  (set-face-attribute
   'mode-line-inactive nil :slant 'italic :height mode-line-font-size)

  (set-face-attribute
   'modeline-highlight nil :height mode-line-font-size))

(defun noprompt/init-shell-theme ()
  (load-theme 'noctilux t))

(if (display-graphic-p)
  (progn
    (global-set-key (kbd "s-<return>") 'maximize-frame)
    (global-set-key (kbd "s-=") 'increase-font-height)
    (global-set-key (kbd "s--") 'decrease-font-height)
    (noprompt/init-graphics-theme))
  (noprompt/init-shell-theme))

(package-require 'exec-path-from-shell)
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; Always start a shell.
(require 'noprompt-multi-shell)
(multi-shell)

;;;; Keychord bindings

(require 'noprompt-key-bindings)
(require 'noprompt-auto-complete)
(require 'noprompt-elisp)
(require 'noprompt-lisp-interaction)
(require 'noprompt-nrepl)
(require 'noprompt-clojure)
(require 'noprompt-ruby)
(require 'noprompt-javascript)
(require 'noprompt-css)
(require 'noprompt-markdown)
(require 'noprompt-prolog)
(require 'noprompt-go)
(require 'noprompt-erlang)
(require 'noprompt-python)
(require 'noprompt-factor)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("787574e2eb71953390ed2fb65c3831849a195fd32dfdd94b8b623c04c7f753f0" "579e9950513524d8739e08eae289419cfcb64ed9b7cc910dd2e66151c77975c4" "617219c11282b84761477059b9339da78ce392c974d9308535ee4ec8c0770bee" "20da72c1ae6c0c78602c99d1ccf20097486efd2e70d7578ea1cf89f8c1aa6b53" "923faef2c7ed017e63f517703c846c6190c31400261e8abdb1be06d5b46ea19a" "e83c94a6bfab82536cef63610ec58d08dfddd27752d860763055daf58d028aad" "88d556f828e4ec17ac074077ef9dcaa36a59dccbaa6f2de553d6528b4df79cbd" "57c3a891ccbe422beab64b87906b9fc32a1b14d120b28577dea3b3bad5901c03" "050beead9159996a613ba4bc734de8b13b882f1c6596d1dffa4f51d096662cf6" "7fa9dc3948765d7cf3d7a289e40039c2c64abf0fad5c616453b263b601532493" "c5a4fdd41ef36299c27827c8604531700482812d0efe1b2f5ba3d54421c4b93c" "72348ab1195650b7357fc109c1695da71e0dff6e2cf59f144851afd330308720" "a217f681ff65b0b9aaa2afa17e694e54f93773039cc656ad1c94d4ac15cd15df" "9dae4e4fb3924c5da7fba50cb7c1d9e37832fd942a17f896fb7feecac3d3a3ac" "405fda54905200f202dd2e6ccbf94c1b7cc1312671894bc8eca7e6ec9e8a41a2" "978ff9496928cc94639cb1084004bf64235c5c7fb0cfbcc38a3871eb95fa88f6" "e53cc4144192bb4e4ed10a3fa3e7442cae4c3d231df8822f6c02f1220a0d259a" "c5c8c61c9ea795c410d7ddfee26b5ff8156383235af333cc51563164b0d14390" "de2c46ed1752b0d0423cde9b6401062b67a6a1300c068d5d7f67725adc6c3afb" "9bac44c2b4dfbb723906b8c491ec06801feb57aa60448d047dbfdbd1a8650897" "41b6698b5f9ab241ad6c30aea8c9f53d539e23ad4e3963abff4b57c0f8bf6730" "ae8d0f1f36460f3705b583970188e4fbb145805b7accce0adb41031d99bd2580" "51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" "f41fd682a3cd1e16796068a2ca96e82cfd274e58b978156da0acce4d56f2b0d5" "1affe85e8ae2667fb571fc8331e1e12840746dae5c46112d5abb0c3a973f5f5a" default)))
 '(electric-indent-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )




