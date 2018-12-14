;; default {'caret': '#AEAFAD', 'foreground': '#969896', 'selection': '#373B41', 'invisibles': '#4B4E55', 'lineHighlight': '#282A2E', 'background': '#1D1F21'}
;; comment {'foreground': '#6a6a6a'}
;; keyword.operator.class, source.php.embedded.line {'foreground': '#969896', 'fontStyle': ''}
;; constant.other {'foreground': '#B294BB', 'fontStyle': ''}
;; variable, support.other.variable, string.other.link, string.regexp, entity.name.tag, entity.other.attribute-name, meta.tag, declaration.tag {'foreground': '#7587a6'}
;; constant.numeric, constant.language, support.constant, constant.character, variable.parameter, punctuation.section.embedded, keyword.other.unit {'foreground': '#B294BB', 'fontStyle': ''}
;; entity.name.class, entity.name.type.class, support.type, support.class {'foreground': '#7587a6', 'fontStyle': ''}
;; string, constant.other.symbol, entity.other.inherited-class, markup.heading {'foreground': '#cf7777', 'fontStyle': ''}
;; keyword.operator {'foreground': '#969896'}
;; constant.other.color {'foreground': '#B294BB'}
;; entity.name.function, keyword.other.special-method, meta.block-level {'foreground': '#8f9d6a', 'fontStyle': ''}
;; meta.function-call {'foreground': '#8f9d6a', 'fontStyle': ''}
;; support.function {'foreground': '#8f9d6a', 'fontStyle': '', 'background': '#282829'}
;; keyword, storage, storage.type, entity.name.tag.css {'foreground': '#B294BB', 'fontStyle': ''}
;; invalid {'foreground': '#CED2CF', 'fontStyle': '', 'background': '#DF5F5F'}
;; meta.separator {'foreground': '#CED2CF', 'background': '#82A3BF'}
;; invalid.deprecated {'foreground': '#CED2CF', 'fontStyle': '', 'background': '#B798BF'}
(deftheme capo-dark
  "Capo-Dark emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'capo-dark
    '(trailing-whitespace ((t (:background "#4b4e55"))))
    '(whitespace-trailing ((t (:background "#4b4e55"))))

    '(border ((t (:background "#282a2e" ))))
    '(css-property ((t (:foreground "#7587a6" ))))
    '(css-proprietary-property ((t (:foreground "#7587a6" ))))
    '(cursor ((t (:background "#aeafad" ))))
    '(default ((t (:foreground "#969896" :background "#1d1f21" ))))
    '(font-lock-builtin-face ((t (:foreground "#8f9d6a" :background "#282829" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#6a6a6a" ))))
    '(font-lock-comment-face ((t (:foreground "#6a6a6a" ))))
    '(font-lock-constant-face ((t (:foreground "#b294bb" ))))
    '(font-lock-doc-face ((t (:foreground "#cf7777" ))))
    '(font-lock-function-name-face ((t (:foreground "#8f9d6a" :background "#282829" ))))
    '(font-lock-keyword-face ((t (:foreground "#b294bb" ))))
    '(font-lock-negation-char-face ((t (:foreground "#969896" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#7587a6" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#7587a6" ))))
    '(font-lock-string-face ((t (:foreground "#cf7777" ))))
    '(font-lock-type-face ((t (:foreground "#b294bb" ))))
    '(font-lock-variable-name-face ((t (:foreground "#7587a6" ))))
    '(font-lock-warning-face ((t (:foreground "#ced2cf" :background "#df5f5f" ))))
    '(fringe ((t (:background "#282a2e" ))))
    '(highlight ((t (:background "#373b41" ))))
    '(hl-line ((t (:background "#282a2e" ))))
    '(linum ((t (:background "#282a2e" ))))
    '(menu ((t (:foreground "#969896" :background "#1d1f21" ))))
    '(minibuffer-prompt ((t (:foreground "#7587a6" ))))
    '(mode-line ((t (:foreground "#ced2cf" :background "#82a3bf" ))))
    '(mode-line-buffer-id ((t (:foreground "#7587a6" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#373b41" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#6a6a6a" ))))
    '(org-column ((t (:background "#282a2e" ))))
    '(org-column-title ((t (:background "#282a2e" ))))
    '(org-hide ((t (:foreground "#1d1f21" ))))
    '(org-todo ((t (:foreground "#ced2cf" :background "#df5f5f" ))))
    '(org-upcoming-deadline ((t (:foreground "#ced2cf" :background "#b798bf" ))))
    '(org-warning ((t (:foreground "#ced2cf" :background "#df5f5f" ))))
    '(region ((t (:background "#373b41" ))))
    '(secondary-selection ((t (:background "#373b41" ))))
    '(show-paren-match-face ((t (:background "#373b41" ))))
    '(show-paren-mismatch-face ((t (:foreground "#ced2cf" :background "#df5f5f" ))))
)

(provide-theme 'capo-dark)
