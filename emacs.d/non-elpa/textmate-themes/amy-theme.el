;; default {'caret': '#7070FF', 'foreground': '#D0D0FF', 'selection': '#80000080', 'invisibles': '#BFBFBF', 'lineHighlight': '#80000040', 'background': '#200020'}
;; comment.block {'foreground': '#404080', 'fontStyle': 'italic', 'background': '#200020'}
;; string {'foreground': '#999999'}
;; constant.language {'foreground': '#707090'}
;; constant.numeric {'foreground': '#7090B0'}
;; constant.numeric.integer.int32 {'fontStyle': 'bold'}
;; constant.numeric.integer.int64 {'fontStyle': 'italic'}
;; constant.numeric.integer.nativeint {'fontStyle': 'bold italic'}
;; constant.numeric.floating-point.ocaml {'fontStyle': 'underline'}
;; constant.character {'foreground': '#666666', 'fontStyle': ''}
;; constant.language.boolean {'foreground': '#8080A0'}
;; constant.language {}
;; constant.other {}
;; variable.language, variable.other {'foreground': '#008080', 'fontStyle': ''}
;; keyword {'foreground': '#A080FF'}
;; keyword.operator {'foreground': '#A0A0FF'}
;; keyword.other.decorator {'foreground': '#D0D0FF'}
;; keyword.operator.infix.floating-point.ocaml {'fontStyle': 'underline'}
;; keyword.operator.prefix.floating-point.ocaml {'fontStyle': 'underline'}
;; keyword.other.directive {'foreground': '#C080C0', 'fontStyle': ''}
;; keyword.other.directive.line-number {'foreground': '#C080C0', 'fontStyle': 'underline'}
;; keyword.control {'foreground': '#80A0FF'}
;; storage {'foreground': '#B0FFF0'}
;; entity.name.type.variant {'foreground': '#60B0FF'}
;; storage.type.variant.polymorphic, entity.name.type.variant.polymorphic {'foreground': '#60B0FF', 'fontStyle': 'italic'}
;; entity.name.type.module {'foreground': '#B000B0'}
;; entity.name.type.module-type.ocaml {'foreground': '#B000B0', 'fontStyle': 'underline'}
;; support.other {'foreground': '#A00050'}
;; entity.name.type.class {'foreground': '#70E080'}
;; entity.name.type.class-type {'foreground': '#70E0A0', 'fontStyle': ''}
;; entity.other.inherited-class {}
;; entity.name.function {'foreground': '#50A0A0'}
;; variable.parameter {'foreground': '#80B0B0'}
;; entity.name.type.token {'foreground': '#3080A0', 'fontStyle': ''}
;; entity.name.type.token.reference {'foreground': '#3CB0D0', 'fontStyle': ''}
;; entity.name.function.non-terminal {'foreground': '#90E0E0'}
;; entity.name.function.non-terminal.reference {'foreground': '#C0F0F0'}
;; entity.name.tag {'foreground': '#009090'}
;; entity.other.attribute-name {}
;; default {'background': '#200020'}
;; support.constant {'background': '#200020'}
;; support.type, support.class {}
;; support.other.variable {}
;; invalid.illegal {'foreground': '#400080', 'fontStyle': 'bold', 'background': '#FFFF00'}
;; invalid.deprecated {'foreground': '#200020', 'background': '#CC66FF'}
;; source.camlp4.embedded {'background': '#40008054'}
;; source.camlp4.embedded.parser.ocaml {'fontStyle': ''}
;; punctuation {'foreground': '#805080'}
(deftheme amy
  "Amy emacs theme autoconverted from the textMate theme by William D. Neumann")
(custom-theme-set-faces
  'amy
    '(trailing-whitespace ((t (:background "#bfbfbf"))))
    '(whitespace-trailing ((t (:background "#bfbfbf"))))

    '(border ((t (:background "#380018" ))))
    '(css-property ((t ())))
    '(css-proprietary-property ((t ())))
    '(cursor ((t (:background "#7070ff" ))))
    '(default ((t (:foreground "#d0d0ff" :background "#200020" ))))
    '(font-lock-constant-face ((t (:background "#200020" ))))
    '(font-lock-doc-face ((t (:foreground "#999999" ))))
    '(font-lock-keyword-face ((t (:foreground "#a080ff" ))))
    '(font-lock-negation-char-face ((t (:foreground "#a0a0ff" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#999999" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#999999" ))))
    '(font-lock-string-face ((t (:foreground "#999999" ))))
    '(font-lock-type-face ((t (:foreground "#b0fff0" ))))
    '(font-lock-variable-name-face ((t (:foreground "#008080" ))))
    '(font-lock-warning-face ((t (:foreground "#400080" :bold t :background "#ffff00" ))))
    '(fringe ((t (:background "#380018" ))))
    '(highlight ((t (:background "#500010" ))))
    '(hl-line ((t (:background "#380018" ))))
    '(linum ((t (:background "#380018" ))))
    '(menu ((t (:foreground "#d0d0ff" :background "#200020" ))))
    '(mode-line ((t (:background "#500010" ))))
    '(mode-line-buffer-id ((t (:foreground "#009090" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#380018" ))))
    '(org-column ((t (:background "#380018" ))))
    '(org-column-title ((t (:background "#380018" ))))
    '(org-hide ((t (:foreground "#200020" ))))
    '(org-todo ((t (:foreground "#400080" :bold t :background "#ffff00" ))))
    '(org-upcoming-deadline ((t (:foreground "#200020" :background "#cc66ff" ))))
    '(org-warning ((t (:foreground "#400080" :bold t :background "#ffff00" ))))
    '(region ((t (:background "#500010" ))))
    '(secondary-selection ((t (:background "#500010" ))))
    '(show-paren-match-face ((t (:background "#500010" ))))
    '(show-paren-mismatch-face ((t (:foreground "#400080" :bold t :background "#ffff00" ))))
)

(provide-theme 'amy)
