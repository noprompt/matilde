;; default {'caret': '#ddbb88', 'foreground': '#6688cc', 'selection': '#770811', 'invisibles': '#002040', 'lineHighlight': '#082050', 'background': '#000c18'}
;; comment {'foreground': '#223355'}
;; string {'foreground': '#22aa44'}
;; constant.numeric {'foreground': '#f280d0'}
;; constant.language {'foreground': '#f280d0'}
;; constant.character, constant.other {'foreground': '#f280d0'}
;; variable {'fontStyle': ''}
;; keyword {'foreground': '#225588'}
;; storage {'foreground': '#225588', 'fontStyle': ''}
;; storage.type {'foreground': '#9966b8', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#ffeebb', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '#ddbb88', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#ddbb88', 'fontStyle': ''}
;; variable.parameter {'foreground': '#2277ff', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#225588', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#ddbb88', 'fontStyle': ''}
;; support.function {'foreground': '#9966b8', 'fontStyle': ''}
;; support.constant {'foreground': '#9966b8', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#9966b8', 'fontStyle': 'italic'}
;; support.other.variable {'fontStyle': ''}
;; invalid {'foreground': '#F8F8F0', 'fontStyle': '', 'background': '#F92672'}
;; invalid.deprecated {'foreground': '#F8F8F0', 'background': '#AE81FF'}
(deftheme abyss
  "Abyss emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'abyss
    '(trailing-whitespace ((t (:background "#002040"))))
    '(whitespace-trailing ((t (:background "#002040"))))

    '(border ((t (:background "#082050" ))))
    '(css-property ((t (:foreground "#9966b8" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#9966b8" :italic t ))))
    '(cursor ((t (:background "#ddbb88" ))))
    '(default ((t (:foreground "#6688cc" :background "#000c18" ))))
    '(font-lock-builtin-face ((t (:foreground "#9966b8" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#223355" ))))
    '(font-lock-comment-face ((t (:foreground "#223355" ))))
    '(font-lock-constant-face ((t (:foreground "#9966b8" ))))
    '(font-lock-doc-face ((t (:foreground "#22aa44" ))))
    '(font-lock-function-name-face ((t (:foreground "#9966b8" ))))
    '(font-lock-keyword-face ((t (:foreground "#225588" ))))
    '(font-lock-negation-char-face ((t (:foreground "#225588" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#22aa44" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#22aa44" ))))
    '(font-lock-string-face ((t (:foreground "#22aa44" ))))
    '(font-lock-type-face ((t (:foreground "#9966b8" :italic t ))))
    '(font-lock-variable-name-face ((t ())))
    '(font-lock-warning-face ((t (:foreground "#f8f8f0" :background "#f92672" ))))
    '(fringe ((t (:background "#082050" ))))
    '(highlight ((t (:background "#770811" ))))
    '(hl-line ((t (:background "#082050" ))))
    '(linum ((t (:background "#082050" ))))
    '(menu ((t (:foreground "#6688cc" :background "#000c18" ))))
    '(mode-line ((t (:background "#770811" ))))
    '(mode-line-buffer-id ((t (:foreground "#225588" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#082050" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#223355" ))))
    '(org-column ((t (:background "#082050" ))))
    '(org-column-title ((t (:background "#082050" ))))
    '(org-hide ((t (:foreground "#000c18" ))))
    '(org-todo ((t (:foreground "#f8f8f0" :background "#f92672" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f0" :background "#ae81ff" ))))
    '(org-warning ((t (:foreground "#f8f8f0" :background "#f92672" ))))
    '(region ((t (:background "#770811" ))))
    '(secondary-selection ((t (:background "#770811" ))))
    '(show-paren-match-face ((t (:background "#770811" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f0" :background "#f92672" ))))
)

(provide-theme 'abyss)
