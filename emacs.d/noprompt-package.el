(require 'package)

(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
		  ("melpa" . "http://melpa.milkbox.net/packages/")))
  (add-to-list 'package-archives source t))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(let ((packages '(magit
                  maxframe
                  fuzzy
                  ;; Themes
                  tronesque-theme
                  jujube-theme
                  soothe-theme
                  ;; Miscelleaneous
                  apache-mode
		  dash-at-point)))
  (dolist (package packages)
    (unless (package-installed-p package)
      (package-install package))))

(provide 'noprompt-package)
