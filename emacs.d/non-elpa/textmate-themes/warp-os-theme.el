;; default {'caret': '#cee2e3', 'foreground': '#cee2e3', 'selection': '#444444', 'invisibles': '#676650', 'lineHighlight': '#3b3b3b', 'background': '#323232'}
;; variable.parameter.function {'foreground': '#cee2e3'}
;; comment, punctuation.definition.comment {'foreground': '#676650', 'fontStyle': ' italic'}
;; punctuation.definition.string, punctuation.definition.variable, punctuation.definition.string, punctuation.definition.parameters, punctuation.definition.string, punctuation.definition.array {'foreground': '#c0c0c0', 'fontStyle': ''}
;; none {'foreground': '#c0c0c0', 'fontStyle': ''}
;; keyword.operator {'foreground': '#c0c0c0', 'fontStyle': ''}
;; keyword, keyword.control {'foreground': '#ff9900'}
;; variable {'foreground': '#8a71a2'}
;; entity.name.function, meta.require, support.function.any-method {'foreground': '#4fa0df'}
;; meta.class, support.class, entity.name.class, entity.name.type.class {'foreground': '#e7b6b6'}
;; keyword.other.special-method {'foreground': '#4fa0df'}
;; storage {'foreground': '#ffff95'}
;; support.function {'foreground': '#47c266'}
;; string, constant.other.symbol, entity.other.inherited-class {'foreground': '#00ae99'}
;; constant.numeric {'foreground': '#fa2500'}
;; none {'foreground': '#fa2500'}
;; none {'foreground': '#ff00ff'}
;; constant {'foreground': '#fa2500'}
;; entity.name.tag {'foreground': '#8a71a2'}
;; entity.other.attribute-name {'foreground': '#fa2500'}
;; entity.other.attribute-name.id, punctuation.definition.entity {'foreground': '#4fa0df'}
;; meta.selector {'foreground': '#ff9900'}
;; none {'foreground': '#fa2500'}
;; markup.heading punctuation.definition.heading, entity.name.section {'foreground': '#4fa0df', 'fontStyle': ''}
;; keyword.other.unit {'foreground': '#fa2500'}
;; markup.bold, punctuation.definition.bold {'foreground': '#e7b6b6', 'fontStyle': 'bold'}
;; markup.italic, punctuation.definition.italic {'foreground': '#ff9900', 'fontStyle': 'italic'}
;; markup.raw.inline {'foreground': '#00ae99'}
;; string.other.link {'foreground': '#8a71a2'}
;; meta.link {'foreground': '#fa2500'}
;; markup.list {'foreground': '#8a71a2'}
;; markup.quote {'foreground': '#fa2500'}
;; meta.separator {'foreground': '#cee2e3', 'background': '#444444'}
;; markup.inserted {'foreground': '#00ae99'}
;; markup.deleted {'foreground': '#8a71a2'}
;; markup.changed {'foreground': '#ff9900'}
;; constant.other.color {'foreground': '#47c266'}
;; string.regexp {'foreground': '#9dd92a'}
;; constant.character.escape {'foreground': '#374da5'}
;; punctuation.section.embedded, variable.interpolation {'foreground': '#bd8168'}
;; invalid.illegal {'foreground': '#323232', 'background': '#8a71a2'}
(deftheme warp-os
  "Warp-OS emacs theme autoconverted from the textMate theme by Jan T. Sott")
(custom-theme-set-faces
  'warp-os
    '(trailing-whitespace ((t (:background "#676650"))))
    '(whitespace-trailing ((t (:background "#676650"))))

    '(border ((t (:background "#3b3b3b" ))))
    '(css-selector ((t (:foreground "#ff9900" ))))
    '(cursor ((t (:background "#cee2e3" ))))
    '(default ((t (:foreground "#cee2e3" :background "#323232" ))))
    '(diff-added ((t (:foreground "#00ae99" ))))
    '(diff-changed ((t (:foreground "#ff9900" ))))
    '(diff-removed ((t (:foreground "#8a71a2" ))))
    '(font-lock-builtin-face ((t (:foreground "#47c266" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#676650" :italic t ))))
    '(font-lock-comment-face ((t (:foreground "#676650" :italic t ))))
    '(font-lock-doc-face ((t (:foreground "#00ae99" ))))
    '(font-lock-function-name-face ((t (:foreground "#47c266" ))))
    '(font-lock-keyword-face ((t (:foreground "#ff9900" ))))
    '(font-lock-negation-char-face ((t (:foreground "#c0c0c0" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#9dd92a" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#9dd92a" ))))
    '(font-lock-string-face ((t (:foreground "#00ae99" ))))
    '(font-lock-type-face ((t (:foreground "#ffff95" ))))
    '(font-lock-variable-name-face ((t (:foreground "#8a71a2" ))))
    '(font-lock-warning-face ((t (:foreground "#323232" :background "#8a71a2" ))))
    '(fringe ((t (:background "#3b3b3b" ))))
    '(highlight ((t (:background "#444444" ))))
    '(hl-line ((t (:background "#3b3b3b" ))))
    '(isearch ((t (:foreground "#ff9900" ))))
    '(isearch-fail ((t (:foreground "#8a71a2" ))))
    '(iswitchb-current-match ((t (:foreground "#00ae99" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#8a71a2" ))))
    '(iswitchb-single-match ((t (:foreground "#00ae99" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#ff9900" ))))
    '(linum ((t (:background "#3b3b3b" ))))
    '(match ((t (:foreground "#00ae99" ))))
    '(menu ((t (:foreground "#cee2e3" :background "#323232" ))))
    '(mode-line ((t (:foreground "#cee2e3" :background "#444444" ))))
    '(mode-line-buffer-id ((t (:foreground "#8a71a2" ))))
    '(mode-line-emphasis ((t (:foreground "#e7b6b6" :bold t ))))
    '(mode-line-highlight ((t (:foreground "#ff9900" :italic t ))))
    '(mode-line-inactive ((t (:background "#444444" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#676650" :italic t ))))
    '(org-column ((t (:background "#3b3b3b" ))))
    '(org-column-title ((t (:background "#3b3b3b" ))))
    '(org-done ((t (:foreground "#00ae99" ))))
    '(org-hide ((t (:foreground "#323232" ))))
    '(org-link ((t (:foreground "#fa2500" ))))
    '(org-todo ((t (:foreground "#323232" :background "#8a71a2" ))))
    '(org-warning ((t (:foreground "#323232" :background "#8a71a2" ))))
    '(region ((t (:background "#444444" ))))
    '(secondary-selection ((t (:background "#444444" ))))
    '(show-paren-match-face ((t (:background "#444444" ))))
    '(show-paren-mismatch-face ((t (:foreground "#323232" :background "#8a71a2" ))))
)

(provide-theme 'warp-os)
