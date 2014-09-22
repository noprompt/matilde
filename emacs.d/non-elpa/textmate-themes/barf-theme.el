;; default {'caret': '#C4C4C4', 'foreground': '#EEF2F7', 'selection': '#90B2D557', 'invisibles': '#BFBFBF', 'lineHighlight': '#57575712', 'background': '#15191EFA'}
;; comment {'foreground': '#6E6E6E', 'fontStyle': 'italic'}
;; string {'foreground': '#5C81B3', 'fontStyle': ''}
;; constant.numeric {'foreground': '#C1E1B8'}
;; constant.language {'foreground': '#53667D', 'fontStyle': ''}
;; constant.character, constant.other {'foreground': '#53667D', 'fontStyle': ''}
;; variable.language, variable.other {'foreground': '#708E67'}
;; keyword {'foreground': '#697A8E', 'fontStyle': 'bold'}
;; storage {'foreground': '#A3D295', 'fontStyle': 'bold'}
;; entity.name.class {'fontStyle': ''}
;; entity.other.inherited-class {'fontStyle': ''}
;; entity.name.tag {'foreground': '#A3D295', 'fontStyle': ''}
;; entity.name.function {'fontStyle': '', 'background': '#282E36'}
;; entity.other.attribute-name {'foreground': '#708E67', 'fontStyle': ''}
;; support.function {'foreground': '#BACCE1', 'fontStyle': 'bold'}
;; support.constant {'fontStyle': ''}
;; support.type, support.class {'fontStyle': ''}
;; support.other.variable {'fontStyle': ''}
;; invalid {'foreground': '#FF0000', 'fontStyle': '', 'background': '#FFFFFF99'}
(deftheme barf
  "barf emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'barf
    '(trailing-whitespace ((t (:background "#bfbfbf"))))
    '(whitespace-trailing ((t (:background "#bfbfbf"))))

    '(border ((t (:background "#1a1d21" ))))
    '(css-property ((t ())))
    '(css-proprietary-property ((t ())))
    '(cursor ((t (:background "#c4c4c4" ))))
    '(default ((t (:foreground "#eef2f7" :background "#15191d" ))))
    '(font-lock-builtin-face ((t (:foreground "#bacce1" :bold t ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#6e6e6e" :italic t ))))
    '(font-lock-comment-face ((t (:foreground "#6e6e6e" :italic t ))))
    '(font-lock-constant-face ((t ())))
    '(font-lock-doc-face ((t (:foreground "#5c81b3" ))))
    '(font-lock-function-name-face ((t (:foreground "#bacce1" :bold t ))))
    '(font-lock-keyword-face ((t (:foreground "#697a8e" :bold t ))))
    '(font-lock-negation-char-face ((t (:foreground "#697a8e" :bold t ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#5c81b3" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#5c81b3" ))))
    '(font-lock-string-face ((t (:foreground "#5c81b3" ))))
    '(font-lock-type-face ((t (:foreground "#a3d295" :bold t ))))
    '(font-lock-variable-name-face ((t (:foreground "#708e67" ))))
    '(font-lock-warning-face ((t (:foreground "#ff0000" :background "#a1a3a5" ))))
    '(fringe ((t (:background "#1a1d21" ))))
    '(highlight ((t (:background "#3f4d5c" ))))
    '(hl-line ((t (:background "#1a1d21" ))))
    '(linum ((t (:background "#1a1d21" ))))
    '(menu ((t (:foreground "#eef2f7" :background "#15191d" ))))
    '(mode-line ((t (:background "#3f4d5c" ))))
    '(mode-line-buffer-id ((t (:foreground "#a3d295" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#1a1d21" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#6e6e6e" :italic t ))))
    '(org-column ((t (:background "#1a1d21" ))))
    '(org-column-title ((t (:background "#1a1d21" ))))
    '(org-hide ((t (:foreground "#15191d" ))))
    '(org-todo ((t (:foreground "#ff0000" :background "#a1a3a5" ))))
    '(org-upcoming-deadline ((t (:foreground "#ff0000" :background "#a1a3a5" ))))
    '(org-warning ((t (:foreground "#ff0000" :background "#a1a3a5" ))))
    '(region ((t (:background "#3f4d5c" ))))
    '(secondary-selection ((t (:background "#3f4d5c" ))))
    '(show-paren-match-face ((t (:background "#3f4d5c" ))))
    '(show-paren-mismatch-face ((t (:foreground "#ff0000" :background "#a1a3a5" ))))
)

(provide-theme 'barf)
