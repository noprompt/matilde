;; default {'caret': '#F8F8F0', 'foreground': '#aec2e0', 'selection': '#183c66', 'findHighlight': '#FFE792', 'bracketContentsOptions': 'underline', 'invisibles': '#3B3A32', 'bracketContentsForeground': '#F8F8F2A5', 'lineHighlight': '#1b232c', 'bracketsOptions': 'underline', 'tagsOptions': 'stippled_underline', 'findHighlightForeground': '#000000', 'activeGuide': '#9D550FB0', 'background': '#14191f', 'selectionBorder': '#183c66', 'bracketsForeground': '#F8F8F2A5'}
;; comment {'foreground': '#324357'}
;; string {'foreground': '#6ee2ff'}
;; constant.numeric {'foreground': '#6ee2ff'}
;; constant.language {'foreground': '#6ee2ff'}
;; constant.character, constant.other {'foreground': '#4cbbff'}
;; variable {'foreground': '#d0dfe6'}
;; keyword {'foreground': '#5cb0f2'}
;; storage {'foreground': '#6bd8ff', 'fontStyle': ''}
;; storage.type {'foreground': '#267fb5', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#00fcf2'}
;; entity.other.inherited-class {'foreground': '#95CC5E', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#99fefe', 'fontStyle': ''}
;; variable.parameter {'foreground': '#c0b2ff', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#ffffff', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#7a9bc2', 'fontStyle': ''}
;; support.function {'foreground': '#267fb5', 'fontStyle': ''}
;; support.constant {'foreground': '#267fb5', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#00fce0', 'fontStyle': 'italic'}
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
;; sublimelinter.mark.error {'foreground': '#D02000'}
;; sublimelinter.gutter-mark {'foreground': '#FFFFFF'}
;; sublimelinter.mark.warning {'foreground': '#DDB700'}
(deftheme hail
  "Hail emacs theme autoconverted from the textMate theme by Saad Quadri")
(custom-theme-set-faces
  'hail
    '(trailing-whitespace ((t (:background "#3b3a32"))))
    '(whitespace-trailing ((t (:background "#3b3a32"))))

    '(border ((t (:background "#1b232c" ))))
    '(css-property ((t (:foreground "#00fce0" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#00fce0" :italic t ))))
    '(cursor ((t (:background "#f8f8f0" ))))
    '(default ((t (:foreground "#aec2e0" :background "#14191f" ))))
    '(diff-added ((t (:foreground "#a6e22e" ))))
    '(diff-changed ((t (:foreground "#e6db74" ))))
    '(diff-header ((t (:foreground "#75715e" ))))
    '(diff-hunk-header ((t (:foreground "#75715e" ))))
    '(diff-removed ((t (:foreground "#00a8c6" ))))
    '(font-lock-builtin-face ((t (:foreground "#267fb5" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#324357" ))))
    '(font-lock-comment-face ((t (:foreground "#324357" ))))
    '(font-lock-constant-face ((t (:foreground "#267fb5" ))))
    '(font-lock-doc-face ((t (:foreground "#6ee2ff" ))))
    '(font-lock-function-name-face ((t (:foreground "#267fb5" ))))
    '(font-lock-keyword-face ((t (:foreground "#5cb0f2" ))))
    '(font-lock-negation-char-face ((t (:foreground "#5cb0f2" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#6ee2ff" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#6ee2ff" ))))
    '(font-lock-string-face ((t (:foreground "#6ee2ff" ))))
    '(font-lock-type-face ((t (:foreground "#267fb5" :italic t ))))
    '(font-lock-variable-name-face ((t (:foreground "#d0dfe6" ))))
    '(font-lock-warning-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(fringe ((t (:background "#1b232c" ))))
    '(highlight ((t (:background "#183c66" ))))
    '(hl-line ((t (:background "#1b232c" ))))
    '(isearch ((t (:foreground "#e6db74" ))))
    '(isearch-fail ((t (:foreground "#00a8c6" ))))
    '(iswitchb-current-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#00a8c6" ))))
    '(iswitchb-single-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#e6db74" ))))
    '(linum ((t (:background "#1b232c" ))))
    '(match ((t (:foreground "#a6e22e" ))))
    '(menu ((t (:foreground "#aec2e0" :background "#14191f" ))))
    '(mode-line ((t (:box "#183c66" :background "#183c66" ))))
    '(mode-line-buffer-id ((t (:foreground "#ffffff" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:box "#183c66" :background "#1b232c" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#324357" ))))
    '(org-column ((t (:background "#1b232c" ))))
    '(org-column-title ((t (:background "#1b232c" ))))
    '(org-done ((t (:foreground "#a6e22e" ))))
    '(org-hide ((t (:foreground "#14191f" ))))
    '(org-todo ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f0" :background "#8fbe00" ))))
    '(org-warning ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(region ((t (:background "#183c66" ))))
    '(secondary-selection ((t (:background "#183c66" ))))
    '(show-paren-match-face ((t (:background "#183c66" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
)

(provide-theme 'hail)
