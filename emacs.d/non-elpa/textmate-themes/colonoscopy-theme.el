;; default {'caret': '#D0C179', 'foreground': '#C0B6A8', 'selection': '#2A4750', 'invisibles': '#BFBFBF', 'lineHighlight': '#0000001F', 'background': '#161A1C'}
;; comment {'foreground': '#AEAEAE', 'fontStyle': ''}
;; string {'foreground': '#B9A185', 'fontStyle': ''}
;; constant.numeric {'foreground': '#B9A185'}
;; keyword {'foreground': '#A1877E', 'fontStyle': ''}
;; default {'foreground': '#B8ADA0'}
;; storage {'foreground': '#A1877E'}
;; constant {'foreground': '#A1877E'}
;; invalid {'foreground': '#F3D651'}
;; entity.name {'foreground': '#B9A185', 'fontStyle': 'bold'}
;; variable {'foreground': '#8D776E'}
(deftheme colonoscopy
  "Colonoscopy emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'colonoscopy
    '(trailing-whitespace ((t (:background "#bfbfbf"))))
    '(whitespace-trailing ((t (:background "#bfbfbf"))))

    '(border ((t (:background "#131719" ))))
    '(cursor ((t (:background "#d0c179" ))))
    '(default ((t (:foreground "#c0b6a8" :background "#161a1c" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#aeaeae" ))))
    '(font-lock-comment-face ((t (:foreground "#aeaeae" ))))
    '(font-lock-doc-face ((t (:foreground "#b9a185" ))))
    '(font-lock-keyword-face ((t (:foreground "#a1877e" ))))
    '(font-lock-negation-char-face ((t (:foreground "#a1877e" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#b9a185" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#b9a185" ))))
    '(font-lock-string-face ((t (:foreground "#b9a185" ))))
    '(font-lock-type-face ((t (:foreground "#a1877e" ))))
    '(font-lock-variable-name-face ((t (:foreground "#8d776e" ))))
    '(font-lock-warning-face ((t (:foreground "#f3d651" ))))
    '(fringe ((t (:background "#131719" ))))
    '(highlight ((t (:background "#2a4750" ))))
    '(hl-line ((t (:background "#131719" ))))
    '(linum ((t (:background "#131719" ))))
    '(menu ((t (:foreground "#c0b6a8" :background "#161a1c" ))))
    '(mode-line ((t (:background "#2a4750" ))))
    '(mode-line-buffer-id ((t (:foreground "#b9a185" :bold t ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#131719" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#aeaeae" ))))
    '(org-column ((t (:background "#131719" ))))
    '(org-column-title ((t (:background "#131719" ))))
    '(org-hide ((t (:foreground "#161a1c" ))))
    '(org-todo ((t (:foreground "#f3d651" ))))
    '(org-upcoming-deadline ((t (:foreground "#f3d651" ))))
    '(org-warning ((t (:foreground "#f3d651" ))))
    '(region ((t (:background "#2a4750" ))))
    '(secondary-selection ((t (:background "#2a4750" ))))
    '(show-paren-match-face ((t (:background "#2a4750" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f3d651" ))))
)

(provide-theme 'colonoscopy)
