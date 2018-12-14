;; default {'caret': '#88ee88', 'foreground': '#66aa66', 'selection': '#224477', 'invisibles': '#402000', 'lineHighlight': '#402000', 'background': '#001c00'}
;; comment {'foreground': '#224422'}
;; string {'foreground': '#009000'}
;; constant.numeric {'foreground': '#eeaacc'}
;; constant.language {'foreground': '#eeaacc'}
;; constant.character, constant.other {'foreground': '#eeaacc'}
;; variable {'fontStyle': ''}
;; keyword {'foreground': '#885522'}
;; storage {'foreground': '#885522', 'fontStyle': ''}
;; storage.type {'foreground': '#ccccaa', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#55ddff', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '#44aaee', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#44aaee', 'fontStyle': ''}
;; variable.parameter {'foreground': '#ccaa00', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#885522', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#ccccaa', 'fontStyle': ''}
;; support.function {'foreground': '#ccccaa', 'fontStyle': ''}
;; support.constant {'foreground': '#ccccaa', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#ccccaa', 'fontStyle': 'italic'}
;; support.other.variable {'fontStyle': ''}
;; invalid {'foreground': '#F8F8F0', 'fontStyle': '', 'background': '#F92672'}
;; invalid.deprecated {'foreground': '#F8F8F0', 'background': '#AE81FF'}
(deftheme ofer-1
  "Ofer 1 emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'ofer-1
    '(trailing-whitespace ((t (:background "#402000"))))
    '(whitespace-trailing ((t (:background "#402000"))))

    '(border ((t (:background "#402000" ))))
    '(css-property ((t (:foreground "#ccccaa" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#ccccaa" :italic t ))))
    '(cursor ((t (:background "#88ee88" ))))
    '(default ((t (:foreground "#66aa66" :background "#001c00" ))))
    '(font-lock-builtin-face ((t (:foreground "#ccccaa" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#224422" ))))
    '(font-lock-comment-face ((t (:foreground "#224422" ))))
    '(font-lock-constant-face ((t (:foreground "#ccccaa" ))))
    '(font-lock-doc-face ((t (:foreground "#009000" ))))
    '(font-lock-function-name-face ((t (:foreground "#ccccaa" ))))
    '(font-lock-keyword-face ((t (:foreground "#885522" ))))
    '(font-lock-negation-char-face ((t (:foreground "#885522" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#009000" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#009000" ))))
    '(font-lock-string-face ((t (:foreground "#009000" ))))
    '(font-lock-type-face ((t (:foreground "#ccccaa" :italic t ))))
    '(font-lock-variable-name-face ((t ())))
    '(font-lock-warning-face ((t (:foreground "#f8f8f0" :background "#f92672" ))))
    '(fringe ((t (:background "#402000" ))))
    '(highlight ((t (:background "#224477" ))))
    '(hl-line ((t (:background "#402000" ))))
    '(linum ((t (:background "#402000" ))))
    '(menu ((t (:foreground "#66aa66" :background "#001c00" ))))
    '(mode-line ((t (:background "#224477" ))))
    '(mode-line-buffer-id ((t (:foreground "#885522" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#402000" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#224422" ))))
    '(org-column ((t (:background "#402000" ))))
    '(org-column-title ((t (:background "#402000" ))))
    '(org-hide ((t (:foreground "#001c00" ))))
    '(org-todo ((t (:foreground "#f8f8f0" :background "#f92672" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f0" :background "#ae81ff" ))))
    '(org-warning ((t (:foreground "#f8f8f0" :background "#f92672" ))))
    '(region ((t (:background "#224477" ))))
    '(secondary-selection ((t (:background "#224477" ))))
    '(show-paren-match-face ((t (:background "#224477" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f0" :background "#f92672" ))))
)

(provide-theme 'ofer-1)
