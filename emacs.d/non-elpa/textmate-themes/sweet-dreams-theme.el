;; default {'caret': '#F8F8F0', 'foreground': '#ecf0f1', 'selection': '#2980b9', 'findHighlight': '#d35400', 'bracketContentsOptions': 'underline', 'invisibles': '#3B3A32', 'bracketContentsForeground': '#F8F8F8', 'lineHighlight': '#1b232c', 'bracketsOptions': 'underline', 'tagsOptions': 'stippled_underline', 'findHighlightForeground': '#ecf0f1', 'activeGuide': '#9D550FB0', 'background': '#1E3B50', 'selectionBorder': '#183c66', 'bracketsForeground': '#F8F8F2A5'}
;; comment {'foreground': '#27ae60'}
;; string {'foreground': '#e74c3c'}
;; constant.numeric {'foreground': '#1abc9c'}
;; constant.language {'foreground': '#6ee2ff'}
;; constant.character, constant.other {'foreground': '#4cbbff'}
;; variable {'foreground': '#8e44ad'}
;; keyword {'foreground': '#16a085'}
;; storage {'foreground': '#ffffff', 'fontStyle': ''}
;; storage.type {'foreground': '#267fb5', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#16a085', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '#16a085', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#9b59b6', 'fontStyle': ''}
;; variable.parameter {'foreground': '#8e44ad', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#ffffff', 'fontStyle': 'bold'}
;; entity.other.attribute-name {'foreground': '#7a9bc2', 'fontStyle': ''}
;; support.function {'foreground': '#267fb5', 'fontStyle': ''}
;; support.constant {'foreground': '#267fb5', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#267fb5', 'fontStyle': 'italic'}
;; support.other.variable {'fontStyle': ''}
;; invalid {'foreground': '#F8F8F0', 'fontStyle': '', 'background': '#00A8C6'}
;; invalid.deprecated {'foreground': '#F8F8F0', 'fontStyle': 'underline italic', 'background': '#8FBE00'}
;; meta.structure.dictionary.json string.quoted.double.json {'foreground': '#7f8c8d'}
;; meta.diff, meta.diff.header {'foreground': '#2c3e50'}
;; markup.deleted {'foreground': '#00A8C6'}
;; markup.inserted {'foreground': '#A6E22E'}
;; markup.changed {'foreground': '#E6DB74'}
;; constant.numeric.line-number.find-in-files - match {'foreground': '#d35400'}
;; entity.name.filename.find-in-files {'foreground': '#e67e22'}
(deftheme sweet-dreams
  "Sweet Dreams emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'sweet-dreams
    '(trailing-whitespace ((t (:background "#3b3a32"))))
    '(whitespace-trailing ((t (:background "#3b3a32"))))

    '(border ((t (:background "#1b232c" ))))
    '(css-property ((t (:foreground "#267fb5" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#267fb5" :italic t ))))
    '(cursor ((t (:background "#f8f8f0" ))))
    '(default ((t (:foreground "#ecf0f1" :background "#1e3b50" ))))
    '(diff-added ((t (:foreground "#a6e22e" ))))
    '(diff-changed ((t (:foreground "#e6db74" ))))
    '(diff-header ((t (:foreground "#2c3e50" ))))
    '(diff-hunk-header ((t (:foreground "#2c3e50" ))))
    '(diff-removed ((t (:foreground "#00a8c6" ))))
    '(font-lock-builtin-face ((t (:foreground "#267fb5" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#27ae60" ))))
    '(font-lock-comment-face ((t (:foreground "#27ae60" ))))
    '(font-lock-constant-face ((t (:foreground "#267fb5" ))))
    '(font-lock-doc-face ((t (:foreground "#e74c3c" ))))
    '(font-lock-function-name-face ((t (:foreground "#267fb5" ))))
    '(font-lock-keyword-face ((t (:foreground "#16a085" ))))
    '(font-lock-negation-char-face ((t (:foreground "#16a085" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#e74c3c" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#e74c3c" ))))
    '(font-lock-string-face ((t (:foreground "#e74c3c" ))))
    '(font-lock-type-face ((t (:foreground "#267fb5" :italic t ))))
    '(font-lock-variable-name-face ((t (:foreground "#8e44ad" ))))
    '(font-lock-warning-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(fringe ((t (:background "#1b232c" ))))
    '(highlight ((t (:background "#2980b9" ))))
    '(hl-line ((t (:background "#1b232c" ))))
    '(isearch ((t (:foreground "#e6db74" ))))
    '(isearch-fail ((t (:foreground "#00a8c6" ))))
    '(iswitchb-current-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#00a8c6" ))))
    '(iswitchb-single-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#e6db74" ))))
    '(linum ((t (:background "#1b232c" ))))
    '(match ((t (:foreground "#a6e22e" ))))
    '(menu ((t (:foreground "#ecf0f1" :background "#1e3b50" ))))
    '(mode-line ((t (:box "#183c66" :background "#2980b9" ))))
    '(mode-line-buffer-id ((t (:foreground "#ffffff" :bold t ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:box "#183c66" :background "#1b232c" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#27ae60" ))))
    '(org-column ((t (:background "#1b232c" ))))
    '(org-column-title ((t (:background "#1b232c" ))))
    '(org-done ((t (:foreground "#a6e22e" ))))
    '(org-hide ((t (:foreground "#1e3b50" ))))
    '(org-todo ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f0" :underline t :italic t :background "#8fbe00" ))))
    '(org-warning ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(region ((t (:background "#2980b9" ))))
    '(secondary-selection ((t (:background "#2980b9" ))))
    '(show-paren-match-face ((t (:background "#2980b9" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
)

(provide-theme 'sweet-dreams)
