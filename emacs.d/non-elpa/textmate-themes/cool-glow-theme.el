;; default {'caret': '#FFFFFFA6', 'foreground': '#E0E0E0', 'selection': '#122BBB', 'invisibles': '#FFFFFF42', 'lineHighlight': '#FFFFFF0F', 'background': '#06071DFA'}
;; comment {'foreground': '#AEAEAE', 'fontStyle': ''}
;; constant {'foreground': '#62E9BD', 'fontStyle': ''}
;; entity {'foreground': '#A3EBFF', 'fontStyle': ''}
;; keyword {'foreground': '#2BF1DC', 'fontStyle': ''}
;; storage {'foreground': '#F8FBB1', 'fontStyle': ''}
;; string, meta.verbatim {'foreground': '#8DFF8E', 'fontStyle': ''}
;; support {'foreground': '#60A4F1', 'fontStyle': ''}
;; variable {'foreground': '#B683CA', 'fontStyle': ''}
;; invalid.deprecated {'foreground': '#AB2A1D', 'fontStyle': 'italic'}
;; invalid.illegal {'foreground': '#F8F8F8', 'background': '#AD2117'}
;; entity.other.inherited-class {'foreground': '#61FFD2', 'fontStyle': 'italic'}
;; string constant.other.placeholder {'foreground': '#92FFA3', 'fontStyle': ''}
;; meta.function-call.py {'foreground': '#BECDE6', 'fontStyle': ''}
;; meta.tag, meta.tag entity {'foreground': '#7BACCA'}
;; entity.name.section {'foreground': '#FFFFFF', 'fontStyle': ''}
;; keyword.type.variant {'foreground': '#D5E0F3'}
;; source.ocaml keyword.operator.symbol {'foreground': '#F8F8F8'}
;; source.ocaml keyword.operator.symbol.infix {'foreground': '#8DA6CE', 'fontStyle': ''}
;; source.ocaml keyword.operator.symbol.prefix {'foreground': '#8DA6CE', 'fontStyle': ''}
;; source.ocaml keyword.operator.symbol.infix.floating-point {'fontStyle': 'underline'}
;; source.ocaml keyword.operator.symbol.prefix.floating-point {'fontStyle': 'underline'}
;; source.ocaml constant.numeric.floating-point {'fontStyle': 'underline'}
;; text.latex meta.environment {'background': '#FFFFFF08'}
;; text.latex meta.environment meta.environment {'background': '#7A96FA08'}
;; text.latex support.function {'foreground': '#FBDE2D', 'fontStyle': ''}
;; source.plist string.unquoted, source.plist keyword.operator {'foreground': '#FFFFFF'}
(deftheme cool-glow
  "Cool Glow emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'cool-glow
    '(trailing-whitespace ((t (:background "#464757"))))
    '(whitespace-trailing ((t (:background "#464757"))))

    '(border ((t (:background "#151629" ))))
    '(css-property ((t (:foreground "#60a4f1" ))))
    '(css-proprietary-property ((t (:foreground "#60a4f1" ))))
    '(cursor ((t (:background "#a8a8b0" ))))
    '(default ((t (:foreground "#e0e0e0" :background "#06071c" ))))
    '(font-lock-builtin-face ((t (:foreground "#60a4f1" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#aeaeae" ))))
    '(font-lock-comment-face ((t (:foreground "#aeaeae" ))))
    '(font-lock-constant-face ((t (:foreground "#60a4f1" ))))
    '(font-lock-doc-face ((t (:foreground "#8dff8e" ))))
    '(font-lock-function-name-face ((t (:foreground "#60a4f1" ))))
    '(font-lock-keyword-face ((t (:foreground "#2bf1dc" ))))
    '(font-lock-negation-char-face ((t (:foreground "#2bf1dc" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#8dff8e" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#8dff8e" ))))
    '(font-lock-string-face ((t (:foreground "#8dff8e" ))))
    '(font-lock-type-face ((t (:foreground "#f8fbb1" ))))
    '(font-lock-variable-name-face ((t (:foreground "#b683ca" ))))
    '(font-lock-warning-face ((t (:foreground "#f8f8f8" :background "#ad2117" ))))
    '(fringe ((t (:background "#151629" ))))
    '(highlight ((t (:background "#122bbb" ))))
    '(hl-line ((t (:background "#151629" ))))
    '(linum ((t (:background "#151629" ))))
    '(menu ((t (:foreground "#e0e0e0" :background "#06071c" ))))
    '(minibuffer-prompt ((t (:foreground "#7bacca" ))))
    '(mode-line ((t (:background "#122bbb" ))))
    '(mode-line-buffer-id ((t (:foreground "#a3ebff" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#151629" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#aeaeae" ))))
    '(org-column ((t (:background "#151629" ))))
    '(org-column-title ((t (:background "#151629" ))))
    '(org-hide ((t (:foreground "#06071c" ))))
    '(org-todo ((t (:foreground "#f8f8f8" :background "#ad2117" ))))
    '(org-upcoming-deadline ((t (:foreground "#ab2a1d" :italic t ))))
    '(org-warning ((t (:foreground "#f8f8f8" :background "#ad2117" ))))
    '(region ((t (:background "#122bbb" ))))
    '(secondary-selection ((t (:background "#122bbb" ))))
    '(show-paren-match-face ((t (:background "#122bbb" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f8" :background "#ad2117" ))))
)

(provide-theme 'cool-glow)
