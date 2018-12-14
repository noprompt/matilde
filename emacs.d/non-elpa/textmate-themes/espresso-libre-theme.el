;; default {'caret': '#889AFF', 'foreground': '#BDAE9D', 'selection': '#C3DCFF', 'invisibles': '#BFBFBF', 'lineHighlight': '#3A312C', 'background': '#2A211C'}
;; comment {'foreground': '#0066FF', 'fontStyle': 'italic'}
;; keyword, storage {'foreground': '#43A8ED', 'fontStyle': 'bold'}
;; constant.numeric {'foreground': '#44AA43', 'fontStyle': ''}
;; constant {'foreground': '#C5656B', 'fontStyle': 'bold'}
;; constant.language {'foreground': '#585CF6', 'fontStyle': 'bold'}
;; variable.language, variable.other {'foreground': '#318495', 'fontStyle': ''}
;; string {'foreground': '#049B0A', 'fontStyle': ''}
;; constant.character.escape, string source {'foreground': '#2FE420', 'fontStyle': ''}
;; meta.preprocessor {'foreground': '#1A921C', 'fontStyle': ''}
;; keyword.control.import {'foreground': '#9AFF87', 'fontStyle': 'bold'}
;; entity.name.function, keyword.other.name-of-parameter.objc {'foreground': '#FF9358', 'fontStyle': 'bold'}
;; entity.name.type {'fontStyle': 'underline'}
;; entity.other.inherited-class {'fontStyle': 'italic'}
;; variable.parameter {'fontStyle': 'italic'}
;; storage.type.method {'foreground': '#8B8E9C', 'fontStyle': ''}
;; meta.section entity.name.section, declaration.section entity.name.section {'fontStyle': 'italic'}
;; support.function {'foreground': '#7290D9', 'fontStyle': 'bold'}
;; support.class, support.type {'foreground': '#6D79DE', 'fontStyle': 'bold'}
;; support.constant {'foreground': '#00AF0E', 'fontStyle': 'bold'}
;; support.variable {'foreground': '#2F5FE0', 'fontStyle': 'bold'}
;; keyword.operator.js {'foreground': '#687687'}
;; invalid {'foreground': '#FFFFFF', 'background': '#990000'}
;; invalid.deprecated.trailing-whitespace {'background': '#FFD0D0'}
;; text source, string.unquoted {'background': '#F5AA7730'}
;; meta.tag.preprocessor.xml {'foreground': '#8F7E65', 'fontStyle': ''}
;; meta.tag.sgml.doctype {'foreground': '#888888', 'fontStyle': ''}
;; string.quoted.docinfo.doctype.DTD {'fontStyle': 'italic'}
;; meta.tag, declaration.tag {'foreground': '#43A8ED', 'fontStyle': ''}
;; entity.name.tag {'fontStyle': 'bold'}
;; entity.other.attribute-name {'fontStyle': 'italic'}
(deftheme espresso-libre
  "Espresso Libre emacs theme autoconverted from the textMate theme by Chris Thomas")
(custom-theme-set-faces
  'espresso-libre
    '(trailing-whitespace ((t (:background "#bfbfbf"))))
    '(whitespace-trailing ((t (:background "#bfbfbf"))))

    '(border ((t (:background "#3a312c" ))))
    '(css-property ((t (:foreground "#6d79de" :bold t ))))
    '(css-proprietary-property ((t (:foreground "#6d79de" :bold t ))))
    '(cursor ((t (:background "#889aff" ))))
    '(default ((t (:foreground "#bdae9d" :background "#2a211c" ))))
    '(font-lock-builtin-face ((t (:foreground "#7290d9" :bold t ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#0066ff" :italic t ))))
    '(font-lock-comment-face ((t (:foreground "#0066ff" :italic t ))))
    '(font-lock-constant-face ((t (:foreground "#00af0e" :bold t ))))
    '(font-lock-doc-face ((t (:foreground "#049b0a" ))))
    '(font-lock-function-name-face ((t (:foreground "#7290d9" :bold t ))))
    '(font-lock-keyword-face ((t (:foreground "#43a8ed" :bold t ))))
    '(font-lock-negation-char-face ((t (:foreground "#43a8ed" :bold t ))))
    '(font-lock-preprocessor-face ((t (:foreground "#1a921c" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#049b0a" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#049b0a" ))))
    '(font-lock-string-face ((t (:foreground "#049b0a" ))))
    '(font-lock-type-face ((t (:foreground "#43a8ed" :bold t ))))
    '(font-lock-variable-name-face ((t (:foreground "#318495" ))))
    '(font-lock-warning-face ((t (:foreground "#ffffff" :background "#990000" ))))
    '(fringe ((t (:background "#3a312c" ))))
    '(highlight ((t (:background "#c3dcff" ))))
    '(hl-line ((t (:background "#3a312c" ))))
    '(linum ((t (:background "#3a312c" ))))
    '(menu ((t (:foreground "#bdae9d" :background "#2a211c" ))))
    '(minibuffer-prompt ((t (:foreground "#43a8ed" ))))
    '(mode-line ((t (:background "#c3dcff" ))))
    '(mode-line-buffer-id ((t (:bold t ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#3a312c" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#0066ff" :italic t ))))
    '(org-column ((t (:background "#3a312c" ))))
    '(org-column-title ((t (:background "#3a312c" ))))
    '(org-hide ((t (:foreground "#2a211c" ))))
    '(org-todo ((t (:foreground "#ffffff" :background "#990000" ))))
    '(org-upcoming-deadline ((t (:foreground "#ffffff" :background "#990000" ))))
    '(org-warning ((t (:foreground "#ffffff" :background "#990000" ))))
    '(region ((t (:background "#c3dcff" ))))
    '(secondary-selection ((t (:background "#c3dcff" ))))
    '(show-paren-match-face ((t (:background "#c3dcff" ))))
    '(show-paren-mismatch-face ((t (:foreground "#ffffff" :background "#990000" ))))
)

(provide-theme 'espresso-libre)
