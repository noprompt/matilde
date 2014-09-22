;; default {'caret': '#A7A7A7', 'foreground': '#BAAE9E', 'selection': '#DDF0FF33', 'invisibles': '#FFFFFF40', 'lineHighlight': '#FFFFFF08', 'background': '#28211C'}
;; comment {'foreground': '#666666', 'fontStyle': 'italic'}
;; constant {'foreground': '#CF6A4C'}
;; entity {'foreground': '#937121', 'fontStyle': ''}
;; keyword {'foreground': '#5EA6EA', 'fontStyle': ''}
;; storage {'foreground': '#F9EE98', 'fontStyle': ''}
;; string {'foreground': '#54BE0D', 'fontStyle': ''}
;; support {'foreground': '#9B859D', 'fontStyle': ''}
;; variable {'foreground': '#7587A6'}
;; invalid.deprecated {'foreground': '#D2A8A1', 'fontStyle': 'italic underline'}
;; invalid.illegal {'foreground': '#F8F8F8', 'background': '#562D56BF'}
;; default {}
;; text source {'background': '#B0B3BA14'}
;; text.html.ruby source {'background': '#B1B3BA21'}
;; entity.other.inherited-class {'foreground': '#9B5C2E', 'fontStyle': 'italic'}
;; string source {'foreground': '#DAEFA3', 'fontStyle': ''}
;; string constant {'foreground': '#DDF2A4'}
;; string.regexp {'foreground': '#E9C062', 'fontStyle': ''}
;; string.regexp constant.character.escape, string.regexp source.ruby.embedded, string.regexp string.regexp.arbitrary-repitition {'foreground': '#CF7D34'}
;; string variable {'foreground': '#8A9A95'}
;; support.function {'foreground': '#DAD085', 'fontStyle': ''}
;; support.constant {'foreground': '#CF6A4C', 'fontStyle': ''}
;; meta.preprocessor.c {'foreground': '#8996A8'}
;; meta.preprocessor.c keyword {'foreground': '#AFC4DB'}
;; meta.tag.sgml.doctype, meta.tag.sgml.doctype entity, meta.tag.sgml.doctype string, meta.tag.preprocessor.xml, meta.tag.preprocessor.xml entity, meta.tag.preprocessor.xml string {'foreground': '#5EA6EA'}
;; declaration.tag, declaration.tag entity, meta.tag, meta.tag entity {'foreground': '#AC885B'}
;; meta.selector.css entity.name.tag {'foreground': '#CDA869', 'fontStyle': ''}
;; meta.selector.css entity.other.attribute-name.tag.pseudo-class {'foreground': '#8F9D6A'}
;; meta.selector.css entity.other.attribute-name.id {'foreground': '#8B98AB'}
;; meta.selector.css entity.other.attribute-name.class {'foreground': '#9B703F'}
;; support.type.property-name.css {'foreground': '#C5AF75'}
;; meta.property-group support.constant.property-value.css, meta.property-value support.constant.property-value.css {'foreground': '#F9EE98'}
;; meta.preprocessor.at-rule keyword.control.at-rule {'foreground': '#8693A5'}
;; meta.property-value support.constant.named-color.css, meta.property-value constant {'foreground': '#CA7840'}
;; meta.constructor.argument.css {'foreground': '#8F9D6A'}
;; meta.diff, meta.diff.header, meta.separator {'foreground': '#F8F8F8', 'fontStyle': 'italic', 'background': '#0E2231'}
;; markup.deleted {'foreground': '#F8F8F8', 'background': '#420E09'}
;; markup.changed {'foreground': '#F8F8F8', 'background': '#4A410D'}
;; markup.inserted {'foreground': '#F8F8F8', 'background': '#253B22'}
;; markup.list {'foreground': '#F9EE98'}
;; markup.heading {'foreground': '#CF6A4C'}
;; entity.name.tag {'foreground': '#5EA6EA'}
(deftheme bespin
  "Bespin emacs theme autoconverted from the textMate theme by Michael Diolosa")
(custom-theme-set-faces
  'bespin
    '(trailing-whitespace ((t (:background "#5e5955"))))
    '(whitespace-trailing ((t (:background "#5e5955"))))

    '(border ((t (:background "#2f2823" ))))
    '(css-property ((t (:foreground "#c5af75" ))))
    '(css-proprietary-property ((t (:foreground "#c5af75" ))))
    '(css-selector ((t (:foreground "#8b98ab" ))))
    '(cursor ((t (:background "#a7a7a7" ))))
    '(default ((t (:foreground "#baae9e" :background "#28211c" ))))
    '(diff-added ((t (:foreground "#f8f8f8" :background "#253b22" ))))
    '(diff-changed ((t (:foreground "#f8f8f8" :background "#4a410d" ))))
    '(diff-header ((t (:foreground "#f8f8f8" :italic t :background "#0e2231" ))))
    '(diff-hunk-header ((t (:foreground "#f8f8f8" :italic t :background "#0e2231" ))))
    '(diff-removed ((t (:foreground "#f8f8f8" :background "#420e09" ))))
    '(font-lock-builtin-face ((t (:foreground "#dad085" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#666666" :italic t ))))
    '(font-lock-comment-face ((t (:foreground "#666666" :italic t ))))
    '(font-lock-constant-face ((t (:foreground "#cf6a4c" ))))
    '(font-lock-doc-face ((t (:foreground "#ddf2a4" ))))
    '(font-lock-function-name-face ((t (:foreground "#dad085" ))))
    '(font-lock-keyword-face ((t (:foreground "#5ea6ea" ))))
    '(font-lock-negation-char-face ((t (:foreground "#5ea6ea" ))))
    '(font-lock-preprocessor-face ((t (:foreground "#8996a8" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#cf7d34" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#cf7d34" ))))
    '(font-lock-string-face ((t (:foreground "#ddf2a4" ))))
    '(font-lock-type-face ((t (:foreground "#f9ee98" ))))
    '(font-lock-variable-name-face ((t (:foreground "#7587a6" ))))
    '(font-lock-warning-face ((t (:foreground "#f8f8f8" :background "#4a2a47" ))))
    '(fringe ((t (:background "#2f2823" ))))
    '(highlight ((t (:background "#4c4a49" ))))
    '(hl-line ((t (:background "#2f2823" ))))
    '(isearch ((t (:foreground "#f8f8f8" :background "#4a410d" ))))
    '(isearch-fail ((t (:foreground "#f8f8f8" :background "#420e09" ))))
    '(iswitchb-current-match ((t (:foreground "#f8f8f8" :background "#253b22" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#f8f8f8" :background "#420e09" ))))
    '(iswitchb-single-match ((t (:foreground "#f8f8f8" :background "#253b22" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#f8f8f8" :background "#4a410d" ))))
    '(linum ((t (:background "#2f2823" ))))
    '(match ((t (:foreground "#f8f8f8" :background "#253b22" ))))
    '(menu ((t (:foreground "#baae9e" :background "#28211c" ))))
    '(minibuffer-prompt ((t (:foreground "#ac885b" ))))
    '(mode-line ((t (:foreground "#f8f8f8" :italic t :background "#0e2231" ))))
    '(mode-line-buffer-id ((t (:foreground "#5ea6ea" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#4c4a49" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#666666" :italic t ))))
    '(org-column ((t (:background "#2f2823" ))))
    '(org-column-title ((t (:background "#2f2823" ))))
    '(org-done ((t (:foreground "#f8f8f8" :background "#253b22" ))))
    '(org-hide ((t (:foreground "#28211c" ))))
    '(org-todo ((t (:foreground "#f8f8f8" :background "#4a2a47" ))))
    '(org-upcoming-deadline ((t (:foreground "#d2a8a1" :italic t :underline t ))))
    '(org-warning ((t (:foreground "#f8f8f8" :background "#4a2a47" ))))
    '(region ((t (:background "#4c4a49" ))))
    '(secondary-selection ((t (:background "#4c4a49" ))))
    '(show-paren-match-face ((t (:background "#4c4a49" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f8" :background "#4a2a47" ))))
)

(provide-theme 'bespin)
