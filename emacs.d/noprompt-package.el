(require 'package)

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(let ((packages '(magit
                  maxframe
                  fuzzy
                  ;; Themes
                  tronesque-theme
                  jujube-theme
                  soothe-theme
                  ;; Miscelleaneous
                  apache-mode)))
  (dolist (package packages)
    (when (not (package-installed-p package))
      (package-install package))))

(provide 'noprompt-package)
