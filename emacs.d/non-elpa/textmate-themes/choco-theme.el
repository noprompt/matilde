;; default {'caret': '#A7A7A7', 'foreground': '#C3BE98', 'selection': '#DDF0FF61', 'invisibles': '#FFFFFF40', 'lineHighlight': '#FF9C7521', 'background': '#180C0C'}
;; comment {'foreground': '#679D47', 'fontStyle': '', 'background': '#17201300'}
;; constant {'foreground': '#DA5659', 'fontStyle': ''}
;; entity {'foreground': '#6D4C2F', 'fontStyle': ''}
;; keyword {'foreground': '#B3935C', 'fontStyle': ''}
;; storage {'foreground': '#F1E694', 'fontStyle': ''}
;; string {'foreground': '#7CA563', 'fontStyle': ''}
;; support {'foreground': '#A8799C', 'fontStyle': ''}
;; variable {'foreground': '#7989A6'}
;; invalid.deprecated {'foreground': '#D2A8A1', 'fontStyle': 'italic underline'}
;; invalid.illegal {'foreground': '#F8F8F8', 'background': '#562D56BF'}
;; default {}
;; text source {'fontStyle': '', 'background': '#CDA26712'}
;; text.html.ruby source {'fontStyle': '', 'background': '#BA9C793B'}
;; entity.other.inherited-class {'foreground': '#9B5C2E', 'fontStyle': ''}
;; string source {'foreground': '#DAEFA3', 'fontStyle': ''}
;; string constant {'foreground': '#DDF2A4'}
;; string.regexp {'foreground': '#E9C062', 'fontStyle': ''}
;; string.regexp constant.character.escape, string.regexp source.ruby.embedded, string.regexp string.regexp.arbitrary-repitition {'foreground': '#CF7D34'}
;; string variable {'foreground': '#5E828D', 'fontStyle': ''}
;; support.function {'foreground': '#C29863', 'fontStyle': ''}
;; support.constant {'foreground': '#D77261', 'fontStyle': ''}
;; meta.preprocessor.c {'foreground': '#8996A8', 'fontStyle': ''}
;; meta.preprocessor.c keyword {'foreground': '#AFC4DB'}
;; meta.tag.sgml.doctype, meta.tag.sgml.doctype entity, meta.tag.sgml.doctype string, meta.tag.preprocessor.xml, meta.tag.preprocessor.xml entity, meta.tag.preprocessor.xml string {'foreground': '#494949', 'fontStyle': ''}
;; declaration.tag, declaration.tag entity, meta.tag, meta.tag entity {'foreground': '#9F785B', 'fontStyle': ''}
;; declaration.tag.inline, declaration.tag.inline entity, source entity.name.tag, source entity.other.attribute-name, meta.tag.inline, meta.tag.inline entity {'foreground': '#C8A573', 'fontStyle': ''}
;; meta.selector.css entity.name.tag {'foreground': '#B48F62', 'fontStyle': ''}
;; meta.selector.css entity.other.attribute-name.tag.pseudo-class {'foreground': '#999D63', 'fontStyle': ''}
;; meta.selector.css entity.other.attribute-name.id {'foreground': '#7690A4'}
;; meta.selector.css entity.other.attribute-name.class {'foreground': '#79A660'}
;; support.type.property-name.css {'foreground': '#AF977B'}
;; meta.property-group support.constant.property-value.css, meta.property-value support.constant.property-value.css {'foreground': '#D3CBA1'}
;; meta.preprocessor.at-rule keyword.control.at-rule {'foreground': '#8693A5'}
;; meta.property-value support.constant.named-color.css, meta.property-value constant {'foreground': '#C9584F', 'fontStyle': ''}
;; meta.constructor.argument.css {'foreground': '#8F9D6A', 'fontStyle': ''}
;; meta.diff, meta.diff.header, meta.separator {'foreground': '#F8F8F8', 'fontStyle': 'italic', 'background': '#0E2231'}
;; markup.deleted {'foreground': '#F8F8F8', 'background': '#420E09'}
;; markup.changed {'foreground': '#F8F8F8', 'background': '#4A410D'}
;; markup.inserted {'foreground': '#F8F8F8', 'background': '#253B22'}
;; markup.list {'foreground': '#F9EE98', 'fontStyle': ''}
;; markup.heading {'foreground': '#CF6A4C', 'fontStyle': ''}
(deftheme choco
  "choco emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'choco
    '(trailing-whitespace ((t (:background "#524949"))))
    '(whitespace-trailing ((t (:background "#524949"))))

    '(border ((t (:background "#361f1a" ))))
    '(css-property ((t (:foreground "#af977b" ))))
    '(css-proprietary-property ((t (:foreground "#af977b" ))))
    '(css-selector ((t (:foreground "#7690a4" ))))
    '(cursor ((t (:background "#a7a7a7" ))))
    '(default ((t (:foreground "#c3be98" :background "#180c0c" ))))
    '(diff-added ((t (:foreground "#f8f8f8" :background "#253b22" ))))
    '(diff-changed ((t (:foreground "#f8f8f8" :background "#4a410d" ))))
    '(diff-header ((t (:foreground "#f8f8f8" :italic t :background "#0e2231" ))))
    '(diff-hunk-header ((t (:foreground "#f8f8f8" :italic t :background "#0e2231" ))))
    '(diff-removed ((t (:foreground "#f8f8f8" :background "#420e09" ))))
    '(font-lock-builtin-face ((t (:foreground "#c29863" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#679d47" :background "#180c0c" ))))
    '(font-lock-comment-face ((t (:foreground "#679d47" :background "#180c0c" ))))
    '(font-lock-constant-face ((t (:foreground "#d77261" ))))
    '(font-lock-doc-face ((t (:foreground "#ddf2a4" ))))
    '(font-lock-function-name-face ((t (:foreground "#c29863" ))))
    '(font-lock-keyword-face ((t (:foreground "#b3935c" ))))
    '(font-lock-negation-char-face ((t (:foreground "#b3935c" ))))
    '(font-lock-preprocessor-face ((t (:foreground "#8996a8" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#cf7d34" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#cf7d34" ))))
    '(font-lock-string-face ((t (:foreground "#ddf2a4" ))))
    '(font-lock-type-face ((t (:foreground "#f1e694" ))))
    '(font-lock-variable-name-face ((t (:foreground "#7989a6" ))))
    '(font-lock-warning-face ((t (:foreground "#f8f8f8" :background "#462543" ))))
    '(fringe ((t (:background "#361f1a" ))))
    '(highlight ((t (:background "#636368" ))))
    '(hl-line ((t (:background "#361f1a" ))))
    '(isearch ((t (:foreground "#f8f8f8" :background "#4a410d" ))))
    '(isearch-fail ((t (:foreground "#f8f8f8" :background "#420e09" ))))
    '(iswitchb-current-match ((t (:foreground "#f8f8f8" :background "#253b22" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#f8f8f8" :background "#420e09" ))))
    '(iswitchb-single-match ((t (:foreground "#f8f8f8" :background "#253b22" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#f8f8f8" :background "#4a410d" ))))
    '(linum ((t (:background "#361f1a" ))))
    '(match ((t (:foreground "#f8f8f8" :background "#253b22" ))))
    '(menu ((t (:foreground "#c3be98" :background "#180c0c" ))))
    '(minibuffer-prompt ((t (:foreground "#9f785b" ))))
    '(mode-line ((t (:foreground "#f8f8f8" :italic t :background "#0e2231" ))))
    '(mode-line-buffer-id ((t (:foreground "#6d4c2f" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#636368" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#679d47" :background "#180c0c" ))))
    '(org-column ((t (:background "#361f1a" ))))
    '(org-column-title ((t (:background "#361f1a" ))))
    '(org-done ((t (:foreground "#f8f8f8" :background "#253b22" ))))
    '(org-hide ((t (:foreground "#180c0c" ))))
    '(org-todo ((t (:foreground "#f8f8f8" :background "#462543" ))))
    '(org-upcoming-deadline ((t (:foreground "#d2a8a1" :italic t :underline t ))))
    '(org-warning ((t (:foreground "#f8f8f8" :background "#462543" ))))
    '(region ((t (:background "#636368" ))))
    '(secondary-selection ((t (:background "#636368" ))))
    '(show-paren-match-face ((t (:background "#636368" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f8" :background "#462543" ))))
)

(provide-theme 'choco)
