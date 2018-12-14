;; default {'caret': '#FFF6E5', 'foreground': '#FFF6E5', 'selection': '#4A5159', 'findHighlight': '#B5C6D8', 'invisibles': '#3F454C', 'lineHighlight': '#3F454C', 'findHighlightForeground': '#3F454C', 'activeGuide': '#7F8B98', 'background': '#212326', 'selectionBorder': '#B5C6D8', 'guide': '#3F454C'}
;; comment, punctuation.definition.comment, punctuation.whitespace.comment {'foreground': '#7F8B98'}
;; meta.brace, punctuation, punctuation.section, punctuation.definition {'foreground': '#FFF6E5'}
;; punctuation.definition.tag {'foreground': '#B5C6D8'}
;; keyword.operator {'foreground': '#B5C6D8'}
;; string, variable.parameter.url, punctuation.definition.string {'foreground': '#67D8E6'}
;; string.regexp, string.regexp punctuation.definition {'foreground': '#7ECEFD'}
;; constant.character.escape {'foreground': '#FFF6E5'}
;; constant.numeric, keyword.other.unit, keyword.unit {'foreground': '#2185C5'}
;; constant.language, constant.character, constant.other, constant.other.color.rgb-value.scss, support.constant, punctuation.definition.constant {'foreground': '#7ECEFD'}
;; variable {'foreground': '#FF7F66'}
;; keyword {'foreground': '#FFF6E5'}
;; storage {'foreground': '#FF7F66'}
;; storage.type {'foreground': '#2185C5'}
;; entity.name.class {'foreground': '#00ff00'}
;; variable.parameter {'foreground': '#FF7F66'}
;; entity.name.tag, keyword.control.html.elements, meta.tag.sgml, keyword.doctype {'foreground': '#2185C5'}
;; meta.attribute, entity.other.attribute-name {'foreground': '#7ECEFD'}
;; support.function {'foreground': '#FF7F66'}
;; support.type, support.class {'foreground': '#FFF6E5'}
;; invalid, keyword.other.important.css {'foreground': '#E85451'}
;; invalid.deprecated {'foreground': '#E85451'}
;; meta.structure.dictionary.json string.quoted.double.json {'foreground': '#7ECEFD'}
;; meta.diff, meta.diff.header {'foreground': '#7ECEFD'}
;; markup.deleted {'foreground': '#E85451'}
;; markup.inserted {'foreground': '#24B279'}
;; markup.changed {'foreground': '#FDC77E'}
;; svn entity.name {'foreground': '#FF7F66'}
;; constant.numeric.line-number.find-in-files - match {'foreground': '#7F8B98'}
;; source.css.embedded, source.js.embedded, markup.raw {'fontStyle': 'italic', 'background': '#24272B'}
;; meta.property-name, support.type.property-name {'foreground': '#B5C6D8'}
;; entity.other.attribute-name.class {'foreground': '#7ECEFD'}
;; keyword.control.at-rule, variable.other.less, variable.declaration.less {'foreground': '#FF7F66'}
;; entity.other.attribute-name.pseudo-element, entity.other.attribute-name.pseudo-class {'foreground': '#FF7F66'}
;; markup.list, text.html.markdown punctuation.definition, meta.separator.markdown {'foreground': '#FF7F66'}
;; markup.heading {'foreground': '#2185C5'}
;; markup.quote, meta.paragraph.list {'foreground': '#7ECEFD'}
;; markup.italic {'fontStyle': 'italic'}
;; markup.bold {'fontStyle': 'bold'}
;; markup.underline.link.markdown, meta.link.inline punctuation.definition.metadata, meta.link.reference.markdown punctuation.definition.constant, meta.link.reference.markdown constant.other.reference {'foreground': '#7F8B98'}
;; meta.paragraph.markdown meta.dummy.line-break {'background': '#FF7F66'}
(deftheme reboot
  "Reboot emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'reboot
    '(trailing-whitespace ((t (:background "#3f454c"))))
    '(whitespace-trailing ((t (:background "#3f454c"))))

    '(border ((t (:background "#3f454c" ))))
    '(css-property ((t (:foreground "#b5c6d8" ))))
    '(css-proprietary-property ((t (:foreground "#b5c6d8" ))))
    '(cursor ((t (:background "#fff6e5" ))))
    '(default ((t (:foreground "#fff6e5" :background "#212326" ))))
    '(diff-added ((t (:foreground "#24b279" ))))
    '(diff-changed ((t (:foreground "#fdc77e" ))))
    '(diff-header ((t (:foreground "#7ecefd" ))))
    '(diff-hunk-header ((t (:foreground "#7ecefd" ))))
    '(diff-removed ((t (:foreground "#e85451" ))))
    '(font-lock-builtin-face ((t (:foreground "#ff7f66" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#7f8b98" ))))
    '(font-lock-comment-face ((t (:foreground "#7f8b98" ))))
    '(font-lock-constant-face ((t (:foreground "#7ecefd" ))))
    '(font-lock-doc-face ((t (:foreground "#67d8e6" ))))
    '(font-lock-function-name-face ((t (:foreground "#ff7f66" ))))
    '(font-lock-keyword-face ((t (:foreground "#fff6e5" ))))
    '(font-lock-negation-char-face ((t (:foreground "#b5c6d8" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#7ecefd" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#7ecefd" ))))
    '(font-lock-string-face ((t (:foreground "#67d8e6" ))))
    '(font-lock-type-face ((t (:foreground "#2185c5" ))))
    '(font-lock-variable-name-face ((t (:foreground "#ff7f66" ))))
    '(font-lock-warning-face ((t (:foreground "#e85451" ))))
    '(fringe ((t (:background "#3f454c" ))))
    '(highlight ((t (:background "#4a5159" ))))
    '(hl-line ((t (:background "#3f454c" ))))
    '(isearch ((t (:foreground "#fdc77e" ))))
    '(isearch-fail ((t (:foreground "#e85451" ))))
    '(iswitchb-current-match ((t (:foreground "#24b279" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#e85451" ))))
    '(iswitchb-single-match ((t (:foreground "#24b279" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#fdc77e" ))))
    '(linum ((t (:background "#3f454c" ))))
    '(match ((t (:foreground "#24b279" ))))
    '(menu ((t (:foreground "#fff6e5" :background "#212326" ))))
    '(mode-line ((t (:box "#B5C6D8" :background "#4a5159" ))))
    '(mode-line-buffer-id ((t (:foreground "#2185c5" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:box "#B5C6D8" :background "#3f454c" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#7f8b98" ))))
    '(org-column ((t (:background "#3f454c" ))))
    '(org-column-title ((t (:background "#3f454c" ))))
    '(org-done ((t (:foreground "#24b279" ))))
    '(org-hide ((t (:foreground "#212326" ))))
    '(org-todo ((t (:foreground "#e85451" ))))
    '(org-upcoming-deadline ((t (:foreground "#e85451" ))))
    '(org-warning ((t (:foreground "#e85451" ))))
    '(region ((t (:background "#4a5159" ))))
    '(secondary-selection ((t (:background "#4a5159" ))))
    '(show-paren-match-face ((t (:background "#4a5159" ))))
    '(show-paren-mismatch-face ((t (:foreground "#e85451" ))))
)

(provide-theme 'reboot)
