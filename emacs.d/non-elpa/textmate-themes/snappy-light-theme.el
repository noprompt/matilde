;; default {'caret': '#ffffff', 'foreground': '#c0d5c1', 'selection': '#000000', 'findHighlight': '#FFE792', 'bracketContentsOptions': 'underline', 'invisibles': '#3B3A32', 'bracketContentsForeground': '#F8F8F2A5', 'lineHighlight': '#3d3934', 'bracketsOptions': 'underline', 'tagsOptions': 'stippled_underline', 'findHighlightForeground': '#000000', 'activeGuide': '#9D550FB0', 'background': '#2d2c2b', 'selectionBorder': '#222222', 'bracketsForeground': '#F8F8F2A5'}
;; comment {'foreground': '#716d6a'}
;; string {'foreground': '#ce830d'}
;; constant.numeric {'foreground': '#f5c504'}
;; constant.language {'foreground': '#90c93f'}
;; constant.character, constant.other {'foreground': '#90c93f'}
;; variable {'fontStyle': ''}
;; keyword {'foreground': '#90c93f'}
;; storage {'foreground': '#569e16', 'fontStyle': ''}
;; storage.type {'foreground': '#f5c504', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#606aa1', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '#606aa1', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#90c93f', 'fontStyle': ''}
;; variable.parameter {'foreground': '#606aa1', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#569e16', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#f5c504', 'fontStyle': ''}
;; support.function {'foreground': '#f5c504', 'fontStyle': ''}
;; support.constant {'foreground': '#f5c504', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#f5c504', 'fontStyle': 'italic'}
;; support.other.variable {'fontStyle': ''}
;; invalid {'foreground': '#F8F8F0', 'fontStyle': '', 'background': '#00A8C6'}
;; invalid.deprecated {'foreground': '#F8F8F0', 'background': '#8FBE00'}
;; meta.structure.dictionary.json string.quoted.double.json {'foreground': '#7C7C74'}
;; meta.diff, meta.diff.header {'foreground': '#75715E'}
;; markup.deleted {'foreground': '#00A8C6'}
;; markup.inserted {'foreground': '#A6E22E'}
;; markup.changed {'foreground': '#E6DB74'}
;; constant.numeric.line-number.find-in-files - match {'foreground': '#8FBE00A0'}
;; entity.name.filename.find-in-files {'foreground': '#E6DB74'}
(deftheme snappy-light
  "Snappy Light emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'snappy-light
    '(trailing-whitespace ((t (:background "#3b3a32"))))
    '(whitespace-trailing ((t (:background "#3b3a32"))))

    '(border ((t (:background "#3d3934" ))))
    '(css-property ((t (:foreground "#f5c504" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#f5c504" :italic t ))))
    '(cursor ((t (:background "#ffffff" ))))
    '(default ((t (:foreground "#c0d5c1" :background "#2d2c2b" ))))
    '(diff-added ((t (:foreground "#a6e22e" ))))
    '(diff-changed ((t (:foreground "#e6db74" ))))
    '(diff-header ((t (:foreground "#75715e" ))))
    '(diff-hunk-header ((t (:foreground "#75715e" ))))
    '(diff-removed ((t (:foreground "#00a8c6" ))))
    '(font-lock-builtin-face ((t (:foreground "#f5c504" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#716d6a" ))))
    '(font-lock-comment-face ((t (:foreground "#716d6a" ))))
    '(font-lock-constant-face ((t (:foreground "#f5c504" ))))
    '(font-lock-doc-face ((t (:foreground "#ce830d" ))))
    '(font-lock-function-name-face ((t (:foreground "#f5c504" ))))
    '(font-lock-keyword-face ((t (:foreground "#90c93f" ))))
    '(font-lock-negation-char-face ((t (:foreground "#90c93f" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#ce830d" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#ce830d" ))))
    '(font-lock-string-face ((t (:foreground "#ce830d" ))))
    '(font-lock-type-face ((t (:foreground "#f5c504" :italic t ))))
    '(font-lock-variable-name-face ((t ())))
    '(font-lock-warning-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(fringe ((t (:background "#3d3934" ))))
    '(highlight ((t (:background "#000000" ))))
    '(hl-line ((t (:background "#3d3934" ))))
    '(isearch ((t (:foreground "#e6db74" ))))
    '(isearch-fail ((t (:foreground "#00a8c6" ))))
    '(iswitchb-current-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#00a8c6" ))))
    '(iswitchb-single-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#e6db74" ))))
    '(linum ((t (:background "#3d3934" ))))
    '(match ((t (:foreground "#a6e22e" ))))
    '(menu ((t (:foreground "#c0d5c1" :background "#2d2c2b" ))))
    '(mode-line ((t (:box "#222222" :background "#000000" ))))
    '(mode-line-buffer-id ((t (:foreground "#569e16" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:box "#222222" :background "#3d3934" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#716d6a" ))))
    '(org-column ((t (:background "#3d3934" ))))
    '(org-column-title ((t (:background "#3d3934" ))))
    '(org-done ((t (:foreground "#a6e22e" ))))
    '(org-hide ((t (:foreground "#2d2c2b" ))))
    '(org-todo ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f0" :background "#8fbe00" ))))
    '(org-warning ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(region ((t (:background "#000000" ))))
    '(secondary-selection ((t (:background "#000000" ))))
    '(show-paren-match-face ((t (:background "#000000" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
)

(provide-theme 'snappy-light)
