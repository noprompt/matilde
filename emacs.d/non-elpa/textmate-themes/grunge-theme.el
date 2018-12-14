;; default {'caret': '#F8F8F0', 'foreground': '#F8F8F2', 'selection': '#161A1F', 'findHighlight': '#FFE792', 'bracketContentsOptions': 'underline', 'invisibles': '#3B3A32', 'bracketContentsForeground': '#F8F8F2A5', 'lineHighlight': '#41453A', 'bracketsOptions': 'underline', 'tagsOptions': 'stippled_underline', 'findHighlightForeground': '#000000', 'activeGuide': '#9D550FB0', 'background': '#31332C', 'selectionBorder': '#222218', 'bracketsForeground': '#F8F8F2A5'}
;; comment {'foreground': '#5C634F'}
;; string {'foreground': '#D1F2A5'}
;; constant.numeric {'foreground': '#F56991'}
;; constant.language {'foreground': '#F38630'}
;; constant.character, constant.other {'foreground': '#F38630'}
;; variable {'fontStyle': ''}
;; keyword {'foreground': '#91A374'}
;; storage {'foreground': '#F56991', 'fontStyle': ''}
;; storage.type {'foreground': '#D1F2A5', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#FFC48C', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '#FFC48C', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#FFC48C', 'fontStyle': ''}
;; variable.parameter {'foreground': '#FFC48C', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#F56991', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#FFC48C', 'fontStyle': ''}
;; support.function {'foreground': '#FFC48C', 'fontStyle': ''}
;; support.constant {'foreground': '#FFC48C', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#FFC48C', 'fontStyle': 'italic'}
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
(deftheme grunge
  "Grunge emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'grunge
    '(trailing-whitespace ((t (:background "#3b3a32"))))
    '(whitespace-trailing ((t (:background "#3b3a32"))))

    '(border ((t (:background "#41453a" ))))
    '(css-property ((t (:foreground "#ffc48c" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#ffc48c" :italic t ))))
    '(cursor ((t (:background "#f8f8f0" ))))
    '(default ((t (:foreground "#f8f8f2" :background "#31332c" ))))
    '(diff-added ((t (:foreground "#a6e22e" ))))
    '(diff-changed ((t (:foreground "#e6db74" ))))
    '(diff-header ((t (:foreground "#75715e" ))))
    '(diff-hunk-header ((t (:foreground "#75715e" ))))
    '(diff-removed ((t (:foreground "#00a8c6" ))))
    '(font-lock-builtin-face ((t (:foreground "#ffc48c" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#5c634f" ))))
    '(font-lock-comment-face ((t (:foreground "#5c634f" ))))
    '(font-lock-constant-face ((t (:foreground "#ffc48c" ))))
    '(font-lock-doc-face ((t (:foreground "#d1f2a5" ))))
    '(font-lock-function-name-face ((t (:foreground "#ffc48c" ))))
    '(font-lock-keyword-face ((t (:foreground "#91a374" ))))
    '(font-lock-negation-char-face ((t (:foreground "#91a374" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#d1f2a5" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#d1f2a5" ))))
    '(font-lock-string-face ((t (:foreground "#d1f2a5" ))))
    '(font-lock-type-face ((t (:foreground "#d1f2a5" :italic t ))))
    '(font-lock-variable-name-face ((t ())))
    '(font-lock-warning-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(fringe ((t (:background "#41453a" ))))
    '(highlight ((t (:background "#161a1f" ))))
    '(hl-line ((t (:background "#41453a" ))))
    '(isearch ((t (:foreground "#e6db74" ))))
    '(isearch-fail ((t (:foreground "#00a8c6" ))))
    '(iswitchb-current-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#00a8c6" ))))
    '(iswitchb-single-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#e6db74" ))))
    '(linum ((t (:background "#41453a" ))))
    '(match ((t (:foreground "#a6e22e" ))))
    '(menu ((t (:foreground "#f8f8f2" :background "#31332c" ))))
    '(mode-line ((t (:box "#222218" :background "#161a1f" ))))
    '(mode-line-buffer-id ((t (:foreground "#f56991" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:box "#222218" :background "#41453a" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#5c634f" ))))
    '(org-column ((t (:background "#41453a" ))))
    '(org-column-title ((t (:background "#41453a" ))))
    '(org-done ((t (:foreground "#a6e22e" ))))
    '(org-hide ((t (:foreground "#31332c" ))))
    '(org-todo ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f0" :background "#8fbe00" ))))
    '(org-warning ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(region ((t (:background "#161a1f" ))))
    '(secondary-selection ((t (:background "#161a1f" ))))
    '(show-paren-match-face ((t (:background "#161a1f" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
)

(provide-theme 'grunge)
