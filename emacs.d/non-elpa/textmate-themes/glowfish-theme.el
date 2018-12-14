;; default {'caret': '#F8F8F0', 'foreground': '#6ea240', 'selection': '#050804', 'findHighlight': '#FFE792', 'bracketContentsOptions': 'underline', 'invisibles': '#3B3A32', 'bracketContentsForeground': '#F8F8F2A5', 'lineHighlight': '#222a1a', 'bracketsOptions': 'underline', 'tagsOptions': 'stippled_underline', 'findHighlightForeground': '#000000', 'activeGuide': '#9D550FB0', 'background': '#191f13', 'selectionBorder': '#050804', 'bracketsForeground': '#F8F8F2A5'}
;; comment {'foreground': '#3c4e2d'}
;; string {'foreground': '#F8BB39'}
;; constant.numeric {'foreground': '#95CC5E'}
;; constant.language {'foreground': '#95CC5E'}
;; constant.character, constant.other {'foreground': '#95CC5E'}
;; variable {'fontStyle': ''}
;; keyword {'foreground': '#D65940'}
;; storage {'foreground': '#D65940', 'fontStyle': ''}
;; storage.type {'foreground': '#C1DEA4', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#95CC5E', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '#95CC5E', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#60A365', 'fontStyle': ''}
;; variable.parameter {'foreground': '#95CC5E', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#95CC5E', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#DB784D', 'fontStyle': ''}
;; support.function {'foreground': '#95CC5E', 'fontStyle': ''}
;; support.constant {'foreground': '#95CC5E', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#95CC5E', 'fontStyle': 'italic'}
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
(deftheme glowfish
  "Glowfish emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'glowfish
    '(trailing-whitespace ((t (:background "#3b3a32"))))
    '(whitespace-trailing ((t (:background "#3b3a32"))))

    '(border ((t (:background "#222a1a" ))))
    '(css-property ((t (:foreground "#95cc5e" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#95cc5e" :italic t ))))
    '(cursor ((t (:background "#f8f8f0" ))))
    '(default ((t (:foreground "#6ea240" :background "#191f13" ))))
    '(diff-added ((t (:foreground "#a6e22e" ))))
    '(diff-changed ((t (:foreground "#e6db74" ))))
    '(diff-header ((t (:foreground "#75715e" ))))
    '(diff-hunk-header ((t (:foreground "#75715e" ))))
    '(diff-removed ((t (:foreground "#00a8c6" ))))
    '(font-lock-builtin-face ((t (:foreground "#95cc5e" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#3c4e2d" ))))
    '(font-lock-comment-face ((t (:foreground "#3c4e2d" ))))
    '(font-lock-constant-face ((t (:foreground "#95cc5e" ))))
    '(font-lock-doc-face ((t (:foreground "#f8bb39" ))))
    '(font-lock-function-name-face ((t (:foreground "#95cc5e" ))))
    '(font-lock-keyword-face ((t (:foreground "#d65940" ))))
    '(font-lock-negation-char-face ((t (:foreground "#d65940" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#f8bb39" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#f8bb39" ))))
    '(font-lock-string-face ((t (:foreground "#f8bb39" ))))
    '(font-lock-type-face ((t (:foreground "#c1dea4" :italic t ))))
    '(font-lock-variable-name-face ((t ())))
    '(font-lock-warning-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(fringe ((t (:background "#222a1a" ))))
    '(highlight ((t (:background "#050804" ))))
    '(hl-line ((t (:background "#222a1a" ))))
    '(isearch ((t (:foreground "#e6db74" ))))
    '(isearch-fail ((t (:foreground "#00a8c6" ))))
    '(iswitchb-current-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#00a8c6" ))))
    '(iswitchb-single-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#e6db74" ))))
    '(linum ((t (:background "#222a1a" ))))
    '(match ((t (:foreground "#a6e22e" ))))
    '(menu ((t (:foreground "#6ea240" :background "#191f13" ))))
    '(mode-line ((t (:box "#050804" :background "#050804" ))))
    '(mode-line-buffer-id ((t (:foreground "#95cc5e" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:box "#050804" :background "#222a1a" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#3c4e2d" ))))
    '(org-column ((t (:background "#222a1a" ))))
    '(org-column-title ((t (:background "#222a1a" ))))
    '(org-done ((t (:foreground "#a6e22e" ))))
    '(org-hide ((t (:foreground "#191f13" ))))
    '(org-todo ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f0" :background "#8fbe00" ))))
    '(org-warning ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(region ((t (:background "#050804" ))))
    '(secondary-selection ((t (:background "#050804" ))))
    '(show-paren-match-face ((t (:background "#050804" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
)

(provide-theme 'glowfish)
