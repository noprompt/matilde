(require 'package)

(add-to-list 'package-archives
            '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(setq noprompt-package-list
      '(;; Standard packages
	starter-kit
        evil
        evil-paredit
        key-chord
        magit
        paredit
        rainbow-delimiters
        rainbow-mode
        exec-path-from-shell
        color-theme-sanityinc-tomorrow
        maxframe
        ace-jump-mode

        ;; Clojure
        clojure-mode
        clojure-test-mode
        nrepl
        ac-nrepl
        nrepl-ritz

        ;; Prolog
        prolog

        ;; Ruby
        inf-ruby
        rinari
        ruby-end
        ruby-test-mode
        ruby-tools

        ;; Sass
        sass-mode
        scss-mode
        ))

(dolist (package noprompt-package-list)
  (when (not (package-installed-p package))
    (package-install package)))

(provide 'noprompt-package)
