;; default {'caret': '#8BA7A7', 'foreground': '#ae2ca9', 'gutterForeground': '#73797b75', 'selection': '#C5DFE980', 'findHighlight': '#a0efff', 'invisibles': '#F3FFB51A', 'lineHighlight': '#FFFFFF0D', 'inactiveSelection': '#ff66b8', 'activeGuide': '#73797b60', 'background': '#151515', 'guide': '#73797b30'}
;; comment {'foreground': '#9992b1', 'fontStyle': 'italic'}
;; constant {'foreground': '#FF3A83', 'fontStyle': ' bold'}
;; entity {'foreground': '#f169b6', 'fontStyle': 'bold'}
;; keyword {'foreground': '#4f9aed', 'fontStyle': 'bold'}
;; storage {'foreground': '#f95b80', 'fontStyle': ''}
;; string {'foreground': '#65BA3A', 'fontStyle': ''}
;; support {'foreground': '#b41f2d', 'fontStyle': ''}
;; variable {'foreground': '#25b4df', 'fontStyle': ''}
;; invalid {'foreground': '#F8F8F8', 'background': '#D8290DBF'}
;; text source {'background': '#2c2b2c'}
;; text.html.ruby source {'background': '#333333'}
;; entity.other.inherited-class {'foreground': '#2298ce', 'fontStyle': 'italic'}
;; string.quoted source {'foreground': '#22a9cc', 'fontStyle': ''}
;; string constant {'foreground': '#3ec5ba'}
;; string.regexp {'foreground': '#ba5eb3'}
;; string variable {'foreground': '#d0d36e'}
;; support.function {'foreground': '#ff92ae', 'fontStyle': ''}
;; support.constant {'foreground': '#EB939A', 'fontStyle': ''}
;; other.preprocessor.c {'foreground': '#8996A8'}
;; other.preprocessor.c entity {'foreground': '#AFC4DB'}
;; declaration.tag, declaration.tag entity, meta.tag, meta.tag entity {'foreground': '#85d9da'}
;; meta.selector.css entity.name.tag {'foreground': '#72bbbd'}
;; meta.selector.css entity.other.attribute-name.id {'foreground': '#6794e7'}
;; meta.selector.css entity.other.attribute-name.class {'foreground': '#eb36bd'}
;; support.type.property-name.css {'foreground': '#8a2dc0'}
;; meta.property-group support.constant.property-value.css, meta.property-value support.constant.property-value.css {'foreground': '#f47a82'}
;; meta.preprocessor.at-rule keyword.control.at-rule {'foreground': '#f74763'}
;; meta.property-value support.constant.named-color.css, meta.property-value constant {'foreground': '#8bb5cb'}
;; meta.constructor.argument.css {'foreground': '#EB939A'}
;; meta.diff, meta.diff.header {'foreground': '#F8F8F8', 'fontStyle': 'italic', 'background': '#0E2231'}
;; markup.deleted {'foreground': '#F8F8F8', 'background': '#D03620'}
;; markup.changed {'foreground': '#F8F8F8', 'background': '#C4B14A'}
;; markup.inserted {'foreground': '#F8F8F8', 'background': '#41A83E'}
;; sublimelinter.outline.notes {'background': '#FFFFAA50'}
;; sublimelinter.outline.illegal {'background': '#FF4A5250'}
;; sublimelinter.underline.illegal {'background': '#FF000050'}
;; sublimelinter.outline.warning {'background': '#DF940050'}
;; sublimelinter.underline.warning {'background': '#FF000050'}
;; sublimelinter.outline.violation {'background': '#ffffff33'}
;; sublimelinter.underline.violation {'background': '#FF000050'}
;; entity.other.attribute-name.id.html {'foreground': '#ff6185'}
;; entity.other.attribute-name.html {'foreground': '#ac3d9f'}
;; punctuation.definition.tag.end, punctuation.definition.tag.begin, punctuation.definition.tag {'foreground': '#65A4A4'}
;; keyword.control.at-rule.import.css {'foreground': '#d785f7'}
;; variable.other.less {'foreground': '#e047c5'}
;; entity.other.less.mixin {'foreground': '#eb49cb'}
;; source.css.less keyword.unit.css {'foreground': '#EB939A'}
;; entity.other.attribute-name.angular.html, source.angular.embedded.html {'foreground': '#FF3A83'}
;; constant.character.entity.html {'foreground': '#eb4abc'}
;; variable.other.readwrite.instance.coffee {'foreground': '#f97ddb'}
;; meta.brace.round.coffee,meta.brace.square.coffee {'foreground': '#c07ef6'}
;; punctuation.section.embedded.coffee {'foreground': '#abdbe6'}
;; variable.assignment.coffee variable.assignment.coffee {'foreground': '#b73494'}
;; meta.delimiter.method.period.coffee {'foreground': '#78cbfe'}
;; meta.brace.curly.coffee {'foreground': '#68a3f7'}
;; meta.tag.sgml.doctype.xml, declaration.sgml.html declaration.doctype, declaration.sgml.html declaration.doctype entity, declaration.sgml.html declaration.doctype string, declaration.xml-processing, declaration.xml-processing entity, declaration.xml-processing string, doctype {'foreground': '#73817D'}
(deftheme toy-machine
  "Toy Machine emacs theme autoconverted from the textMate theme by Ryan Burgess")
(custom-theme-set-faces
  'toy-machine
    '(trailing-whitespace ((t (:background "#2c2d25"))))
    '(whitespace-trailing ((t (:background "#2c2d25"))))

    '(border ((t (:background "#212121" ))))
    '(css-property ((t (:foreground "#8a2dc0" ))))
    '(css-proprietary-property ((t (:foreground "#8a2dc0" ))))
    '(css-selector ((t (:foreground "#6794e7" ))))
    '(cursor ((t (:background "#8ba7a7" ))))
    '(default ((t (:foreground "#ae2ca9" :background "#151515" ))))
    '(diff-added ((t (:foreground "#f8f8f8" :background "#41a83e" ))))
    '(diff-changed ((t (:foreground "#f8f8f8" :background "#c4b14a" ))))
    '(diff-header ((t (:foreground "#f8f8f8" :italic t :background "#0e2231" ))))
    '(diff-hunk-header ((t (:foreground "#f8f8f8" :italic t :background "#0e2231" ))))
    '(diff-removed ((t (:foreground "#f8f8f8" :background "#d03620" ))))
    '(font-lock-builtin-face ((t (:foreground "#ff92ae" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#9992b1" :italic t ))))
    '(font-lock-comment-face ((t (:foreground "#9992b1" :italic t ))))
    '(font-lock-constant-face ((t (:foreground "#eb939a" ))))
    '(font-lock-doc-face ((t (:foreground "#3ec5ba" ))))
    '(font-lock-function-name-face ((t (:foreground "#ff92ae" ))))
    '(font-lock-keyword-face ((t (:foreground "#4f9aed" :bold t ))))
    '(font-lock-negation-char-face ((t (:foreground "#4f9aed" :bold t ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#ba5eb3" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#ba5eb3" ))))
    '(font-lock-string-face ((t (:foreground "#3ec5ba" ))))
    '(font-lock-type-face ((t (:foreground "#f95b80" ))))
    '(font-lock-variable-name-face ((t (:foreground "#25b4df" ))))
    '(font-lock-warning-face ((t (:foreground "#f8f8f8" :background "#a7240f" ))))
    '(fringe ((t (:background "#212121" ))))
    '(highlight ((t (:background "#6d7a7f" ))))
    '(hl-line ((t (:background "#212121" ))))
    '(isearch ((t (:foreground "#f8f8f8" :background "#c4b14a" ))))
    '(isearch-fail ((t (:foreground "#f8f8f8" :background "#d03620" ))))
    '(iswitchb-current-match ((t (:foreground "#f8f8f8" :background "#41a83e" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#f8f8f8" :background "#d03620" ))))
    '(iswitchb-single-match ((t (:foreground "#f8f8f8" :background "#41a83e" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#f8f8f8" :background "#c4b14a" ))))
    '(linum ((t (:background "#212121" ))))
    '(match ((t (:foreground "#f8f8f8" :background "#41a83e" ))))
    '(menu ((t (:foreground "#ae2ca9" :background "#151515" ))))
    '(minibuffer-prompt ((t (:foreground "#85d9da" ))))
    '(mode-line ((t (:background "#6d7a7f" ))))
    '(mode-line-buffer-id ((t (:foreground "#f169b6" :bold t ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#212121" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#9992b1" :italic t ))))
    '(org-column ((t (:background "#212121" ))))
    '(org-column-title ((t (:background "#212121" ))))
    '(org-done ((t (:foreground "#f8f8f8" :background "#41a83e" ))))
    '(org-hide ((t (:foreground "#151515" ))))
    '(org-todo ((t (:foreground "#f8f8f8" :background "#a7240f" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f8" :background "#a7240f" ))))
    '(org-warning ((t (:foreground "#f8f8f8" :background "#a7240f" ))))
    '(region ((t (:background "#6d7a7f" ))))
    '(secondary-selection ((t (:background "#6d7a7f" ))))
    '(show-paren-match-face ((t (:background "#6d7a7f" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f8" :background "#a7240f" ))))
)

(provide-theme 'toy-machine)
