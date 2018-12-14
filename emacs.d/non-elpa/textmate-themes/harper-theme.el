;; default {'caret': '#a8a49d', 'foreground': '#a8a49d', 'selection': '#5a5753', 'invisibles': '#726e6a', 'lineHighlight': '#32302f', 'background': '#010101'}
;; variable.parameter.function {'foreground': '#a8a49d'}
;; comment, punctuation.definition.comment {'foreground': '#726e6a'}
;; punctuation.definition.string, punctuation.definition.variable, punctuation.definition.string, punctuation.definition.parameters, punctuation.definition.string, punctuation.definition.array {'foreground': '#a8a49d'}
;; none {'foreground': '#a8a49d'}
;; keyword.operator {'foreground': '#a8a49d'}
;; keyword, keyword.control {'foreground': '#b296c6'}
;; variable {'foreground': '#f8b63f'}
;; entity.name.function, meta.require, support.function.any-method {'foreground': '#489e48'}
;; meta.class, support.class, entity.name.class, entity.name.type.class {'foreground': '#d6da25'}
;; keyword.other.special-method {'foreground': '#489e48'}
;; storage {'foreground': '#b296c6'}
;; support.function {'foreground': '#ae93c3'}
;; string, constant.other.symbol, entity.other.inherited-class {'foreground': '#7fb5e1'}
;; constant.numeric {'foreground': '#f05932'}
;; none {'foreground': '#f05932'}
;; none {'foreground': '#f05932'}
;; constant {'foreground': '#f05932'}
;; entity.name.tag {'foreground': '#f8b63f'}
;; entity.other.attribute-name {'foreground': '#f05932'}
;; entity.other.attribute-name.id, punctuation.definition.entity {'foreground': '#489e48'}
;; meta.selector {'foreground': '#b296c6'}
;; none {'foreground': '#f05932'}
;; markup.heading punctuation.definition.heading, entity.name.section {'foreground': '#489e48', 'fontStyle': ''}
;; keyword.other.unit {'foreground': '#f05932'}
;; markup.bold, punctuation.definition.bold {'foreground': '#d6da25', 'fontStyle': 'bold'}
;; markup.italic, punctuation.definition.italic {'foreground': '#b296c6', 'fontStyle': 'italic'}
;; markup.raw.inline {'foreground': '#7fb5e1'}
;; string.other.link {'foreground': '#f8b63f'}
;; meta.link {'foreground': '#f05932'}
;; markup.list {'foreground': '#f8b63f'}
;; markup.quote {'foreground': '#f05932'}
;; meta.separator {'foreground': '#a8a49d', 'background': '#5a5753'}
;; markup.inserted {'foreground': '#7fb5e1'}
;; markup.deleted {'foreground': '#f8b63f'}
;; markup.changed {'foreground': '#b296c6'}
;; constant.other.color {'foreground': '#ae93c3'}
;; string.regexp {'foreground': '#ae93c3'}
;; constant.character.escape {'foreground': '#ae93c3'}
;; punctuation.section.embedded, variable.interpolation {'foreground': '#d1a22e'}
;; invalid.illegal {'foreground': '#010101', 'background': '#f8b63f'}
(deftheme harper
  "Harper emacs theme autoconverted from the textMate theme by Jan T. Sott")
(custom-theme-set-faces
  'harper
    '(trailing-whitespace ((t (:background "#726e6a"))))
    '(whitespace-trailing ((t (:background "#726e6a"))))

    '(border ((t (:background "#32302f" ))))
    '(css-selector ((t (:foreground "#b296c6" ))))
    '(cursor ((t (:background "#a8a49d" ))))
    '(default ((t (:foreground "#a8a49d" :background "#010101" ))))
    '(diff-added ((t (:foreground "#7fb5e1" ))))
    '(diff-changed ((t (:foreground "#b296c6" ))))
    '(diff-removed ((t (:foreground "#f8b63f" ))))
    '(font-lock-builtin-face ((t (:foreground "#ae93c3" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#726e6a" ))))
    '(font-lock-comment-face ((t (:foreground "#726e6a" ))))
    '(font-lock-doc-face ((t (:foreground "#7fb5e1" ))))
    '(font-lock-function-name-face ((t (:foreground "#ae93c3" ))))
    '(font-lock-keyword-face ((t (:foreground "#b296c6" ))))
    '(font-lock-negation-char-face ((t (:foreground "#a8a49d" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#ae93c3" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#ae93c3" ))))
    '(font-lock-string-face ((t (:foreground "#7fb5e1" ))))
    '(font-lock-type-face ((t (:foreground "#b296c6" ))))
    '(font-lock-variable-name-face ((t (:foreground "#f8b63f" ))))
    '(font-lock-warning-face ((t (:foreground "#010101" :background "#f8b63f" ))))
    '(fringe ((t (:background "#32302f" ))))
    '(highlight ((t (:background "#5a5753" ))))
    '(hl-line ((t (:background "#32302f" ))))
    '(isearch ((t (:foreground "#b296c6" ))))
    '(isearch-fail ((t (:foreground "#f8b63f" ))))
    '(iswitchb-current-match ((t (:foreground "#7fb5e1" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#f8b63f" ))))
    '(iswitchb-single-match ((t (:foreground "#7fb5e1" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#b296c6" ))))
    '(linum ((t (:background "#32302f" ))))
    '(match ((t (:foreground "#7fb5e1" ))))
    '(menu ((t (:foreground "#a8a49d" :background "#010101" ))))
    '(mode-line ((t (:foreground "#a8a49d" :background "#5a5753" ))))
    '(mode-line-buffer-id ((t (:foreground "#f8b63f" ))))
    '(mode-line-emphasis ((t (:foreground "#d6da25" :bold t ))))
    '(mode-line-highlight ((t (:foreground "#b296c6" :italic t ))))
    '(mode-line-inactive ((t (:background "#5a5753" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#726e6a" ))))
    '(org-column ((t (:background "#32302f" ))))
    '(org-column-title ((t (:background "#32302f" ))))
    '(org-done ((t (:foreground "#7fb5e1" ))))
    '(org-hide ((t (:foreground "#010101" ))))
    '(org-link ((t (:foreground "#f05932" ))))
    '(org-todo ((t (:foreground "#010101" :background "#f8b63f" ))))
    '(org-warning ((t (:foreground "#010101" :background "#f8b63f" ))))
    '(region ((t (:background "#5a5753" ))))
    '(secondary-selection ((t (:background "#5a5753" ))))
    '(show-paren-match-face ((t (:background "#5a5753" ))))
    '(show-paren-mismatch-face ((t (:foreground "#010101" :background "#f8b63f" ))))
)

(provide-theme 'harper)
