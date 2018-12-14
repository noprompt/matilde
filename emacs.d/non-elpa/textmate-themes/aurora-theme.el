;; default {'caret': '#ffffff', 'foreground': '#ececec', 'selection': '#4b4959', 'invisibles': '#383838', 'lineHighlight': '#3f3d4d', 'background': '#302e40'}
;; comment {'foreground': '#696587'}
;; string {'foreground': '#ffb700'}
;; constant.numeric {'foreground': '#3f89ff'}
;; constant.language {'foreground': '#3f89ff', 'fontStyle': ' italic'}
;; constant.character, constant.other {'foreground': '#3f89ff', 'fontStyle': ''}
;; variable {'fontStyle': ''}
;; keyword {'foreground': '#e12977'}
;; storage {'foreground': '#e12977', 'fontStyle': ''}
;; storage.type {'foreground': '#7877ff', 'fontStyle': ' italic'}
;; entity.name.class {'foreground': '#c5e400'}
;; entity.other.inherited-class {'foreground': '#c5e400', 'fontStyle': ' italic '}
;; entity.name.function {'foreground': '#c5e400'}
;; variable.parameter {'foreground': '#d9903b', 'fontStyle': ' italic '}
;; entity.name.tag {'foreground': '#e12977', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#c5e400', 'fontStyle': ''}
;; support.function {'foreground': '#7877ff', 'fontStyle': ''}
;; support.constant {'foreground': '#7877ff', 'fontStyle': ' italic'}
;; support.type, support.class {'foreground': '#7877ff', 'fontStyle': 'italic'}
;; support.other.variable {'fontStyle': ''}
;; invalid {'foreground': '#e12977', 'fontStyle': '', 'background': '#c5e400'}
;; invalid.deprecated {'foreground': '#ffff05', 'background': '#e12977'}
(deftheme aurora
  "Aurora emacs theme autoconverted from the textMate theme by Palmer Oliveira")
(custom-theme-set-faces
  'aurora
    '(trailing-whitespace ((t (:background "#383838"))))
    '(whitespace-trailing ((t (:background "#383838"))))

    '(border ((t (:background "#3f3d4d" ))))
    '(css-property ((t (:foreground "#7877ff" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#7877ff" :italic t ))))
    '(cursor ((t (:background "#ffffff" ))))
    '(default ((t (:foreground "#ececec" :background "#302e40" ))))
    '(font-lock-builtin-face ((t (:foreground "#7877ff" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#696587" ))))
    '(font-lock-comment-face ((t (:foreground "#696587" ))))
    '(font-lock-constant-face ((t (:foreground "#7877ff" :italic t ))))
    '(font-lock-doc-face ((t (:foreground "#ffb700" ))))
    '(font-lock-function-name-face ((t (:foreground "#7877ff" ))))
    '(font-lock-keyword-face ((t (:foreground "#e12977" ))))
    '(font-lock-negation-char-face ((t (:foreground "#e12977" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#ffb700" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#ffb700" ))))
    '(font-lock-string-face ((t (:foreground "#ffb700" ))))
    '(font-lock-type-face ((t (:foreground "#7877ff" :italic t ))))
    '(font-lock-variable-name-face ((t ())))
    '(font-lock-warning-face ((t (:foreground "#e12977" :background "#c5e400" ))))
    '(fringe ((t (:background "#3f3d4d" ))))
    '(highlight ((t (:background "#4b4959" ))))
    '(hl-line ((t (:background "#3f3d4d" ))))
    '(linum ((t (:background "#3f3d4d" ))))
    '(menu ((t (:foreground "#ececec" :background "#302e40" ))))
    '(mode-line ((t (:background "#4b4959" ))))
    '(mode-line-buffer-id ((t (:foreground "#e12977" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#3f3d4d" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#696587" ))))
    '(org-column ((t (:background "#3f3d4d" ))))
    '(org-column-title ((t (:background "#3f3d4d" ))))
    '(org-hide ((t (:foreground "#302e40" ))))
    '(org-todo ((t (:foreground "#e12977" :background "#c5e400" ))))
    '(org-upcoming-deadline ((t (:foreground "#ffff05" :background "#e12977" ))))
    '(org-warning ((t (:foreground "#e12977" :background "#c5e400" ))))
    '(region ((t (:background "#4b4959" ))))
    '(secondary-selection ((t (:background "#4b4959" ))))
    '(show-paren-match-face ((t (:background "#4b4959" ))))
    '(show-paren-mismatch-face ((t (:foreground "#e12977" :background "#c5e400" ))))
)

(provide-theme 'aurora)
