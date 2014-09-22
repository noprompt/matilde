;; default {'caret': '#ffe792', 'foreground': '#efefef', 'gutterForeground': '#263445', 'selection': '#bd4230', 'findHighlight': '#5eebb8', 'invisibles': '#F3FFB51A', 'lineHighlight': '#0d1319', 'inactiveSelection': '#23323f', 'gutter': '#0c1217', 'activeGuide': '#1b2735', 'background': '#0e151b', 'selectionForeground': '#fefefe', 'guide': '#1b2735'}
;; comment {'foreground': '#515c68', 'fontStyle': ''}
;; constant {'foreground': '#ffe792', 'fontStyle': ''}
;; entity {'foreground': '#3cadd7', 'fontStyle': ''}
;; keyword {'foreground': '#d7503c', 'fontStyle': ' bold'}
;; storage {'foreground': '#ffffff', 'fontStyle': ''}
;; storage.type {'foreground': '#3cadd7', 'fontStyle': 'italic'}
;; string {'foreground': '#ffe792', 'fontStyle': ''}
;; support {'foreground': '#ffe792', 'fontStyle': ' bold'}
;; variable {'foreground': '#d73c4d', 'fontStyle': ' bold'}
;; invalid {'foreground': '#F8F8F8', 'background': '#d7503c'}
;; text source {'background': '#B0B3BA14'}
;; text.html.ruby source {'background': '#B1B3BA21'}
;; entity.other.inherited-class {'foreground': '#4abe95', 'fontStyle': 'italic'}
;; string.quoted source {'foreground': '#5eebb8', 'fontStyle': ''}
;; string constant {'foreground': '#5eebb8'}
;; string.regexp {'foreground': '#FFB454'}
;; string variable {'foreground': '#ffe792'}
;; support.function {'foreground': '#d7503c', 'fontStyle': ''}
;; support.constant {'foreground': '#5eebb8', 'fontStyle': ''}
;; other.preprocessor.c {'foreground': '#8996A8'}
;; other.preprocessor.c entity {'foreground': '#AFC4DB'}
;; declaration.tag, declaration.tag entity, meta.tag, meta.tag entity {'foreground': '#3cadd7'}
;; meta.selector.css entity.name.tag {'foreground': '#3cadd7'}
;; meta.selector.css entity.other.attribute-name.id {'foreground': '#ffe792', 'fontStyle': ' bold'}
;; meta.selector.css entity.other.attribute-name.class {'foreground': '#5eebb8', 'fontStyle': ' bold'}
;; support.type.property-name.css {'foreground': '#ffffff'}
;; meta.property-group support.constant.property-value.css, meta.property-value support.constant.property-value.css {'foreground': '#5eebb8', 'fontStyle': ' italic'}
;; meta.preprocessor.at-rule keyword.control.at-rule {'foreground': '#ffe792', 'fontStyle': ' bold'}
;; meta.property-value support.constant.named-color.css, meta.property-value constant {'foreground': '#ffe792'}
;; meta.constructor.argument.css {'foreground': '#d7503c'}
;; meta.diff, meta.diff.header {'foreground': '#F8F8F8', 'fontStyle': 'italic', 'background': '#233345'}
;; markup.deleted {'foreground': '#F8F8F8', 'background': '#d7503c'}
;; markup.changed {'foreground': '#F8F8F8', 'background': '#3cadd7'}
;; markup.inserted {'foreground': '#F8F8F8', 'background': '#43ae88'}
;; sublimelinter.outline.notes {'background': '#233345'}
;; sublimelinter.outline.illegal {'background': '#d7503c'}
;; sublimelinter.underline.illegal {'background': '#d7503c'}
;; sublimelinter.outline.warning {'foreground': '#ffffff', 'background': '#9f3a2c'}
;; sublimelinter.underline.warning {'background': '#d7503c'}
;; sublimelinter.outline.violation {'background': '#9f3a2c'}
;; sublimelinter.underline.violation {'background': '#d7503c'}
;; entity.other.attribute-name.id.html {'foreground': '#f57542'}
;; entity.other.attribute-name.html {'foreground': '#76ffcd'}
;; punctuation.definition.tag.end, punctuation.definition.tag.begin, punctuation.definition.tag {'foreground': '#266b85'}
;; keyword.control.at-rule.import.css {'foreground': '#f7f09d', 'fontStyle': ' bold'}
;; variable.other.less {'foreground': '#ffffff'}
;; entity.other.less.mixin {'foreground': '#ffffff'}
;; source.css.less keyword.unit.css {'foreground': '#5eebb8'}
;; entity.other.attribute-name.angular.html, source.angular.embedded.html {'foreground': '#ffe792'}
;; constant.character.entity.html {'foreground': '#5eebb8'}
;; variable.other.readwrite.instance.coffee {'foreground': '#5eebb8'}
;; meta.brace.round.coffee,meta.brace.square.coffee {'foreground': '#ffe792'}
;; punctuation.section.embedded.coffee {'foreground': '#5eebb8'}
;; variable.assignment.coffee variable.assignment.coffee {'foreground': '#FFFFFF'}
;; meta.delimiter.method.period.coffee {'foreground': '#3cadd7'}
;; meta.brace.curly.coffee {'foreground': '#5eebb8'}
;; meta.tag.sgml.doctype.xml, declaration.sgml.html declaration.doctype, declaration.sgml.html declaration.doctype entity, declaration.sgml.html declaration.doctype string, declaration.xml-processing, declaration.xml-processing entity, declaration.xml-processing string, doctype {'foreground': '#3c444d'}
;; markup.deleted.git_gutter {'foreground': '#d7503c'}
;; markup.inserted.git_gutter {'foreground': '#43ae88'}
;; markup.changed.git_gutter {'foreground': '#3cadd7'}
;; markup.ignored.git_gutter {'foreground': '#3e4751'}
;; markup.untracked.git_gutter {'foreground': '#3e4751'}
(deftheme glacier
  "Glacier Emacs theme converted from the TextMate theme by Joey Figaro")
(custom-theme-set-faces
  'glacier
    '(trailing-whitespace ((t (:background "#252d2b"))))
    '(whitespace-trailing ((t (:background "#252d2b"))))

    '(border ((t (:background "#0d1319" ))))
    '(css-property ((t (:foreground "#ffffff" ))))
    '(css-proprietary-property ((t (:foreground "#ffffff" ))))
    '(css-selector ((t (:foreground "#ffe792" :bold t ))))
    '(cursor ((t (:background "#ffe792" ))))
    '(default ((t (:foreground "#efefef" :background "#0e151b" ))))
    '(diff-added ((t (:foreground "#f8f8f8" :background "#43ae88" ))))
    '(diff-changed ((t (:foreground "#f8f8f8" :background "#3cadd7" ))))
    '(diff-header ((t (:foreground "#f8f8f8" :italic t :background "#233345" ))))
    '(diff-hunk-header ((t (:foreground "#f8f8f8" :italic t :background "#233345" ))))
    '(diff-removed ((t (:foreground "#f8f8f8" :background "#d7503c" ))))
    '(font-lock-builtin-face ((t (:foreground "#d7503c" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#515c68" ))))
    '(font-lock-comment-face ((t (:foreground "#515c68" :slant italic))))
    '(font-lock-constant-face ((t (:foreground "#5eebb8" ))))
    '(font-lock-doc-face ((t (:foreground "#5eebb8" :slant italic))))
    '(font-lock-function-name-face ((t (:foreground "#3cadd7"))))
    '(font-lock-keyword-face ((t (:foreground "#d7503c" :bold t ))))
    '(font-lock-negation-char-face ((t (:foreground "#d7503c" :bold t ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#ffb454" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#ffb454" ))))
    '(font-lock-string-face ((t (:foreground "#ffe792" ))))
    '(font-lock-type-face ((t (:foreground "#3cadd7" :italic t ))))
    '(font-lock-variable-name-face ((t (:foreground "#d73c4d" :bold t ))))
    '(font-lock-warning-face ((t (:foreground "#f8f8f8" :background "#d7503c" ))))
    '(fringe ((t (:background "#0d1319" ))))
    '(highlight ((t (:background "#bd4230" :foreground "#f8f8f8"))))
    '(hl-line ((t (:background "#0d1319" ))))
    '(isearch ((t (:foreground "#f8f8f8" :background "#3cadd7" ))))
    '(isearch-fail ((t (:foreground "#f8f8f8" :background "#d7503c" ))))
    '(iswitchb-current-match ((t (:foreground "#f8f8f8" :background "#43ae88" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#f8f8f8" :background "#d7503c" ))))
    '(iswitchb-single-match ((t (:foreground "#f8f8f8" :background "#43ae88" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#f8f8f8" :background "#3cadd7" ))))
    '(linum ((t (:background "#0d1319" ))))
    '(match ((t (:foreground "#f8f8f8" :background "#43ae88" ))))
    '(menu ((t (:foreground "#efefef" :background "#0e151b" ))))
    '(minibuffer-prompt ((t (:foreground "#3cadd7" ))))
    '(mode-line ((t (:background "#1b2735" ))))
    '(mode-line-buffer-id ((t (:foreground "#5eebb8" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#0d1319" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#515c68" ))))
    '(org-column ((t (:background "#0d1319" ))))
    '(org-column-title ((t (:background "#0d1319" ))))
    '(org-done ((t (:foreground "#f8f8f8" :background "#43ae88" ))))
    '(org-hide ((t (:foreground "#0e151b" ))))
    '(org-todo ((t (:foreground "#f8f8f8" :background "#d7503c" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f8" :background "#d7503c" ))))
    '(org-warning ((t (:foreground "#f8f8f8" :background "#d7503c" ))))
    '(region ((t (:background "#bd4230" ))))
    '(secondary-selection ((t (:background "#bd4230" ))))
    '(show-paren-match-face ((t (:background "#bd4230" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f8" :background "#d7503c" ))))
)

(provide-theme 'glacier)
