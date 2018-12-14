;; default {'caret': '#F8F8F0', 'foreground': '#FFFFFF', 'selection': '#161A1F', 'findHighlight': '#FFE792', 'bracketContentsOptions': 'underline', 'invisibles': '#3B3A32', 'bracketContentsForeground': '#F8F8F2A5', 'lineHighlight': '#384147', 'bracketsOptions': 'underline', 'tagsOptions': 'stippled_underline', 'findHighlightForeground': '#000000', 'activeGuide': '#9D550FB0', 'background': '#292D30', 'selectionBorder': '#222218', 'bracketsForeground': '#F8F8F2A5'}
;; comment {'foreground': '#4F5A63'}
;; string {'foreground': '#FAFFDB'}
;; constant.numeric {'foreground': '#C7AF3F'}
;; constant.language {'foreground': '#C7AF3F'}
;; constant.character, constant.other {'foreground': '#C7AF3F'}
;; variable {'foreground': '#8AB8A2'}
;; keyword {'foreground': '#9FB3C2'}
;; storage {'foreground': '#9FB3C2', 'fontStyle': ''}
;; storage.type {'foreground': '#FAFFDB', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#C7AF3F', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '#C7AF3F', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#C7AF3F', 'fontStyle': ''}
;; variable.parameter {'foreground': '#C7AF3F', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#C7AF3F', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#8AB8A2', 'fontStyle': ''}
;; support.function {'foreground': '#C7AF3F', 'fontStyle': ''}
;; support.constant {'foreground': '#C7AF3F', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#C7AF3F', 'fontStyle': 'italic'}
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
(deftheme slime
  "Slime emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'slime
    '(trailing-whitespace ((t (:background "#3b3a32"))))
    '(whitespace-trailing ((t (:background "#3b3a32"))))

    '(border ((t (:background "#384147" ))))
    '(css-property ((t (:foreground "#c7af3f" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#c7af3f" :italic t ))))
    '(cursor ((t (:background "#f8f8f0" ))))
    '(default ((t (:foreground "#ffffff" :background "#292d30" ))))
    '(diff-added ((t (:foreground "#a6e22e" ))))
    '(diff-changed ((t (:foreground "#e6db74" ))))
    '(diff-header ((t (:foreground "#75715e" ))))
    '(diff-hunk-header ((t (:foreground "#75715e" ))))
    '(diff-removed ((t (:foreground "#00a8c6" ))))
    '(font-lock-builtin-face ((t (:foreground "#c7af3f" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#4f5a63" ))))
    '(font-lock-comment-face ((t (:foreground "#4f5a63" ))))
    '(font-lock-constant-face ((t (:foreground "#c7af3f" ))))
    '(font-lock-doc-face ((t (:foreground "#faffdb" ))))
    '(font-lock-function-name-face ((t (:foreground "#c7af3f" ))))
    '(font-lock-keyword-face ((t (:foreground "#9fb3c2" ))))
    '(font-lock-negation-char-face ((t (:foreground "#9fb3c2" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#faffdb" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#faffdb" ))))
    '(font-lock-string-face ((t (:foreground "#faffdb" ))))
    '(font-lock-type-face ((t (:foreground "#faffdb" :italic t ))))
    '(font-lock-variable-name-face ((t (:foreground "#8ab8a2" ))))
    '(font-lock-warning-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(fringe ((t (:background "#384147" ))))
    '(highlight ((t (:background "#161a1f" ))))
    '(hl-line ((t (:background "#384147" ))))
    '(isearch ((t (:foreground "#e6db74" ))))
    '(isearch-fail ((t (:foreground "#00a8c6" ))))
    '(iswitchb-current-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#00a8c6" ))))
    '(iswitchb-single-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#e6db74" ))))
    '(linum ((t (:background "#384147" ))))
    '(match ((t (:foreground "#a6e22e" ))))
    '(menu ((t (:foreground "#ffffff" :background "#292d30" ))))
    '(mode-line ((t (:box "#222218" :background "#161a1f" ))))
    '(mode-line-buffer-id ((t (:foreground "#c7af3f" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:box "#222218" :background "#384147" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#4f5a63" ))))
    '(org-column ((t (:background "#384147" ))))
    '(org-column-title ((t (:background "#384147" ))))
    '(org-done ((t (:foreground "#a6e22e" ))))
    '(org-hide ((t (:foreground "#292d30" ))))
    '(org-todo ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f0" :background "#8fbe00" ))))
    '(org-warning ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(region ((t (:background "#161a1f" ))))
    '(secondary-selection ((t (:background "#161a1f" ))))
    '(show-paren-match-face ((t (:background "#161a1f" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
)

(provide-theme 'slime)
