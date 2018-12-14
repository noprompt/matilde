;; default {'caret': '#FFFFFFA6', 'foreground': '#F8F8F8', 'selection': '#2500FF85', 'invisibles': '#FFFFFF40', 'lineHighlight': '#3C1EFF4D', 'background': '#0A001FE3'}
;; comment {'foreground': '#6900A1', 'fontStyle': ''}
;; constant {'foreground': '#FFD500', 'fontStyle': ''}
;; entity {'foreground': '#845DC4', 'fontStyle': ''}
;; keyword {'foreground': '#599EFF', 'fontStyle': ''}
;; storage {'foreground': '#75AFFF', 'fontStyle': ''}
;; string, meta.verbatim {'foreground': '#00F13A', 'fontStyle': ''}
;; support {'foreground': '#7678E2', 'fontStyle': ''}
;; variable {'foreground': '#99B2FF', 'fontStyle': ''}
;; invalid.deprecated {'foreground': '#AB2A1D', 'fontStyle': 'italic'}
;; invalid.illegal {'foreground': '#F8F8F8', 'background': '#9D1E15'}
;; entity.other.inherited-class {'foreground': '#9149C4', 'fontStyle': 'italic'}
;; string constant.other.placeholder {'foreground': '#FF6400', 'fontStyle': ''}
;; meta.function-call.py {'foreground': '#BECDE6', 'fontStyle': ''}
;; meta.tag, meta.tag entity {'foreground': '#8860FF'}
;; entity.name.section {'foreground': '#FFFFFF', 'fontStyle': ''}
;; keyword.type.variant {'foreground': '#D5E0F3'}
;; source.ocaml keyword.operator.symbol {'foreground': '#F8F8F8'}
;; source.ocaml keyword.operator.symbol.infix {'foreground': '#8DA6CE', 'fontStyle': ''}
;; source.ocaml keyword.operator.symbol.prefix {'foreground': '#8DA6CE', 'fontStyle': ''}
;; source.ocaml keyword.operator.symbol.infix.floating-point {'fontStyle': 'underline'}
;; source.ocaml keyword.operator.symbol.prefix.floating-point {'fontStyle': 'underline'}
;; source.ocaml constant.numeric.floating-point {'fontStyle': 'underline'}
;; text.tex.latex meta.function.environment {'background': '#FFFFFF08'}
;; text.tex.latex meta.function.environment meta.function.environment {'background': '#7A96FA08'}
;; text.tex.latex support.function {'foreground': '#FBDE2D', 'fontStyle': ''}
;; source.plist string.unquoted, source.plist keyword.operator {'foreground': '#FFFFFF'}
(deftheme midnight
  "Midnight emacs theme autoconverted from the textMate theme by Domenico Carbotta")
(custom-theme-set-faces
  'midnight
    '(trailing-whitespace ((t (:background "#474055"))))
    '(whitespace-trailing ((t (:background "#474055"))))

    '(border ((t (:background "#180961" ))))
    '(css-property ((t (:foreground "#7678e2" ))))
    '(css-proprietary-property ((t (:foreground "#7678e2" ))))
    '(cursor ((t (:background "#a9a6b0" ))))
    '(default ((t (:foreground "#f8f8f8" :background "#09001c" ))))
    '(font-lock-builtin-face ((t (:foreground "#7678e2" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#6900a1" ))))
    '(font-lock-comment-face ((t (:foreground "#6900a1" ))))
    '(font-lock-constant-face ((t (:foreground "#7678e2" ))))
    '(font-lock-doc-face ((t (:foreground "#00f13a" ))))
    '(font-lock-function-name-face ((t (:foreground "#7678e2" ))))
    '(font-lock-keyword-face ((t (:foreground "#599eff" ))))
    '(font-lock-negation-char-face ((t (:foreground "#599eff" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#00f13a" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#00f13a" ))))
    '(font-lock-string-face ((t (:foreground "#00f13a" ))))
    '(font-lock-type-face ((t (:foreground "#75afff" ))))
    '(font-lock-variable-name-face ((t (:foreground "#99b2ff" ))))
    '(font-lock-warning-face ((t (:foreground "#f8f8f8" :background "#9d1e15" ))))
    '(fringe ((t (:background "#180961" ))))
    '(highlight ((t (:background "#180092" ))))
    '(hl-line ((t (:background "#180961" ))))
    '(linum ((t (:background "#180961" ))))
    '(menu ((t (:foreground "#f8f8f8" :background "#09001c" ))))
    '(minibuffer-prompt ((t (:foreground "#8860ff" ))))
    '(mode-line ((t (:background "#180092" ))))
    '(mode-line-buffer-id ((t (:foreground "#845dc4" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#180961" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#6900a1" ))))
    '(org-column ((t (:background "#180961" ))))
    '(org-column-title ((t (:background "#180961" ))))
    '(org-hide ((t (:foreground "#09001c" ))))
    '(org-todo ((t (:foreground "#f8f8f8" :background "#9d1e15" ))))
    '(org-upcoming-deadline ((t (:foreground "#ab2a1d" :italic t ))))
    '(org-warning ((t (:foreground "#f8f8f8" :background "#9d1e15" ))))
    '(region ((t (:background "#180092" ))))
    '(secondary-selection ((t (:background "#180092" ))))
    '(show-paren-match-face ((t (:background "#180092" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f8" :background "#9d1e15" ))))
)

(provide-theme 'midnight)
