;; default {'caret': '#b0d0f0', 'foreground': '#e8e8d3', 'gutterForeground': '#373737', 'selection': '#404040', 'invisibles': '#e8e8d3', 'lineHighlight': '#010101', 'background': '#151515'}
;; comment {'foreground': '#888888'}
;; string {'foreground': '#99ad6a'}
;; punctuation.definition.string.begin, punctuation.definition.string.end {'foreground': '#556633'}
;; constant.other {'foreground': '#7697d6'}
;; string.regexp {'foreground': '#dd0093'}
;; variable, support.class {'foreground': '#ffb964'}
;; constant.numeric {'foreground': '#cf6a4c'}
;; entity {'foreground': '#ffb964'}
;; entity.name.function {'foreground': '#fad07a'}
;; keyword.control {'foreground': '#8fbfdc'}
;; diff.inserted, markup.inserted {'foreground': '#558f1f'}
;; diff.deleted, markup.deleted {'foreground': '#a1000d'}
;; meta.diff.header {'foreground': '#FFFFFF', 'background': '#4e738a'}
;; meta.diff.range {'foreground': '#888888', 'fontStyle': 'italic'}
;; markup.changed {'foreground': '#967efb'}
(deftheme boron
  "Boron emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'boron
    '(trailing-whitespace ((t (:background "#e8e8d3"))))
    '(whitespace-trailing ((t (:background "#e8e8d3"))))

    '(border ((t (:background "#010101" ))))
    '(cursor ((t (:background "#b0d0f0" ))))
    '(default ((t (:foreground "#e8e8d3" :background "#151515" ))))
    '(diff-added ((t (:foreground "#558f1f" ))))
    '(diff-changed ((t (:foreground "#967efb" ))))
    '(diff-header ((t (:foreground "#ffffff" :background "#4e738a" ))))
    '(diff-hunk-header ((t (:foreground "#ffffff" :background "#4e738a" ))))
    '(diff-removed ((t (:foreground "#a1000d" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#888888" ))))
    '(font-lock-comment-face ((t (:foreground "#888888" ))))
    '(font-lock-doc-face ((t (:foreground "#99ad6a" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#dd0093" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#dd0093" ))))
    '(font-lock-string-face ((t (:foreground "#99ad6a" ))))
    '(font-lock-variable-name-face ((t (:foreground "#ffb964" ))))
    '(fringe ((t (:background "#010101" ))))
    '(highlight ((t (:background "#404040" ))))
    '(hl-line ((t (:background "#010101" ))))
    '(isearch ((t (:foreground "#967efb" ))))
    '(isearch-fail ((t (:foreground "#a1000d" ))))
    '(iswitchb-current-match ((t (:foreground "#558f1f" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#a1000d" ))))
    '(iswitchb-single-match ((t (:foreground "#558f1f" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#967efb" ))))
    '(linum ((t (:background "#010101" ))))
    '(match ((t (:foreground "#558f1f" ))))
    '(menu ((t (:foreground "#e8e8d3" :background "#151515" ))))
    '(mode-line ((t (:background "#404040" ))))
    '(mode-line-buffer-id ((t (:foreground "#ffb964" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#010101" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#888888" ))))
    '(org-column ((t (:background "#010101" ))))
    '(org-column-title ((t (:background "#010101" ))))
    '(org-done ((t (:foreground "#558f1f" ))))
    '(org-hide ((t (:foreground "#151515" ))))
    '(region ((t (:background "#404040" ))))
    '(secondary-selection ((t (:background "#404040" ))))
    '(show-paren-match-face ((t (:background "#404040" ))))
)

(provide-theme 'boron)
