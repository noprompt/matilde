(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/lite-brite")
(require 'noprompt-util)

;; Packages
(require 'package)
(comment
 (add-to-list 'package-archives
              '("melpa" . "http://melpa.milkbox.net/packages/") t))
(add-to-list 'package-archives
            '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; Editor
(when (display-graphic-p)
  (progn
    (set-face-attribute 'default nil :font "Liberation Mono" :height 140)))

(global-set-key (kbd "s-<return>") 'maximize-frame)
(global-set-key (kbd "s-=") 'increase-font-height)
(global-set-key (kbd "s--") 'decrease-font-height)

;; Path fix for OS X.
(setenv "PATH" (shell-command-to-string "bash -lc 'echo $PATH'"))

;; Turn off the annoying visual bell.
(setq visible-bell nil)

;; Turn off line highlighting.
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
;(remove-hook 'prog-mode-hook 'esk-pretty-lambdas)

;; Color theme
;(load-theme 'sanityinc-tomorrow-night t)
(load-theme 'lite-brite t)

;; Evil
(require 'noprompt-evil)
(require 'noprompt-keyboard)

;; ElScreen
(require 'elscreen)
(nmap (kbd "C-w t") 'elscreen-create)
(nmap (kbd "C-w x") 'elscreen-kill)
(nmap "gh" 'elscreen-previous)
(nmap "gl" 'elscreen-next)

;; Language hooks
(require 'noprompt-clojure)
(require 'noprompt-nrepl)
(require 'noprompt-lisp-interaction)
(require 'noprompt-emacs-lisp)
(require 'noprompt-ruby)

;; Generated garbage
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("170f1af89ec751374ed62db292ffb5f8b44abb30770aa25d3aa5a60087834e0c" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "27c47486d967240afa9186c689fcd1e02bf6787b81bec5008440935bec0a560c" "ae73e2b72e95881b7421139aba91a713f27eae285e52de2f5c1dc2bf5aa8e253" "dc976d38a9989a9366b224dafd6b5e52ed05b9b0eb20f6bddb684bebb179729b" "ded8aaa1488115f046981ba033c93ecdf14e40d82e7444985b653d62ff454937" "ce14b4e2a3cc839a0f711508f40fce9606722dd33202341cc8d7c2ff61524524" "6eb62108ef665d1b88a7f91fe5fc7fd85bb6eb3c27d28dd2d036fd4c80c11edb" "9644bc45491deb01f7d938da8a4bac9f42568f26d129a5d926256f8628c6df7d" "3953b998dc3124c11fa7a0c7b9e741eba5b76e27f0da4599183507d860047eca" "a0b237a76d07cbdcf39ec85d0a172a51905adf01952ed9305555c4f57e194836" "57cf8cfd1bb2fc118063dc86137679f97d01c68fb1691e07779a487fda1d07f6" "d0b072c81bbfda1057bedaf03a2800c3fdb51b9c68eb00d599731d61ac2053f5" "1b79e95b14a8fabeaa03b35f5e919956a2d49d908d8c21a11d23339b3623a0ab" "b9e379b5457016bb1628a691f3044b21110632bc9bd1c17ccac0702404f3e595" "19d18705a0c24ae2a121cf1a3f7411c86ef26ae26f89a55a977ac3336296b0f4" "2b1cef903a134de8d3731c993d49995c258defb50ea0e1afba5118b1d4e13b78" "ce15bca3b29208511cbda2e2d2c998f9487c4dcddc79de72c1f67624ff848f24" "972817d6b38bc8d68aa1d78b1777410294f98c6048a0a6fa495492b8204547b1" "b32724b022296ac2962785ab04ba2b541023f193d191fe40fb5e0d1e0ec83a3f" "cdfe5793d788b930fac4b674a78c313e67afdf92207422921e57e8d846fbbeff" "29dc64f9b8fa2cdab2db5fa073637915eee682e3dc9a4f37f5deb1c0e9cda61e" "750e7e3308248566af088956dd61c3d6d559d7d37cf331d7799e11802c208032" "e78569eb74d4e8e98ecff318927351fa5c786da4d26ef197fe29376726ca783d" "2c6f1ab1930681c592b8f8fbdb0030f8398e5e881f61f6ace5e65d8d9165d718" "43064b13b7590d887d9e5fcded81da6927ace2c0e08d5cebd9b3deb9be55f688" "958b3231d04fa813495f66ebbbf7017386b32235b9c44ffa1672d8c242ae4e97" "9ae9fe07e856103d0847c1dac66d7e43673bcdbe506f6589a663786d8e785d63" "09d39408537b070ea52b835cd878263a461ab76223c762aa49b0e1586dca0ba1" "1d1ff035094106f470b8f2be51fbf5a05c7f5df2caafae7038907b8e0459ca3c" "c625b0d24044597ee719302068a2b4496f8b052b573ed8f1208b087ebd04a9f4" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "30fe7e72186c728bd7c3e1b8d67bc10b846119c45a0f35c972ed427c45bacc19" "bcb5c86c0e6576d1d6bba9bd2a55cd5c20a57d307ed13bf4ed0e86ed944e33df" "787574e2eb71953390ed2fb65c3831849a195fd32dfdd94b8b623c04c7f753f0" "246a51f19b632c27d7071877ea99805d4f8131b0ff7acb8a607d4fd1c101e163" "d921083fbcd13748dd1eb638f66563d564762606f6ea4389ea9328b6f92723b7" "446c73cdfb49f1dab4c322e51ac00a536fb0e3cb7e6809b9f4616e0858012e92" "9f42bccce1e13fa5017eb8718574db099e85358b9f424db78e7318f86d1be08f" "3caf9aab5327a0be6ff93f01a6eceb9b11027f6c261e6dd433a2e9f46e4d9926" "60a2ebd7effefeb960f61bc4772afd8b1ae4ea48fae4d732864ab9647c92093a" "fe0a47cc3952fede574527a1c28ddf3a1af381fc1fb5843ca60d22e4c841011a" "ad63a0dfb8bd5d4c0c7015e851a09283ff050b8df37d2ffe2028be77ff446119" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "fe6330ecf168de137bb5eddbf9faae1ec123787b5489c14fa5fa627de1d9f82b" "936e5cac238333f251a8d76a2ed96c8191b1e755782c99ea1d7b8c215e66d11e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
