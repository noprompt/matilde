;; default {'caret': '#979E86', 'foreground': '#C3CEE3', 'selection': '#1a1f29', 'invisibles': '#FF0000', 'lineHighlight': '#2F374D', 'background': '#252B39', 'selectionBorder': '#1a1f29'}
;; comment {'foreground': '#7081BE'}
;; comment.block.preprocessor {'comment': '.syntax .cp', 'foreground': '#7081BE', 'fontStyle': 'regular'}
;; comment.documentation, comment.block.documentation {'comment': '.syntax .cs', 'foreground': '#7081BE', 'fontStyle': 'regular'}
;; invalid.illegal {'comment': '.syntax .err', 'foreground': '#E889B5', 'background': '#722C40'}
;; keyword, storage {'foreground': '#FFFFFF', 'fontStyle': 'bold'}
;; keyword.operator {'foreground': '#E4EAF0', 'fontStyle': 'bold'}
;; constant.language, support.constant {'comment': '.style .kc', 'foreground': '#E4EAF0', 'fontStyle': 'bold'}
;; storage.type, support.type {'comment': '.style .kt', 'foreground': '#d3afc5', 'fontStyle': 'italic'}
;; entity.other.attribute-name {'comment': '.style .na', 'foreground': '#90D6CD'}
;; variable.other {'comment': '.style .nb', 'foreground': '#8DC4F0'}
;; variable.language {'comment': '.style .bp', 'foreground': '#B3B2A2'}
;; entity.name.type, entity.other.inherited-class, support.class {'comment': '.style .nc', 'foreground': '#E3C78A'}
;; variable.other.constant {'comment': '.style .no', 'foreground': '#18C9C9'}
;; constant.character.entity {'comment': '.style .ni', 'foreground': '#d67c9b'}
;; entity.name.exception {'comment': '.style .ne', 'foreground': '#d67c9b'}
;; entity.name.function, support.function, keyword.other.name-of-parameter {'comment': '.style .nf', 'foreground': '#8be9ee'}
;; entity.name.section {'comment': '.style .nn', 'foreground': '#dabc83'}
;; entity.name.tag {'comment': '.style .nt', 'foreground': '#8db3ff'}
;; punctuation.definition.tag {'comment': '.style .nt', 'foreground': '#5768b0'}
;; variable.parameter, support.variable {'comment': '.style .nv, .style .v[cgi]', 'foreground': '#18C9C9', 'fontStyle': 'italic'}
;; constant.numeric, constant.other {'comment': '.style .m, .style .m[fhio], .style .il', 'foreground': '#18C9C9'}
;; string - string source, constant.character {'comment': '.style .s[bcd2ehixl]', 'foreground': '#D5D5CA'}
;; string.regexp {'comment': '.style .sr', 'foreground': '#18C9C9'}
;; constant.other.symbol {'comment': '.style .ss', 'foreground': '#ABD683'}
;; markup.deleted {'comment': '.syntax .gd', 'foreground': '#CDBBD6', 'background': '#3B2A39'}
;; markup.italic {'comment': '.syntax .ge', 'fontStyle': 'italic'}
;; markup.error {'comment': '.syntax .gr', 'foreground': '#DF7788'}
;; markup.heading.1 {'comment': '.syntax .gh', 'foreground': '#CC7093'}
;; markup.inserted {'comment': '.syntax .gi', 'background': '#2C344D'}
;; markup.output, markup.raw {'comment': '.syntax .go', 'foreground': '#89CEDD'}
;; markup.prompt {'comment': '.syntax .gp', 'foreground': '#555555'}
;; markup.bold {'comment': '.syntax .gs', 'fontStyle': 'bold'}
;; markup.heading {'comment': '.syntax .gu', 'foreground': '#C97595'}
;; markup.traceback {'comment': '.syntax .gt', 'foreground': '#89CEDD'}
;; markup.underline {'fontStyle': 'underline'}
;; meta.diff.range, meta.diff.index, meta.separator {'comment': '.syntax .gc', 'foreground': '#8DA6EA'}
;; meta.diff.header.from-file {'foreground': '#E889B5', 'background': '#722C40'}
;; meta.diff.header.to-file {'foreground': '#B0F7C3', 'background': '#628F50'}
;; meta.link {'foreground': '#92A3E0', 'fontStyle': ''}
;; support.type.property-name {'foreground': '#C3CEE3'}
;; support.constant.property-value, support.constant.font-name {'foreground': '#C3CEE3', 'fontStyle': ''}
;; constant.other.unit, keyword.other.unit {'foreground': '#18C9C9', 'fontStyle': ''}
;; keyword.control.untitled, entity.other.attribute-name {'foreground': '#96fbff'}
;; keyword.control.at-rule {'foreground': '#E3C78A'}
;; keyword.control.mixin-shorthand {'foreground': '#dde9ff', 'fontStyle': ''}
;; variable.parameter.url.sass {'foreground': '#C3CEE3', 'fontStyle': 'normal'}
;; meta.brace.round.coffee {'foreground': '#798194'}
;; entity.name.section.markdown {'foreground': '#71baff'}
;; punctuation.definition.heading {'foreground': '#4a72ae'}
;; markup.heading.1 punctuation.definition.heading {'foreground': '#ff0000'}
;; punctuation.definition.list_item {'foreground': '#646877'}
;; string.other.link.title {'foreground': '#C3CEE3'}
;; string.raw.inline.markdown {'foreground': '#cec8d7', 'background': '#1f2431'}
;; punctuation.definition.raw.markdown {'foreground': '#5d606e'}
(deftheme facebook
  "Facebook emacs theme autoconverted from the textMate theme by Michael Obrocnik (mbixby)")
(custom-theme-set-faces
  'facebook
    '(trailing-whitespace ((t (:background "#ff0000"))))
    '(whitespace-trailing ((t (:background "#ff0000"))))

    '(border ((t (:background "#2f374d" ))))
    '(css-property ((t (:foreground "#c3cee3" ))))
    '(css-proprietary-property ((t (:foreground "#c3cee3" ))))
    '(cursor ((t (:background "#979e86" ))))
    '(default ((t (:foreground "#c3cee3" :background "#252b39" ))))
    '(diff-added ((t (:background "#2c344d" ))))
    '(diff-removed ((t (:foreground "#cdbbd6" :background "#3b2a39" ))))
    '(font-lock-builtin-face ((t (:foreground "#8be9ee" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#7081be" ))))
    '(font-lock-comment-face ((t (:foreground "#7081be" ))))
    '(font-lock-constant-face ((t (:foreground "#e4eaf0" :bold t ))))
    '(font-lock-function-name-face ((t (:foreground "#8be9ee" ))))
    '(font-lock-keyword-face ((t (:foreground "#ffffff" :bold t ))))
    '(font-lock-negation-char-face ((t (:foreground "#e4eaf0" :bold t ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#18c9c9" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#18c9c9" ))))
    '(font-lock-type-face ((t (:foreground "#d3afc5" :italic t ))))
    '(font-lock-variable-name-face ((t (:foreground "#8dc4f0" ))))
    '(font-lock-warning-face ((t (:foreground "#e889b5" :background "#722c40" ))))
    '(fringe ((t (:background "#2f374d" ))))
    '(highlight ((t (:background "#1a1f29" ))))
    '(hl-line ((t (:background "#2f374d" ))))
    '(isearch-fail ((t (:foreground "#cdbbd6" :background "#3b2a39" ))))
    '(iswitchb-current-match ((t (:background "#2c344d" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#cdbbd6" :background "#3b2a39" ))))
    '(iswitchb-single-match ((t (:background "#2c344d" ))))
    '(linum ((t (:background "#2f374d" ))))
    '(match ((t (:background "#2c344d" ))))
    '(menu ((t (:foreground "#c3cee3" :background "#252b39" ))))
    '(mode-line ((t (:foreground "#8da6ea" ))))
    '(mode-line-buffer-id ((t (:foreground "#8db3ff" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:box "#1a1f29" :background "#1a1f29" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#7081be" ))))
    '(org-column ((t (:background "#2f374d" ))))
    '(org-column-title ((t (:background "#2f374d" ))))
    '(org-done ((t (:background "#2c344d" ))))
    '(org-hide ((t (:foreground "#252b39" ))))
    '(org-link ((t (:foreground "#92a3e0" ))))
    '(org-todo ((t (:foreground "#e889b5" :background "#722c40" ))))
    '(org-warning ((t (:foreground "#e889b5" :background "#722c40" ))))
    '(region ((t (:background "#1a1f29" ))))
    '(secondary-selection ((t (:background "#1a1f29" ))))
    '(show-paren-match-face ((t (:background "#1a1f29" ))))
    '(show-paren-mismatch-face ((t (:foreground "#e889b5" :background "#722c40" ))))
)

(provide-theme 'facebook)
