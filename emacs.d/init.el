(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(require 'noprompt-util)
(require 'noprompt-package)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

(package-require 'yasnippet)
(when (require 'yasnippet nil 'noerror)
  (progn
    (yas/load-directory "~/.emacs.d/snippets")))

(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      apropos-do-all t
      mouse-yank-at-point t
      save-place-file (concat user-emacs-directory "places")
      backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))

;;;; Theme settings 

(package-require 'twilight-anti-bright-theme)
(package-require 'noctilux-theme)
(package-require 'assemblage-theme)
(package-require 'clues-theme)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(defun noprompt/init-graphics-theme ()
  (load-theme 'assemblage t)

  (setq default-font-family "Menlo"
	default-font-size 140
	mode-line-font-family "Menlo"
	mode-line-font-size 120)

  (set-face-attribute 'default nil
		      :font default-font-family
		      :height default-font-size)
  (set-face-attribute 'font-lock-comment-face nil
		      :slant 'italic)
  (set-face-attribute 'font-lock-doc-face nil
		      :slant 'italic)
  (set-face-attribute 'font-lock-doc-string-face nil
		      :slant 'italic)
  (set-face-attribute 'mode-line nil
		      :font mode-line-font-family
		      :height mode-line-font-size)
  (set-face-attribute 'mode-line-inactive nil
		      :slant 'italic
		      :height mode-line-font-size)
  (set-face-attribute 'modeline-highlight nil
		      :height mode-line-font-size))

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

(require 'noprompt-key-bindings)
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
;(require 'noprompt-erlang)
(require 'noprompt-python)
;(require 'noprompt-factor)
(require 'noprompt-haskell)
(require 'noprompt-auto-complete)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-names-vector ["#110F13" "#B13120" "#719F34" "#CEAE3E" "#7C9FC9" "#7868B5" "#009090" "#F4EAD5"])
 '(ansi-term-color-vector [unspecified "#282a2e" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#81a2be" "#e0e0e0"])
 '(background-color "#202020")
 '(background-mode dark)
 '(cursor-color "#cccccc")
 '(custom-safe-themes (quote ("40b9e2d35561f6d635cecc0b717e9e002ea3980bef8ec89023f02a89bd630af9" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "d9639ebed5f3709f47b53e4bb8eea98a11455ab9336039cf06e9695a0233d5fb" "fc55a921b2c1d24233b678d133b9899e03144877d558cf6807ed51f83459d2d9" "4ec3975686df220948c86d6f32d21d1a14080e94ad6202f0e944176cead6140f" "2ed05ad19fa69927c7e19abd73465dbee92ae6b89b24cbfd33d6c12b64568e5a" "bc89fda3d232a3daa4eb3a9f87d6ffe1272fea46e4cf86686d9e8078e4209e2c" "abfe3e25abb1ddf9364bde7504c79bbe23fc5c2e45cb8d6c6bc56da31b27b4f9" "968d1ad07c38d02d2e5debffc5638332696ac41af7974ade6f95841359ed73e3" "9ffeaafbdeb8d440413888b996730c25ca79f591272f40d5a3a02b0b9b3e6c9a" "e80a0a5e1b304eb92c58d0398464cd30ccbc3622425b6ff01eea80e44ea5130e" "54c941deba32ae22beef746601d670c73982fff2acc7e3d2f12ad10ab71c2b49" "0c311fb22e6197daba9123f43da98f273d2bfaeeaeb653007ad1ee77f0003037" "57072d797dc09fcf563051a85a29d6a51d6f2b1a602e029c35b05c30df319b2a" "cea6d15a8333e0c78e1e15a0524000de69aac2afa7bb6cf9d043a2627327844e" "d6e71a58f9bb07797965c6f889c510cfc31b09403670011829dfe7cedc28f559" "e292ec749f785d348969926448e25790356a7ce1a8fda6e695f5e8b70bed786b" "0d19ff470ad7029d2e1528b3472ca2d58d0182e279b9ab8acd65e2508845d2b6" "c4e6fe8f5728a5d5fd0e92538f68c3b4e8b218bcfb5e07d8afff8731cc5f3df0" "30f861ee9dc270afc2a9962c05e02d600c998905433c8b9211dc2b33caa97c51" "5339210234ec915d7d3fd87bfeb506bfc436ff7277a55516ab1781ec85c57224" "2affb26fb9a1b9325f05f4233d08ccbba7ec6e0c99c64681895219f964aac7af" "446c73cdfb49f1dab4c322e51ac00a536fb0e3cb7e6809b9f4616e0858012e92" "38c4fb6c8b2625f6307f3dde763d5c61d774d854ecee9c5eb9c5433350bc0bef" "0f0adcd1352b15a622afd48fcff8232169aac4b5966841e506f815f81dac44ea" "17a8fa9430ffd81f242ed3ee95e59629ccf9e1210657536013a0def9b16e68c9" "eb399cbd3ea4c93d9ab15b513fd6638e801600e13c8a70b56f38e609397a5eca" "2c73700ef9c2c3aacaf4b65a7751b8627b95a1fd8cebed8aa199f2afb089a85f" "1177fe4645eb8db34ee151ce45518e47cc4595c3e72c55dc07df03ab353ad132" "f680d237c4c3252876fbfe1561265ff97a5d3ce67fdc5f6c092e33d476ec0993" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "394504bd559027641b544952d6e9e1c6dcb306b4d1b2c4ad6b98d3e6b5459683" "fe243221e262fe5144e89bb5025e7848cd9fb857ff5b2d8447d115e58fede8f7" "16e7c7811fd8f1bc45d17af9677ea3bd8e028fce2dd4f6fa5e6535dea07067b1" "9aeb193fa1626559e224e9a754777579a53ac71b4cddd2b8d2b6ef9adbb37754" "4c9ba94db23a0a3dea88ee80f41d9478c151b07cb6640b33bfc38be7c2415cc4" "b47a3e837ae97400c43661368be754599ef3b7c33a39fd55da03a6ad489aafee" "6cfe5b2f818c7b52723f3e121d1157cf9d95ed8923dbc1b47f392da80ef7495d" "787574e2eb71953390ed2fb65c3831849a195fd32dfdd94b8b623c04c7f753f0" "579e9950513524d8739e08eae289419cfcb64ed9b7cc910dd2e66151c77975c4" "617219c11282b84761477059b9339da78ce392c974d9308535ee4ec8c0770bee" "20da72c1ae6c0c78602c99d1ccf20097486efd2e70d7578ea1cf89f8c1aa6b53" "923faef2c7ed017e63f517703c846c6190c31400261e8abdb1be06d5b46ea19a" "e83c94a6bfab82536cef63610ec58d08dfddd27752d860763055daf58d028aad" "88d556f828e4ec17ac074077ef9dcaa36a59dccbaa6f2de553d6528b4df79cbd" "57c3a891ccbe422beab64b87906b9fc32a1b14d120b28577dea3b3bad5901c03" "050beead9159996a613ba4bc734de8b13b882f1c6596d1dffa4f51d096662cf6" "7fa9dc3948765d7cf3d7a289e40039c2c64abf0fad5c616453b263b601532493" "c5a4fdd41ef36299c27827c8604531700482812d0efe1b2f5ba3d54421c4b93c" "72348ab1195650b7357fc109c1695da71e0dff6e2cf59f144851afd330308720" "a217f681ff65b0b9aaa2afa17e694e54f93773039cc656ad1c94d4ac15cd15df" "9dae4e4fb3924c5da7fba50cb7c1d9e37832fd942a17f896fb7feecac3d3a3ac" "405fda54905200f202dd2e6ccbf94c1b7cc1312671894bc8eca7e6ec9e8a41a2" "978ff9496928cc94639cb1084004bf64235c5c7fb0cfbcc38a3871eb95fa88f6" "e53cc4144192bb4e4ed10a3fa3e7442cae4c3d231df8822f6c02f1220a0d259a" "c5c8c61c9ea795c410d7ddfee26b5ff8156383235af333cc51563164b0d14390" "de2c46ed1752b0d0423cde9b6401062b67a6a1300c068d5d7f67725adc6c3afb" "9bac44c2b4dfbb723906b8c491ec06801feb57aa60448d047dbfdbd1a8650897" "41b6698b5f9ab241ad6c30aea8c9f53d539e23ad4e3963abff4b57c0f8bf6730" "ae8d0f1f36460f3705b583970188e4fbb145805b7accce0adb41031d99bd2580" "51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" "f41fd682a3cd1e16796068a2ca96e82cfd274e58b978156da0acce4d56f2b0d5" "1affe85e8ae2667fb571fc8331e1e12840746dae5c46112d5abb0c3a973f5f5a" default)))
 '(electric-indent-mode t)
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#202020")
 '(foreground-color "#cccccc")
 '(fringe-mode 4 nil (fringe))
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(safe-local-variable-values (quote ((ffip-project-file . "project.clj")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )




