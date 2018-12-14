;; default {'caret': '#F8F8F0', 'foreground': '#D8EBE5', 'selection': '#161A1F', 'findHighlight': '#FFE792', 'bracketContentsOptions': 'underline', 'invisibles': '#3B3A32', 'bracketContentsForeground': '#F8F8F2A5', 'lineHighlight': '#3C4D3E', 'bracketsOptions': 'underline', 'tagsOptions': 'stippled_underline', 'findHighlightForeground': '#000000', 'activeGuide': '#9D550FB0', 'background': '#2A332B', 'selectionBorder': '#222218', 'bracketsForeground': '#F8F8F2A5'}
;; comment {'foreground': '#4F6E64'}
;; string {'foreground': '#BCD42A'}
;; constant.numeric {'foreground': '#BCD42A'}
;; constant.language {'foreground': '#FF5D38'}
;; constant.character, constant.other {'foreground': '#FF5D38'}
;; variable {'fontStyle': ''}
;; keyword {'foreground': '#26A6A6'}
;; storage {'foreground': '#FF5D38', 'fontStyle': ''}
;; storage.type {'foreground': '#26A6A6', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#FF5D38', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '#FF5D38', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#BCD42A', 'fontStyle': ''}
;; variable.parameter {'foreground': '#FF5D38', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#26A6A6', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#FF5D38', 'fontStyle': ''}
;; support.function {'foreground': '#FF5D38', 'fontStyle': ''}
;; support.constant {'foreground': '#FF5D38', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#FF5D38', 'fontStyle': 'italic'}
;; support.other.variable {'fontStyle': ''}
;; invalid {'foreground': '#F8F8F0', 'fontStyle': '', 'background': '#00A8C6'}
;; invalid.deprecated {'foreground': '#F8F8F0', 'background': '#8FBE00'}
;; meta.structure.dictionary.json string.quoted.double.json {'foreground': '#CFCFC2'}
;; meta.diff, meta.diff.header {'foreground': '#75715E'}
;; markup.deleted {'foreground': '#00A8C6'}
;; markup.inserted {'foreground': '#A6E22E'}
;; markup.changed {'foreground': '#E6DB74'}
;; constant.numeric.line-number.find-in-files - match {'foreground': '#8FBE00A0'}
;; entity.name.filename.find-in-files {'foreground': '#E6DB74'}
(deftheme peacock
  "Peacock emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'peacock
    '(trailing-whitespace ((t (:background "#3b3a32"))))
    '(whitespace-trailing ((t (:background "#3b3a32"))))

    '(border ((t (:background "#3c4d3e" ))))
    '(css-property ((t (:foreground "#ff5d38" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#ff5d38" :italic t ))))
    '(cursor ((t (:background "#f8f8f0" ))))
    '(default ((t (:foreground "#d8ebe5" :background "#2a332b" ))))
    '(diff-added ((t (:foreground "#a6e22e" ))))
    '(diff-changed ((t (:foreground "#e6db74" ))))
    '(diff-header ((t (:foreground "#75715e" ))))
    '(diff-hunk-header ((t (:foreground "#75715e" ))))
    '(diff-removed ((t (:foreground "#00a8c6" ))))
    '(font-lock-builtin-face ((t (:foreground "#ff5d38" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#4f6e64" ))))
    '(font-lock-comment-face ((t (:foreground "#4f6e64" ))))
    '(font-lock-constant-face ((t (:foreground "#ff5d38" ))))
    '(font-lock-doc-face ((t (:foreground "#bcd42a" ))))
    '(font-lock-function-name-face ((t (:foreground "#ff5d38" ))))
    '(font-lock-keyword-face ((t (:foreground "#26a6a6" ))))
    '(font-lock-negation-char-face ((t (:foreground "#26a6a6" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#bcd42a" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#bcd42a" ))))
    '(font-lock-string-face ((t (:foreground "#bcd42a" ))))
    '(font-lock-type-face ((t (:foreground "#26a6a6" :italic t ))))
    '(font-lock-variable-name-face ((t ())))
    '(font-lock-warning-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(fringe ((t (:background "#3c4d3e" ))))
    '(highlight ((t (:background "#161a1f" ))))
    '(hl-line ((t (:background "#3c4d3e" ))))
    '(isearch ((t (:foreground "#e6db74" ))))
    '(isearch-fail ((t (:foreground "#00a8c6" ))))
    '(iswitchb-current-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#00a8c6" ))))
    '(iswitchb-single-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#e6db74" ))))
    '(linum ((t (:background "#3c4d3e" ))))
    '(match ((t (:foreground "#a6e22e" ))))
    '(menu ((t (:foreground "#d8ebe5" :background "#2a332b" ))))
    '(mode-line ((t (:box "#222218" :background "#161a1f" ))))
    '(mode-line-buffer-id ((t (:foreground "#26a6a6" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:box "#222218" :background "#3c4d3e" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#4f6e64" ))))
    '(org-column ((t (:background "#3c4d3e" ))))
    '(org-column-title ((t (:background "#3c4d3e" ))))
    '(org-done ((t (:foreground "#a6e22e" ))))
    '(org-hide ((t (:foreground "#2a332b" ))))
    '(org-todo ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f0" :background "#8fbe00" ))))
    '(org-warning ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(region ((t (:background "#161a1f" ))))
    '(secondary-selection ((t (:background "#161a1f" ))))
    '(show-paren-match-face ((t (:background "#161a1f" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
)

(provide-theme 'peacock)
