;; default {'caret': '#00FFFF', 'foreground': '#F8F8F8', 'selection': '#007DFF80', 'invisibles': '#CAE2FB3D', 'lineHighlight': '#00000000', 'background': '#090A1BF2'}
;; comment {'foreground': '#C050C2', 'fontStyle': 'italic', 'background': '#000000'}
;; constant {'foreground': '#0A9CFF', 'fontStyle': ''}
;; entity {'foreground': '#6FD3FF', 'fontStyle': ''}
;; keyword {'foreground': '#FF3854', 'fontStyle': ''}
;; storage {'foreground': '#99CF50', 'fontStyle': ''}
;; string {'foreground': '#8FFF58', 'fontStyle': '', 'background': '#102622FA'}
;; support {'foreground': '#00FFBC', 'fontStyle': ''}
;; variable {'foreground': '#588AFF', 'fontStyle': ''}
;; invalid.deprecated {'foreground': '#FD5FF1', 'fontStyle': 'italic underline'}
;; invalid.illegal {'foreground': '#FD5FF1', 'background': '#562D56BF'}
;; default {}
;; text source {'fontStyle': '', 'background': '#B1B3BA08'}
;; entity.other.inherited-class {'foreground': '#FF9749', 'fontStyle': 'italic'}
;; string.quoted source {'foreground': '#D972DE', 'fontStyle': ''}
;; string constant {'foreground': '#D972DE'}
;; string.regexp {'foreground': '#E9C062'}
;; string.regexp constant.character.escape, string.regexp source.ruby.embedded, string.regexp string.regexp.arbitrary-repitition {'foreground': '#CF7D34'}
;; string variable {'foreground': '#8A9A95'}
;; support.function {'foreground': '#F1D950', 'fontStyle': ''}
;; support.constant {'foreground': '#CF6A4C', 'fontStyle': ''}
;; meta.preprocessor.c {'foreground': '#8996A8'}
;; meta.preprocessor.c keyword {'foreground': '#AFC4DB'}
;; entity.name.type {'fontStyle': 'underline'}
;; meta.cast {'foreground': '#676767', 'fontStyle': 'italic'}
;; meta.sgml.html meta.doctype, meta.sgml.html meta.doctype entity, meta.sgml.html meta.doctype string, meta.xml-processing, meta.xml-processing entity, meta.xml-processing string {'foreground': '#494949'}
;; meta.tag, meta.tag entity {'foreground': '#45C1EA'}
;; source entity.name.tag, source entity.other.attribute-name, meta.tag.inline, meta.tag.inline entity {'foreground': '#45C1EA', 'fontStyle': ''}
;; entity.name.tag.namespace, entity.other.attribute-name.namespace {'foreground': '#E18964', 'fontStyle': ''}
;; meta.selector.css entity.name.tag {'foreground': '#8B98AB', 'fontStyle': ''}
;; meta.selector.css entity.other.attribute-name.tag.pseudo-class {'foreground': '#8B98AB', 'fontStyle': ''}
;; meta.selector.css entity.other.attribute-name.id {'foreground': '#8B98AB', 'fontStyle': ''}
;; meta.selector.css entity.other.attribute-name.class {'foreground': '#8B98AB', 'fontStyle': ''}
;; support.type.property-name.css {'foreground': '#C5AF75', 'fontStyle': ''}
;; meta.property-group support.constant.property-value.css, meta.property-value support.constant.property-value.css {'foreground': '#F9EE98', 'fontStyle': ''}
;; meta.preprocessor.at-rule keyword.control.at-rule {'foreground': '#8693A5', 'fontStyle': ''}
;; meta.property-value support.constant.named-color.css, meta.property-value constant {'foreground': '#FF6A4B', 'fontStyle': ''}
;; meta.constructor.argument.css {'foreground': '#8F9D6A'}
;; meta.diff, meta.diff.header {'foreground': '#F8F8F8', 'fontStyle': 'italic', 'background': '#00184F'}
;; markup.deleted {'foreground': '#F8F8F8', 'background': '#74052A'}
;; markup.changed {'foreground': '#F8F8F8', 'fontStyle': '', 'background': '#A96A06'}
;; markup.inserted {'foreground': '#F8F8F8', 'background': '#008A41'}
;; default {}
;; markup.italic {'foreground': '#E9C062', 'fontStyle': 'italic'}
;; markup.bold {'foreground': '#E9C062', 'fontStyle': ''}
;; markup.underline {'foreground': '#E18964', 'fontStyle': 'underline'}
;; markup.quote {'foreground': '#E1D4B9', 'fontStyle': 'italic', 'background': '#FEE09C12'}
;; markup.heading, markup.heading entity {'foreground': '#FEDCC5', 'fontStyle': '', 'background': '#632D04'}
;; markup.list {'foreground': '#E1D4B9'}
;; markup.raw {'foreground': '#578BB3', 'fontStyle': '', 'background': '#B1B3BA08'}
;; markup comment {'foreground': '#F67B37', 'fontStyle': 'italic'}
;; meta.separator {'foreground': '#60A633', 'background': '#242424'}
;; meta.line.entry.logfile, meta.line.exit.logfile {'background': '#EEEEEE29'}
;; meta.line.error.logfile {'background': '#751012'}
(deftheme made-of-code
  "Made of Code emacs theme ported from the TextMate theme.")
(custom-theme-set-faces
  'made-of-code
    '(trailing-whitespace ((t (:background "#373d50"))))
    '(whitespace-trailing ((t (:background "#373d50"))))

    '(border ((t (:background "#09091a" ))))
    '(css-property ((t (:foreground "#c5af75" ))))
    '(css-proprietary-property ((t (:foreground "#c5af75" ))))
    '(css-selector ((t (:foreground "#8b98ab" ))))
    '(cursor ((t (:background "#00ffff" ))))
    '(default ((t (:foreground "#f8f8f8" :background "#09091a" ))))
    '(diff-added ((t (:foreground "#f8f8f8" :background "#008a41" ))))
    '(diff-changed ((t (:foreground "#f8f8f8" :background "#a96a06" ))))
    '(diff-header ((t (:foreground "#f8f8f8" :italic t :background "#00184f" ))))
    '(diff-hunk-header ((t (:foreground "#f8f8f8" :italic t :background "#00184f" ))))
    '(diff-removed ((t (:foreground "#f8f8f8" :background "#74052a" ))))
    '(font-lock-builtin-face ((t (:foreground "#f1d950" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#c050c2" :italic t :background "#000000" ))))
    '(font-lock-comment-face ((t (:foreground "#c050c2" :italic t :background "#000000" ))))
    '(font-lock-constant-face ((t (:foreground "#cf6a4c" ))))
    '(font-lock-doc-face ((t (:foreground "#d972de" ))))
    '(font-lock-function-name-face ((t (:foreground "#f1d950" ))))
    '(font-lock-keyword-face ((t (:foreground "#ff3854" ))))
    '(font-lock-negation-char-face ((t (:foreground "#ff3854" ))))
    '(font-lock-preprocessor-face ((t (:foreground "#8996a8" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#cf7d34" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#cf7d34" ))))
    '(font-lock-string-face ((t (:foreground "#d972de" ))))
    '(font-lock-type-face ((t (:foreground "#99cf50" ))))
    '(font-lock-variable-name-face ((t (:foreground "#588aff" ))))
    '(font-lock-warning-face ((t (:foreground "#fd5ff1" :background "#432447" ))))
    '(fringe ((t (:background "#09091a" ))))
    '(highlight ((t (:background "#04438d" ))))
    '(hl-line ((t (:background "#09091a" ))))
    '(isearch ((t (:foreground "#f8f8f8" :background "#a96a06" ))))
    '(isearch-fail ((t (:foreground "#f8f8f8" :background "#74052a" ))))
    '(iswitchb-current-match ((t (:foreground "#f8f8f8" :background "#008a41" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#f8f8f8" :background "#74052a" ))))
    '(iswitchb-single-match ((t (:foreground "#f8f8f8" :background "#008a41" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#f8f8f8" :background "#a96a06" ))))
    '(linum ((t (:background "#09091a" ))))
    '(match ((t (:foreground "#f8f8f8" :background "#008a41" ))))
    '(menu ((t (:foreground "#f8f8f8" :background "#09091a" ))))
    '(minibuffer-prompt ((t (:foreground "#45c1ea" ))))
    '(mode-line ((t (:foreground "#60a633" :background "#242424" ))))
    '(mode-line-buffer-id ((t (:foreground "#6fd3ff" ))))
    '(mode-line-emphasis ((t (:foreground "#e9c062" ))))
    '(mode-line-highlight ((t (:foreground "#e9c062" :italic t ))))
    '(mode-line-inactive ((t (:background "#04438d" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#c050c2" :italic t :background "#000000" ))))
    '(org-column ((t (:background "#09091a" ))))
    '(org-column-title ((t (:background "#09091a" ))))
    '(org-done ((t (:foreground "#f8f8f8" :background "#008a41" ))))
    '(org-hide ((t (:foreground "#09091a" ))))
    '(org-todo ((t (:foreground "#fd5ff1" :background "#432447" ))))
    '(org-upcoming-deadline ((t (:foreground "#fd5ff1" :italic t :underline t ))))
    '(org-warning ((t (:foreground "#fd5ff1" :background "#432447" ))))
    '(region ((t (:background "#04438d" ))))
    '(secondary-selection ((t (:background "#04438d" ))))
    '(show-paren-match-face ((t (:background "#04438d" ))))
    '(show-paren-mismatch-face ((t (:foreground "#fd5ff1" :background "#432447" ))))

    '(rainbow-delimiters-depth-1-face ((t (:foreground "#f8f8f8"))))
    '(rainbow-delimiters-depth-2-face ((t (:foreground "#0a9cff"))))
    '(rainbow-delimiters-depth-3-face ((t (:foreground "#8fff58"))))
    '(rainbow-delimiters-depth-4-face ((t (:foreground "#fd5ff1"))))
    '(rainbow-delimiters-depth-5-face ((t (:foreground "#00ffff"))))
    '(rainbow-delimiters-depth-6-face ((t (:foreground "#00FFBC"))))
    '(rainbow-delimiters-depth-7-face ((t (:foreground "#c050c2"))))
    '(rainbow-delimiters-depth-8-face ((t (:foreground "#6fd3ff"))))
    '(rainbow-delimiters-depth-9-face ((t (:foreground "#99cf50"))))
)

(provide-theme 'made-of-code)
