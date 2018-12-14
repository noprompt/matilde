;; default {'caret': '#AEAFAD', 'foreground': '#C5C8C6', 'selection': '#373B41', 'invisibles': '#4B4E55', 'lineHighlight': '#282A2E', 'background': '#191919'}
;; comment {'foreground': '#4f6d82'}
;; keyword.operator.class, constant.other, source.php.embedded.line {'foreground': '#CED1CF', 'fontStyle': ''}
;; variable, support.other.variable, string.other.link, string.regexp, entity.name.tag, entity.other.attribute-name, meta.tag, declaration.tag {'foreground': '#abfdd8'}
;; constant.numeric, constant.language, support.constant, constant.character, variable.parameter, punctuation.section.embedded, keyword.other.unit {'foreground': '#98a6dd', 'fontStyle': ''}
;; entity.name.class, entity.name.type.class, support.type, support.class {'foreground': '#efabec', 'fontStyle': ''}
;; string, constant.other.symbol, entity.other.inherited-class, markup.heading {'foreground': '#99e1df', 'fontStyle': ''}
;; keyword.operator, constant.other.color {'foreground': '#8dd9d9'}
;; entity.name.function, meta.function-call, support.function, keyword.other.special-method, meta.block-level {'foreground': '#3bb1df', 'fontStyle': ''}
;; keyword, storage, storage.type, entity.name.tag.css {'foreground': '#64fbc8', 'fontStyle': ''}
;; invalid {'foreground': '#CED2CF', 'fontStyle': '', 'background': '#DF5F5F'}
;; meta.separator {'foreground': '#CED2CF', 'background': '#82A3BF'}
;; invalid.deprecated {'foreground': '#CED2CF', 'fontStyle': '', 'background': '#B798BF'}
(deftheme bliss
  "Bliss emacs theme autoconverted from the textMate theme by Saad Quadri")
(custom-theme-set-faces
  'bliss
    '(trailing-whitespace ((t (:background "#4b4e55"))))
    '(whitespace-trailing ((t (:background "#4b4e55"))))

    '(border ((t (:background "#282a2e" ))))
    '(css-property ((t (:foreground "#efabec" ))))
    '(css-proprietary-property ((t (:foreground "#efabec" ))))
    '(cursor ((t (:background "#aeafad" ))))
    '(default ((t (:foreground "#c5c8c6" :background "#191919" ))))
    '(font-lock-builtin-face ((t (:foreground "#3bb1df" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#4f6d82" ))))
    '(font-lock-comment-face ((t (:foreground "#4f6d82" ))))
    '(font-lock-constant-face ((t (:foreground "#98a6dd" ))))
    '(font-lock-doc-face ((t (:foreground "#99e1df" ))))
    '(font-lock-function-name-face ((t (:foreground "#3bb1df" ))))
    '(font-lock-keyword-face ((t (:foreground "#64fbc8" ))))
    '(font-lock-negation-char-face ((t (:foreground "#8dd9d9" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#abfdd8" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#abfdd8" ))))
    '(font-lock-string-face ((t (:foreground "#99e1df" ))))
    '(font-lock-type-face ((t (:foreground "#64fbc8" ))))
    '(font-lock-variable-name-face ((t (:foreground "#abfdd8" ))))
    '(font-lock-warning-face ((t (:foreground "#ced2cf" :background "#df5f5f" ))))
    '(fringe ((t (:background "#282a2e" ))))
    '(highlight ((t (:background "#373b41" ))))
    '(hl-line ((t (:background "#282a2e" ))))
    '(linum ((t (:background "#282a2e" ))))
    '(menu ((t (:foreground "#c5c8c6" :background "#191919" ))))
    '(minibuffer-prompt ((t (:foreground "#abfdd8" ))))
    '(mode-line ((t (:foreground "#ced2cf" :background "#82a3bf" ))))
    '(mode-line-buffer-id ((t (:foreground "#abfdd8" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#373b41" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#4f6d82" ))))
    '(org-column ((t (:background "#282a2e" ))))
    '(org-column-title ((t (:background "#282a2e" ))))
    '(org-hide ((t (:foreground "#191919" ))))
    '(org-todo ((t (:foreground "#ced2cf" :background "#df5f5f" ))))
    '(org-upcoming-deadline ((t (:foreground "#ced2cf" :background "#b798bf" ))))
    '(org-warning ((t (:foreground "#ced2cf" :background "#df5f5f" ))))
    '(region ((t (:background "#373b41" ))))
    '(secondary-selection ((t (:background "#373b41" ))))
    '(show-paren-match-face ((t (:background "#373b41" ))))
    '(show-paren-mismatch-face ((t (:foreground "#ced2cf" :background "#df5f5f" ))))
)

(provide-theme 'bliss)
