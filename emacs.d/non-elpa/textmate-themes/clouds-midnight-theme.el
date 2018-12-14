;; default {'caret': '#7DA5DC', 'foreground': '#929292', 'selection': '#000000', 'invisibles': '#BFBFBF', 'lineHighlight': '#D7D7D708', 'background': '#191919'}
;; comment {'foreground': '#3C403B', 'fontStyle': ''}
;; string {'foreground': '#5D90CD', 'fontStyle': ''}
;; constant.numeric {'foreground': '#46A609'}
;; constant.language {'foreground': '#39946A', 'fontStyle': ''}
;; constant.character, constant.other {}
;; variable.language, variable.other {'fontStyle': ''}
;; keyword, support.constant.property-value, constant.other.color {'foreground': '#927C5D', 'fontStyle': ''}
;; keyword.other.unit {'foreground': '#366F1A'}
;; entity.other.attribute-name.html {'foreground': '#A46763'}
;; keyword.operator {'foreground': '#4B4B4B'}
;; storage {'foreground': '#E92E2E', 'fontStyle': ''}
;; entity.name.class {'fontStyle': ''}
;; entity.other.inherited-class {'foreground': '#858585', 'fontStyle': ''}
;; entity.name.function {'fontStyle': ''}
;; variable.parameter {}
;; entity.name.tag {'foreground': '#606060', 'fontStyle': ''}
;; constant.character.entity {'foreground': '#A165AC'}
;; support.class.js {'foreground': '#A165AC'}
;; entity.other.attribute-name {'foreground': '#606060', 'fontStyle': ''}
;; meta.selector.css, entity.name.tag.css, entity.other.attribute-name.id.css, entity.other.attribute-name.class.css {'foreground': '#E92E2E', 'fontStyle': ''}
;; meta.property-name.css {'foreground': '#616161'}
;; support.function {'foreground': '#E92E2E'}
;; support.constant {}
;; support.type, support.class {}
;; support.other.variable {'fontStyle': ''}
;; invalid {'foreground': '#FFFFFF', 'background': '#E92E2E'}
;; punctuation.section.embedded {'foreground': '#E92E2E', 'fontStyle': ''}
;; punctuation.definition.tag {'foreground': '#606060', 'fontStyle': ''}
;; constant.other.color.rgb-value.css, support.constant.property-value.css {'foreground': '#A165AC'}
(deftheme clouds-midnight
  "Clouds Midnight emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'clouds-midnight
    '(trailing-whitespace ((t (:background "#bfbfbf"))))
    '(whitespace-trailing ((t (:background "#bfbfbf"))))

    '(border ((t (:background "#1f1f1f" ))))
    '(css-property ((t ())))
    '(css-proprietary-property ((t ())))
    '(css-selector ((t (:foreground "#e92e2e" ))))
    '(cursor ((t (:background "#7da5dc" ))))
    '(default ((t (:foreground "#929292" :background "#191919" ))))
    '(font-lock-builtin-face ((t (:foreground "#e92e2e" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#3c403b" ))))
    '(font-lock-comment-face ((t (:foreground "#3c403b" ))))
    '(font-lock-constant-face ((t ())))
    '(font-lock-doc-face ((t (:foreground "#5d90cd" ))))
    '(font-lock-function-name-face ((t (:foreground "#e92e2e" ))))
    '(font-lock-keyword-face ((t (:foreground "#927c5d" ))))
    '(font-lock-negation-char-face ((t (:foreground "#4b4b4b" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#5d90cd" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#5d90cd" ))))
    '(font-lock-string-face ((t (:foreground "#5d90cd" ))))
    '(font-lock-type-face ((t (:foreground "#e92e2e" ))))
    '(font-lock-variable-name-face ((t ())))
    '(font-lock-warning-face ((t (:foreground "#ffffff" :background "#e92e2e" ))))
    '(fringe ((t (:background "#1f1f1f" ))))
    '(highlight ((t (:background "#000000" ))))
    '(hl-line ((t (:background "#1f1f1f" ))))
    '(linum ((t (:background "#1f1f1f" ))))
    '(menu ((t (:foreground "#929292" :background "#191919" ))))
    '(mode-line ((t (:background "#000000" ))))
    '(mode-line-buffer-id ((t (:foreground "#606060" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#1f1f1f" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#3c403b" ))))
    '(org-column ((t (:background "#1f1f1f" ))))
    '(org-column-title ((t (:background "#1f1f1f" ))))
    '(org-hide ((t (:foreground "#191919" ))))
    '(org-todo ((t (:foreground "#ffffff" :background "#e92e2e" ))))
    '(org-upcoming-deadline ((t (:foreground "#ffffff" :background "#e92e2e" ))))
    '(org-warning ((t (:foreground "#ffffff" :background "#e92e2e" ))))
    '(region ((t (:background "#000000" ))))
    '(secondary-selection ((t (:background "#000000" ))))
    '(show-paren-match-face ((t (:background "#000000" ))))
    '(show-paren-mismatch-face ((t (:foreground "#ffffff" :background "#e92e2e" ))))
)

(provide-theme 'clouds-midnight)
