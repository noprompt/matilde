;; default {'caret': '#7F005D', 'foreground': '#DDE6CF', 'selection': '#40002F', 'invisibles': '#BFBFBF', 'lineHighlight': '#00000012', 'background': '#0D0D0D'}
;; comment {'foreground': '#473C45'}
;; string {'foreground': '#805978'}
;; constant {'foreground': '#A8885A'}
;; variable.parameter, variable.other {'foreground': '#596380'}
;; keyword - keyword.operator, keyword.operator.logical {'foreground': '#728059'}
;; storage {'foreground': '#9EBF60'}
;; entity {'foreground': '#6078BF'}
;; entity.other.inherited-class {'fontStyle': 'italic'}
;; support {'foreground': '#8A4B66'}
;; support.type.exception {'foreground': '#893062'}
;; entity.name.tag {}
;; entity.other.attribute-name {}
;; support.constant {}
;; support.type, support.class {}
;; support.other.variable {}
;; invalid {'background': '#5F0047'}
;; default {}
;; meta.function.section {'background': '#371D28'}
(deftheme spacecadet
  "SpaceCadet emacs theme autoconverted from the textMate theme by Alex Ross")
(custom-theme-set-faces
  'spacecadet
    '(trailing-whitespace ((t (:background "#bfbfbf"))))
    '(whitespace-trailing ((t (:background "#bfbfbf"))))

    '(border ((t (:background "#0c0c0c" ))))
    '(css-property ((t ())))
    '(css-proprietary-property ((t ())))
    '(cursor ((t (:background "#7f005d" ))))
    '(default ((t (:foreground "#dde6cf" :background "#0d0d0d" ))))
    '(font-lock-builtin-face ((t (:foreground "#8a4b66" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#473c45" ))))
    '(font-lock-comment-face ((t (:foreground "#473c45" ))))
    '(font-lock-constant-face ((t ())))
    '(font-lock-doc-face ((t (:foreground "#805978" ))))
    '(font-lock-function-name-face ((t (:foreground "#8a4b66" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#805978" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#805978" ))))
    '(font-lock-string-face ((t (:foreground "#805978" ))))
    '(font-lock-type-face ((t (:foreground "#9ebf60" ))))
    '(font-lock-variable-name-face ((t (:foreground "#596380" ))))
    '(font-lock-warning-face ((t (:background "#5f0047" ))))
    '(fringe ((t (:background "#0c0c0c" ))))
    '(highlight ((t (:background "#40002f" ))))
    '(hl-line ((t (:background "#0c0c0c" ))))
    '(linum ((t (:background "#0c0c0c" ))))
    '(menu ((t (:foreground "#dde6cf" :background "#0d0d0d" ))))
    '(mode-line ((t (:background "#40002f" ))))
    '(mode-line-buffer-id ((t ())))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#0c0c0c" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#473c45" ))))
    '(org-column ((t (:background "#0c0c0c" ))))
    '(org-column-title ((t (:background "#0c0c0c" ))))
    '(org-hide ((t (:foreground "#0d0d0d" ))))
    '(org-todo ((t (:background "#5f0047" ))))
    '(org-upcoming-deadline ((t (:background "#5f0047" ))))
    '(org-warning ((t (:background "#5f0047" ))))
    '(region ((t (:background "#40002f" ))))
    '(secondary-selection ((t (:background "#40002f" ))))
    '(show-paren-match-face ((t (:background "#40002f" ))))
    '(show-paren-mismatch-face ((t (:background "#5f0047" ))))
)

(provide-theme 'spacecadet)
