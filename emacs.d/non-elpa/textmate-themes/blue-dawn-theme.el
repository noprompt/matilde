;; default {'caret': '#F8F8F0', 'foreground': '#bbd0ef', 'selection': '#183c66', 'findHighlight': '#FFE792', 'bracketContentsOptions': 'underline', 'invisibles': '#3B3A32', 'bracketContentsForeground': '#F8F8F2A5', 'lineHighlight': '#1b232c', 'bracketsOptions': 'underline', 'tagsOptions': 'stippled_underline', 'findHighlightForeground': '#000000', 'activeGuide': '#9D550FB0', 'background': '#0d2136', 'selectionBorder': '#183c66', 'bracketsForeground': '#F8F8F2A5'}
;; comment {'foreground': '#B63099'}
;; string {'foreground': '#65E6B8'}
;; constant.numeric {'foreground': '#ffcc41'}
;; constant.language {'foreground': '#e9ee00'}
;; constant.character, constant.other {'foreground': '#4cbbff'}
;; variable {'foreground': '#effbff'}
;; keyword {'foreground': '#a3c1e8'}
;; storage {'foreground': '#ffffff', 'fontStyle': ''}
;; storage.type {'foreground': '#36aaf1', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#95CC5E', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '#95CC5E', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#effbff', 'fontStyle': ''}
;; variable.parameter {'foreground': '#95CC5E', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#FFFFFF', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#7a9bc2', 'fontStyle': ''}
;; support.function {'foreground': '#36aaf1', 'fontStyle': ''}
;; support.constant {'foreground': '#36aaf1', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#36aaf1', 'fontStyle': 'italic'}
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
;; meta.selector.css entity.name.tag {'foreground': '#d35924'}
;; meta.selector.css entity.other.attribute-name.id {'foreground': '#56c5c0'}
;; meta.selector.css entity.other.attribute-name.class {'foreground': '#f1d969', 'fontStyle': ' underline'}
;; support.type.property-name.css {'foreground': '#216ba7'}
;; meta.property-group support.constant.property-value.css, meta.property-value support.constant.property-value.css {'foreground': '#0694e7'}
;; meta.preprocessor.at-rule keyword.control.at-rule {'foreground': '#F6AA11'}
;; meta.property-value support.constant.named-color.css, meta.property-value constant {'foreground': '#FFAA41'}
;; meta.constructor.argument.css {'foreground': '#EB939A'}
(deftheme blue-dawn
  "Blue Dawn emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'blue-dawn
    '(trailing-whitespace ((t (:background "#3b3a32"))))
    '(whitespace-trailing ((t (:background "#3b3a32"))))

    '(border ((t (:background "#1b232c" ))))
    '(css-property ((t (:foreground "#216ba7" ))))
    '(css-proprietary-property ((t (:foreground "#216ba7" ))))
    '(css-selector ((t (:foreground "#56c5c0" ))))
    '(cursor ((t (:background "#f8f8f0" ))))
    '(default ((t (:foreground "#bbd0ef" :background "#0d2136" ))))
    '(diff-added ((t (:foreground "#a6e22e" ))))
    '(diff-changed ((t (:foreground "#e6db74" ))))
    '(diff-header ((t (:foreground "#75715e" ))))
    '(diff-hunk-header ((t (:foreground "#75715e" ))))
    '(diff-removed ((t (:foreground "#00a8c6" ))))
    '(font-lock-builtin-face ((t (:foreground "#36aaf1" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#b63099" ))))
    '(font-lock-comment-face ((t (:foreground "#b63099" ))))
    '(font-lock-constant-face ((t (:foreground "#36aaf1" ))))
    '(font-lock-doc-face ((t (:foreground "#65e6b8" ))))
    '(font-lock-function-name-face ((t (:foreground "#36aaf1" ))))
    '(font-lock-keyword-face ((t (:foreground "#a3c1e8" ))))
    '(font-lock-negation-char-face ((t (:foreground "#a3c1e8" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#65e6b8" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#65e6b8" ))))
    '(font-lock-string-face ((t (:foreground "#65e6b8" ))))
    '(font-lock-type-face ((t (:foreground "#36aaf1" :italic t ))))
    '(font-lock-variable-name-face ((t (:foreground "#effbff" ))))
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
    '(menu ((t (:foreground "#bbd0ef" :background "#0d2136" ))))
    '(mode-line ((t (:box "#183c66" :background "#183c66" ))))
    '(mode-line-buffer-id ((t (:foreground "#ffffff" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:box "#183c66" :background "#1b232c" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#b63099" ))))
    '(org-column ((t (:background "#1b232c" ))))
    '(org-column-title ((t (:background "#1b232c" ))))
    '(org-done ((t (:foreground "#a6e22e" ))))
    '(org-hide ((t (:foreground "#0d2136" ))))
    '(org-todo ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f0" :background "#8fbe00" ))))
    '(org-warning ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(region ((t (:background "#183c66" ))))
    '(secondary-selection ((t (:background "#183c66" ))))
    '(show-paren-match-face ((t (:background "#183c66" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
)

(provide-theme 'blue-dawn)
