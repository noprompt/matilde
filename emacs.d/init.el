(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(require 'noprompt-util)
(require 'noprompt-package)

;; ---------------------------------------------------------------------
;; General settings

;; Disable the splash screen
(setq inhibit-startup-message t)

;; Turn on column numbers.
(column-number-mode 1)

;; Turn off scroll bars, the tool bar, and the menu bar.
(dolist (mode '(menu-bar-mode scroll-bar-mode tool-bar-mode))
  (when (fboundp mode)
    (funcall mode -1)))

;; Turn off the visual bell.
(setq visible-bell nil)

;; Highlight matching brackets.
(show-paren-mode 1)

;; Smooth scrolling.
(setq scroll-step 1
      scroll-conservatively 10000)

;; Mouse scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; Ask for y/n instead of yes/no.
(defalias 'yes-or-no-p 'y-or-n-p)

;;;; recentf

(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)

;;;; ido

(package-require 'ido-ubiquitous)
(require 'ido)

(ido-mode t)
(setq ido-enable-flex-matching t)
(ido-ubiquitous)
(setq ido-use-virtual-buffers t)

;;;; smex

(package-require 'smex)
(require 'smex)
(smex-initialize)
(smex-initialize-ido)

;;;; uniquify

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'saveplace)
(setq-default save-place t)

;;;; Idle highlight

(package-require 'idle-highlight-mode)
(require 'idle-highlight-mode)
(add-hook 'prog-mode-hook 'idle-highlight-mode)

(comment
 (package-require 'yasnippet)
 (when (require 'yasnippet nil 'noerror)
   (progn
     (yas/load-directory "~/.emacs.d/snippets"))))

;;;; Linum

(add-hook 'prog-mode-hook 'linum-mode)

;;;; FCI

;(package-require 'fill-column-indicator)
;(require 'fill-column-indicator)

(comment
 (setq x-select-enable-clipboard t
       x-select-enable-primary t
       save-interprogram-paste-before-kill t
       apropos-do-all t
       mouse-yank-at-point t
       save-place-file (concat user-emacs-directory "places")
       backup-directory-alist `(("." . ,(concat user-emacs-directory "backups")))))

(package-require 'exec-path-from-shell)
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

(require 'noprompt-auto-complete)
(require 'noprompt-key-bindings)
(require 'noprompt-elisp)
;(require 'noprompt-nrepl)
(require 'noprompt-lisp-interaction)
(require 'noprompt-clojure)
(require 'noprompt-ruby)
(require 'noprompt-javascript)
(require 'noprompt-css)
(require 'noprompt-markdown)
;(require 'noprompt-prolog)
;(require 'noprompt-erlang)
;(require 'noprompt-go)
;(require 'noprompt-factor)
;(require 'noprompt-python)
(require 'noprompt-haskell)
(require 'noprompt-theme)

;; Always start a shell.
(require 'noprompt-multi-shell)
;(multi-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

