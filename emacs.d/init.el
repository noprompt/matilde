(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(require 'noprompt-util)
(require 'noprompt-package)
(require 'noprompt-multi-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General settings

(when (display-graphic-p)
  (progn
    (global-set-key (kbd "s-<return>") 'maximize-frame)
    (global-set-key (kbd "s-=") 'increase-font-height)
    (global-set-key (kbd "s--") 'decrease-font-height)))

;; Turn off the annoying visual bell.
(setq visible-bell nil)

;; Turn off line highlighting.
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
;; Turn off idle highlight mode. It's annnoying.
(remove-hook 'prog-mode-hook 'esk-turn-on-idle-highlight-mode)

;; Color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'soothe t)
;; Override everyone else's opinions.
(setq default-font "Liberation Mono")
(setq default-font-height 140)
(setq mode-line-font-family "Menlo")
(setq mode-line-font-size 120)
(set-face-attribute 'default nil :font default-font :height default-font-size)
(set-face-attribute 'font-lock-comment-face nil :slant 'italic)
(set-face-attribute 'font-lock-doc-face nil :slant 'italic)
(set-face-attribute 'font-lock-doc-string-face nil :slant 'italic)
(set-face-attribute 'mode-line nil :font mode-line-font-family :height mode-line-font-size)
(set-face-attribute 'mode-line-inactive nil :slant 'italic :height mode-line-font-size)
(set-face-attribute 'modeline-highlight nil :height mode-line-font-size)

(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; Smooth scrolling.
(setq scroll-step 1
      scroll-conservatively 10000)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Evil/Keybindings
(require 'ace-jump-mode)

(require 'key-chord)
(key-chord-mode 1)

(require 'evil)
(evil-mode t)

(setq evil-shift-width 2
      evil-default-cursor t)

;;;; Vim style functions

(defun gui (face &rest options)
  "Shorthand for set-face-attribute for FACE."
  (progn
    (eval (append '(set-face-attribute face nil) options))))

(defun guibg (face color)
  "Set face background for FACE to COLOR."
  (set-face-background face color))

(defun guifg (face color)
  "Set face foreground for FACE to COLOR."
  (set-face-foreground face color))

(defun nmap (key def)
  "Define an Evil normal state sequence."
  (define-key evil-normal-state-map key def))

(defun nlmap (key def)
  "Define a local Evil normal state sequence."
  (define-key evil-normal-state-local-map key def))

(defun imap (key def)
  "Define an Evil insert state sequence."
  (define-key evil-insert-state-map key def))

(defun ilmap (key def)
  "Define a local Evil insert state sequence."
  (define-key evil-insert-state-local-map key def))

;;;; Normal state bindings

(nmap (kbd "C-j") 'evil-scroll-page-down)
(nmap (kbd "C-k") 'evil-scroll-page-up)
(nmap (kbd "C-f") 'find-file)

(nmap "zo" 'evil-toggle-fold)
(nmap "zc" 'evil-toggle-fold)

(nmap (kbd "SPC") 'ace-jump-mode)
(nmap (kbd "S-SPC") 'ace-jump-mode-pop-mark)

;;;; Insert state bindings

(imap (kbd "C-j") 'next-line)
(imap (kbd "C-k") 'previous-line)
;(imap (kbd "TAB") 'smart-tab)
(imap (kbd "C-n") nil)
(imap (kbd "C-p") nil)

;;;; Escape

(define-key minibuffer-local-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-ns-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-completion-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-must-match-map [escape] 'keyboard-escape-quit)
(define-key minibuffer-local-isearch-map [escape] 'keyboard-escape-quit)

;;;; Keychord bindings

;; Toggle evil-mode
(key-chord-define-global "GH" 'evil-mode)
(key-chord-define evil-insert-state-map ",e" 'evil-normal-state)
(key-chord-define evil-normal-state-map ",s" 'switch-to-buffer)
(key-chord-define evil-normal-state-map "xk" 'kill-buffer)

;; M-x emulation
(key-chord-define-global "x," 'execute-extended-command)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autocomplete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.4/dict")

(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))

(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)

(define-key ac-mode-map (kbd "C-n") 'ac-next)
(define-key ac-mode-map (kbd "C-p") 'ac-previous)

(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))

(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'nrepl-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'nrepl-interaction-mode-hook 'set-auto-complete-as-completion-at-point-function)

(setq ac-quick-help-delay 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Paredit
(require 'paredit)

(defun paredit-wrap-quote ()
  "Wrap the following sexp in double quotes."
  (interactive)
  (save-excursion
    (insert "\"")
    (forward-sexp)
    (insert "\"")))

(defun define-paredit-keys ()
  (progn
    (nlmap "W(" 'paredit-wrap-round)
    (nlmap "W[" 'paredit-wrap-square)
    (nlmap "W{" 'paredit-wrap-curly)
    (nlmap "W\"" 'paredit-wrap-quote)
    (nlmap "(" 'paredit-backward-slurp-sexp)
    (nlmap ")" 'paredit-backward-barf-sexp)
    (nlmap "{" 'paredit-forward-barf-sexp)
    (nlmap "}" 'paredit-forward-slurp-sexp)
    (nlmap "S" 'paredit-splice-sexp)
    (nlmap "s" 'paredit-split-sexp)
    (nlmap "T" 'transpose-sexps)
    (nlmap "t" 'clojure-test-run-test)
    (nlmap "D" 'paredit-kill)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Clojure/nREPL
(require 'clojure-mode)
(add-to-list 'auto-mode-alist '("\\.cljx$" . clojure-mode))

(add-hook 'clojure-mode-hook
  '(lambda ()
     (paredit-mode)
     (define-paredit-keys)

     (define-clojure-indent
       ;; clojure.core
       (apply 1)
       ;; clojure.test
       (are 'defun)
       ;; Garden
       (css 'defun)
       (at-media 1)
       (at-keyframes 1)
       ;; Korma
       (select 'defun)
       (insert 'defun)
       ;; Compojure
       (GET 'defun)
       (POST 'defun)
       (context 2)
       ;; Persephone
       (start 'defun)
       (start* 'defun))

     (rainbow-delimiters-mode)))

(define-key clojure-mode-map (kbd "C-:") 'toggle-clj-keyword-string)

;; nREPL
(require 'nrepl)
(setq nrepl-hide-special-buffers t)
(setq nrepl-popup-stacktraces nil)
(setq nrepl-popup-stacktraces-in-repl t)
(setq nrepl-history-file "~/.emacs.d/nrepl-history")

;; Auto completion for nREPL
(require 'ac-nrepl)

(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'nrepl-mode))

(add-hook 'nrepl-connected-hook 'nrepl-enable-on-existing-clojure-buffers)
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'nrepl-mode-hook 'rainbow-delimiters-mode)

(add-hook 'clojure-mode-hook
          (lambda ()
            (define-key nrepl-interaction-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc)
            (define-key evil-normal-state-local-map ",e" 'nrepl-eval-expression-at-point)
            (define-key evil-normal-state-local-map ",l" 'nrepl-load-file)))

;; Javert
(load-file "~/.emacs.d/javert/nrepl-inspect.el")
(define-key nrepl-mode-map (kbd "C-c i") 'nrepl-inspect)

;; Scratch buffers

(defun clj-scratch ()
  "Create/retrieve a Clojure scratch buffer and switch to it.."
  (interactive)
  (let ((buf (get-buffer-create "*clj-scratch*")))
    (switch-to-buffer buf)
    (clojure-mode)))

(defun cljs-scratch ()
  "Create/retrieve a ClojureScript scratch buffer and switch to it.."
  (interactive)
  (let ((buf (get-buffer-create "*cljs-scratch*")))
    (switch-to-buffer buf)
    (clojurescript-mode)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Lisp interaction

(add-hook 'lisp-interaction-mode-hook
          (lambda ()
	    (paredit-mode)
            (eldoc-mode)
            (define-paredit-keys)
            (rainbow-delimiters-mode)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs lisp

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
	    (paredit-mode)
            (eldoc-mode)
            (define-paredit-keys)
            (nlmap ",e" 'eval-defun)
            (rainbow-delimiters-mode)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ruby
(require 'ruby-mode)
(require 'ruby-end)
(setq ruby-end-insert-newline nil)

(defun ruby-mode-hook-for-fixing-ruby-electric ()
  (require 'ruby-electric)
  (ruby-electric-mode)
  (ruby-electric-mode -1))

(remove-hook 'ruby-mode-hook 'ruby-electric-mode)
(add-hook 'ruby-mode-hook 'ruby-mode-hook-for-fixing-ruby-electric)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Prolog
(add-to-list 'auto-mode-alist '("\\.pl$" . prolog-mode))

(setq prolog-system 'swi)

(setq prolog-program-name
      '(((getenv "EPROLOG")
         (eval
          (getenv "EPROLOG")))
        (eclipse "eclipse")
        (mercury nil)
        (sicstus "sicstus")
        (swi "/usr/local/bin/swipl")
        (gnu "gprolog")
        (t "gprolog")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; JavaScript
;;(add-hook 'js-mode-hook 'electric-indent-mode)
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq-default js2-basic-offset 2)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MarkDown
(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Powerline
;(add-to-list 'load-path (expand-file-name "~/.emacs.d/non-elpa/powerline"))
;(require 'powerline)
;(powerline-default-theme)
;(powerline-center-evil-theme)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Multi-Term
(require 'multi-term)
(setq multi-term-program "/bin/bash")

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




