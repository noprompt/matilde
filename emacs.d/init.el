(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(require 'noprompt-util)
(require 'noprompt-package)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General settings
(when (display-graphic-p)
  (progn
    (set-face-attribute 'default nil :font "Liberation Mono" :height 140)
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
(load-theme 'base16-default t)

(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Evil/Keybindings
(require 'ace-jump-mode)

(require 'key-chord)
(key-chord-mode 1)

(require 'evil)
(evil-mode t)
(setq evil-shift-width 2)
(setq evil-default-cursor t)

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

(require 'thingatpt)
(imap (kbd "TAB")
      (lambda ()
        (interactive)
        (if (thing-at-point 'filename)
            (ac-complete-filename)
          (ac-complete))))

(setq ac-quick-help-delay 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Paredit
(require 'paredit)

(defun define-paredit-keys ()
  (progn
    (nlmap "W(" 'paredit-wrap-round)
    (nlmap "W[" 'paredit-wrap-square)
    (nlmap "W{" 'paredit-wrap-curly)
    (nlmap "(" 'paredit-backward-slurp-sexp)
    (nlmap ")" 'paredit-backward-barf-sexp)
    (nlmap "{" 'paredit-forward-barf-sexp)
    (nlmap "}" 'paredit-forward-slurp-sexp)
    (nlmap "S" 'paredit-splice-sexp)
    (nlmap "T" 'transpose-sexps)
    (nlmap "t" 'clojure-test-run-test)
    (nlmap "D" 'paredit-kill)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Clojure/nREPL
(require 'clojure-mode)

(add-hook 'clojure-mode-hook
  '(lambda ()
     (paredit-mode)
     (define-paredit-keys)

     (define-clojure-indent
       (select 'defun)
       (insert 'defun)
       (create-table 'defun)
       (drop-table 'defun)
       (GET 'defun)
       (POST 'defun))

     (rainbow-delimiters-mode)))

;; nREPL
(require 'nrepl)
(setq nrepl-hide-special-buffers t)
(setq nrepl-popup-stacktraces-in-repl t)
(setq nrepl-history-file "~/.emacs.d/nrepl-history")

;; Auto completion for nREPL
(require 'ac-nrepl)

(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'nrepl-mode))

(add-hook 'nrepl-connected-hook 'nrepl-enable-on-existing-clojure-buffers)
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
(add-hook 'nrepl-mode-hook (lambda ()
                             (ac-nrepl-setup)
                             (rainbow-delimiters-mode)))

(add-hook 'clojure-mode-hook
          (lambda ()
            (define-key nrepl-interaction-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc)
            (define-key evil-normal-state-local-map ",e" 'nrepl-eval-expression-at-point)
            (define-key evil-normal-state-local-map ",l" 'nrepl-load-file)))

;; Javert
(load-file "~/.emacs.d/javert/nrepl-inspect.el")
(define-key nrepl-mode-map (kbd "C-c i") 'nrepl-inspect)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Lisp interaction

(add-hook 'lisp-interaction-mode-hook
          (lambda ()
	    (paredit-mode)
            (define-paredit-keys)
            (rainbow-delimiters-mode)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs lisp

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
	    (paredit-mode)
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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" "f41fd682a3cd1e16796068a2ca96e82cfd274e58b978156da0acce4d56f2b0d5" "1affe85e8ae2667fb571fc8331e1e12840746dae5c46112d5abb0c3a973f5f5a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
