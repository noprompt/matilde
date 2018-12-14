;; default {'caret': '#000000', 'foreground': '#000000', 'selection': '#BDD5FC', 'invisibles': '#BFBFBF', 'lineHighlight': '#FFFBD1', 'background': '#FFFFFF'}
;; comment {'foreground': '#BCC8BA', 'fontStyle': ''}
;; string {'foreground': '#5D90CD', 'fontStyle': ''}
;; constant.numeric {'foreground': '#46A609'}
;; constant.language {'foreground': '#39946A', 'fontStyle': ''}
;; constant.character, constant.other {}
;; variable.language, variable.other {'fontStyle': ''}
;; keyword, support.constant.property-value, constant.other.color {'foreground': '#AF956F', 'fontStyle': ''}
;; keyword.other.unit {'foreground': '#96DC5F'}
;; keyword.operator {'foreground': '#484848'}
;; storage {'foreground': '#C52727', 'fontStyle': ''}
;; entity.name.class {'fontStyle': ''}
;; entity.other.inherited-class {'foreground': '#858585', 'fontStyle': ''}
;; entity.name.function {'fontStyle': ''}
;; variable.parameter {}
;; entity.name.tag {'foreground': '#606060', 'fontStyle': ''}
;; constant.character.entity {'foreground': '#BF78CC'}
;; support.class.js {'foreground': '#BF78CC'}
;; entity.other.attribute-name {'foreground': '#606060', 'fontStyle': ''}
;; meta.selector.css, entity.name.tag.css, entity.other.attribute-name.id.css, entity.other.attribute-name.class.css {'foreground': '#C52727', 'fontStyle': ''}
;; meta.property-name.css {'foreground': '#484848'}
;; support.function {'foreground': '#C52727'}
;; support.constant {}
;; support.type, support.class {}
;; support.other.variable {'fontStyle': ''}
;; invalid {'background': '#FF002A'}
;; punctuation.section.embedded {'foreground': '#C52727', 'fontStyle': ''}
;; punctuation.definition.tag {'foreground': '#606060', 'fontStyle': ''}
;; constant.other.color.rgb-value.css, support.constant.property-value.css {'foreground': '#BF78CC'}
(deftheme clouds
  "Clouds emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'clouds
    '(trailing-whitespace ((t (:background "#bfbfbf"))))
    '(whitespace-trailing ((t (:background "#bfbfbf"))))

    '(border ((t (:background "#fffbd1" ))))
    '(css-property ((t ())))
    '(css-proprietary-property ((t ())))
    '(css-selector ((t (:foreground "#c52727" ))))
    '(cursor ((t (:background "#000000" ))))
    '(default ((t (:foreground "#000000" :background "#ffffff" ))))
    '(font-lock-builtin-face ((t (:foreground "#c52727" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#bcc8ba" ))))
    '(font-lock-comment-face ((t (:foreground "#bcc8ba" ))))
    '(font-lock-constant-face ((t ())))
    '(font-lock-doc-face ((t (:foreground "#5d90cd" ))))
    '(font-lock-function-name-face ((t (:foreground "#c52727" ))))
    '(font-lock-keyword-face ((t (:foreground "#af956f" ))))
    '(font-lock-negation-char-face ((t (:foreground "#484848" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#5d90cd" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#5d90cd" ))))
    '(font-lock-string-face ((t (:foreground "#5d90cd" ))))
    '(font-lock-type-face ((t (:foreground "#c52727" ))))
    '(font-lock-variable-name-face ((t ())))
    '(font-lock-warning-face ((t (:background "#ff002a" ))))
    '(fringe ((t (:background "#fffbd1" ))))
    '(highlight ((t (:background "#bdd5fc" ))))
    '(hl-line ((t (:background "#fffbd1" ))))
    '(linum ((t (:background "#fffbd1" ))))
    '(menu ((t (:foreground "#000000" :background "#ffffff" ))))
    '(mode-line ((t (:background "#bdd5fc" ))))
    '(mode-line-buffer-id ((t (:foreground "#606060" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#fffbd1" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#bcc8ba" ))))
    '(org-column ((t (:background "#fffbd1" ))))
    '(org-column-title ((t (:background "#fffbd1" ))))
    '(org-hide ((t (:foreground "#ffffff" ))))
    '(org-todo ((t (:background "#ff002a" ))))
    '(org-upcoming-deadline ((t (:background "#ff002a" ))))
    '(org-warning ((t (:background "#ff002a" ))))
    '(region ((t (:background "#bdd5fc" ))))
    '(secondary-selection ((t (:background "#bdd5fc" ))))
    '(show-paren-match-face ((t (:background "#bdd5fc" ))))
    '(show-paren-mismatch-face ((t (:background "#ff002a" ))))
)

(provide-theme 'clouds)
