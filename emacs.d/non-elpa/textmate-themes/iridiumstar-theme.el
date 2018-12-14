;; default {'caret': '#F8F8F0', 'foreground': '#F8F8F2', 'selection': '#49483E', 'invisibles': '#49483E', 'lineHighlight': '#49483E', 'background': '#272822'}
;; comment {'foreground': '#808080'}
;; string {'foreground': '#a9e34f'}
;; constant.numeric {'foreground': '#5a60ff'}
;; constant.language {'foreground': '#5a60ff'}
;; constant.character, constant.other {'foreground': '#5a60ff'}
;; variable {'fontStyle': ''}
;; keyword {'foreground': '#35a0e2'}
;; storage {'foreground': '#35a0e2', 'fontStyle': ''}
;; storage.type {'foreground': '#7bcbda', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#ba36e2', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '#ba36e2', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#ba36e2', 'fontStyle': ''}
;; variable.parameter {'foreground': '#35a0e2', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#dd427a', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#a9e34f', 'fontStyle': ''}
;; support.function {'foreground': '#7ddaec', 'fontStyle': ''}
;; support.constant {'foreground': '#7ddaec', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#7ddaec', 'fontStyle': 'italic'}
;; support.other.variable {'fontStyle': ''}
;; invalid {'foreground': '#f5f5f3', 'fontStyle': '', 'background': '#dd427a'}
;; invalid.deprecated {'foreground': '#f5f5f3', 'background': '#b291ef'}
(deftheme iridiumstar
  "IridiumStar emacs theme autoconverted from the textMate theme by Justin Loudermilk")
(custom-theme-set-faces
  'iridiumstar
    '(trailing-whitespace ((t (:background "#49483e"))))
    '(whitespace-trailing ((t (:background "#49483e"))))

    '(border ((t (:background "#49483e" ))))
    '(css-property ((t (:foreground "#7ddaec" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#7ddaec" :italic t ))))
    '(cursor ((t (:background "#f8f8f0" ))))
    '(default ((t (:foreground "#f8f8f2" :background "#272822" ))))
    '(font-lock-builtin-face ((t (:foreground "#7ddaec" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#808080" ))))
    '(font-lock-comment-face ((t (:foreground "#808080" ))))
    '(font-lock-constant-face ((t (:foreground "#7ddaec" ))))
    '(font-lock-doc-face ((t (:foreground "#a9e34f" ))))
    '(font-lock-function-name-face ((t (:foreground "#7ddaec" ))))
    '(font-lock-keyword-face ((t (:foreground "#35a0e2" ))))
    '(font-lock-negation-char-face ((t (:foreground "#35a0e2" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#a9e34f" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#a9e34f" ))))
    '(font-lock-string-face ((t (:foreground "#a9e34f" ))))
    '(font-lock-type-face ((t (:foreground "#7bcbda" :italic t ))))
    '(font-lock-variable-name-face ((t ())))
    '(font-lock-warning-face ((t (:foreground "#f5f5f3" :background "#dd427a" ))))
    '(fringe ((t (:background "#49483e" ))))
    '(highlight ((t (:background "#49483e" ))))
    '(hl-line ((t (:background "#49483e" ))))
    '(linum ((t (:background "#49483e" ))))
    '(menu ((t (:foreground "#f8f8f2" :background "#272822" ))))
    '(mode-line ((t (:background "#49483e" ))))
    '(mode-line-buffer-id ((t (:foreground "#dd427a" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#49483e" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#808080" ))))
    '(org-column ((t (:background "#49483e" ))))
    '(org-column-title ((t (:background "#49483e" ))))
    '(org-hide ((t (:foreground "#272822" ))))
    '(org-todo ((t (:foreground "#f5f5f3" :background "#dd427a" ))))
    '(org-upcoming-deadline ((t (:foreground "#f5f5f3" :background "#b291ef" ))))
    '(org-warning ((t (:foreground "#f5f5f3" :background "#dd427a" ))))
    '(region ((t (:background "#49483e" ))))
    '(secondary-selection ((t (:background "#49483e" ))))
    '(show-paren-match-face ((t (:background "#49483e" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f5f5f3" :background "#dd427a" ))))
)

(provide-theme 'iridiumstar)
