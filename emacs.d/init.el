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

;; Color theme
(load-theme 'sanityinc-tomorrow-night-eighties t)

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
    (eval (append '(set-face-attribute face nil) options))
    (when (and (display-graphic-p)
               (fboundp 'maximize-frame))
      (maximize-frame))))

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
(imap (kbd "C-n") 'next-line)
(imap (kbd "C-k") 'previous-line)
(imap (kbd "C-p") 'previous-line)
(imap (kbd "TAB") 'smart-tab)

;;;; Keychord bindings

;; Toggle evil-mode
(key-chord-define-global "GH" 'evil-mode) 
(key-chord-define evil-insert-state-map ",e" 'evil-normal-state)
(key-chord-define evil-normal-state-map ",s" 'switch-to-buffer)
(key-chord-define evil-normal-state-map "xk" 'kill-buffer)

;; M-x emulation
(key-chord-define-global "x," 'execute-extended-command)

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

(eval-after-load 'clojure-mode
  '(progn 
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
            (define-key evil-normal-state-local-map ",e" 'nrepl-eval-expression-at-point)
            (define-key evil-normal-state-local-map ",l" 'nrepl-load-file)))

;; Javert
(load-file "~/.emacs.d/javert/nrepl-inspect.el")
(define-key nrepl-mode-map (kbd "C-c i") 'nrepl-inspect)

(require 'nrepl-ritz)
(define-key nrepl-interaction-mode-map (kbd "C-c C-j") 'nrepl-javadoc)
(define-key nrepl-mode-map (kbd "C-c C-j") 'nrepl-javadoc)
(define-key nrepl-interaction-mode-map (kbd "C-c C-a") 'nrepl-apropos)
(define-key nrepl-mode-map (kbd "C-c C-a") 'nrepl-apropos)

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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "95113fe659fed51f34f230cc3bfb29271595fc67a5ed76c5ec33c85e7d8e3685" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "9f42bccce1e13fa5017eb8718574db099e85358b9f424db78e7318f86d1be08f" "5e1d1564b6a2435a2054aa345e81c89539a72c4cad8536cfe02583e0b7d5e2fa" "c5c8c61c9ea795c410d7ddfee26b5ff8156383235af333cc51563164b0d14390" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
