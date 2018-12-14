;; default {'caret': '#F8F8F0', 'foreground': '#F8F8F2', 'selection': '#49483E', 'findHighlight': '#FFE792', 'bracketContentsOptions': 'underline', 'invisibles': '#3B3A32', 'bracketContentsForeground': '#F8F8F2A5', 'lineHighlight': '#3E3D32', 'bracketsOptions': 'underline', 'tagsOptions': 'stippled_underline', 'findHighlightForeground': '#000000', 'activeGuide': '#9D550FB0', 'background': '#282a36', 'selectionBorder': '#222218', 'bracketsForeground': '#F8F8F2A5'}
;; comment {'foreground': '#6272a4', 'fontStyle': ''}
;; string {'foreground': '#f1fa8c'}
;; constant.numeric {'foreground': '#bd93f9'}
;; constant.language {'foreground': '#bd93f9'}
;; constant.character, constant.other {'foreground': '#bd93f9'}
;; variable {'fontStyle': ''}
;; keyword {'foreground': '#ff79c6'}
;; meta.tag, declaration.tag {'foreground': '#ff79c6', 'fontStyle': ''}
;; storage {'foreground': '#ff79c6', 'fontStyle': ''}
;; storage.type {'foreground': '#8be9fd', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#50fa7b', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '#50fa7b', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#50fa7b', 'fontStyle': ''}
;; variable.parameter {'foreground': '#ffb86c', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#ff79c6', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#50fa7b', 'fontStyle': ''}
;; support.function {'foreground': '#8be9fd', 'fontStyle': ''}
;; support.constant {'foreground': '#6be5fd', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#66d9ef', 'fontStyle': ' italic'}
;; support.other.variable {'fontStyle': ''}
;; invalid {'foreground': '#F8F8F0', 'fontStyle': '', 'background': '#ff79c6'}
;; invalid.deprecated {'foreground': '#F8F8F0', 'background': '#bd93f9'}
;; meta.structure.dictionary.json string.quoted.double.json {'foreground': '#CFCFC2'}
;; meta.diff, meta.diff.header {'foreground': '#6272a4'}
;; markup.deleted {'foreground': '#ff79c6'}
;; markup.inserted {'foreground': '#50fa7b'}
;; markup.changed {'foreground': '#E6DB74'}
;; constant.numeric.line-number.find-in-files - match {'foreground': '#bd93f9'}
;; entity.name.filename {'foreground': '#E6DB74'}
;; message.error {'foreground': '#F83333'}
(deftheme dracula
  "Dracula emacs theme autoconverted from the textMate theme by Zeno Rocha")
(custom-theme-set-faces
  'dracula
    '(trailing-whitespace ((t (:background "#3b3a32"))))
    '(whitespace-trailing ((t (:background "#3b3a32"))))

    '(border ((t (:background "#3e3d32" ))))
    '(css-property ((t (:foreground "#66d9ef" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#66d9ef" :italic t ))))
    '(cursor ((t (:background "#f8f8f0" ))))
    '(default ((t (:foreground "#f8f8f2" :background "#282a36" ))))
    '(diff-added ((t (:foreground "#50fa7b" ))))
    '(diff-changed ((t (:foreground "#e6db74" ))))
    '(diff-header ((t (:foreground "#6272a4" ))))
    '(diff-hunk-header ((t (:foreground "#6272a4" ))))
    '(diff-removed ((t (:foreground "#ff79c6" ))))
    '(font-lock-builtin-face ((t (:foreground "#8be9fd" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#6272a4" ))))
    '(font-lock-comment-face ((t (:foreground "#6272a4" ))))
    '(font-lock-constant-face ((t (:foreground "#6be5fd" ))))
    '(font-lock-doc-face ((t (:foreground "#f1fa8c" ))))
    '(font-lock-function-name-face ((t (:foreground "#8be9fd" ))))
    '(font-lock-keyword-face ((t (:foreground "#ff79c6" ))))
    '(font-lock-negation-char-face ((t (:foreground "#ff79c6" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#f1fa8c" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#f1fa8c" ))))
    '(font-lock-string-face ((t (:foreground "#f1fa8c" ))))
    '(font-lock-type-face ((t (:foreground "#8be9fd" :italic t ))))
    '(font-lock-variable-name-face ((t ())))
    '(font-lock-warning-face ((t (:foreground "#f8f8f0" :background "#ff79c6" ))))
    '(fringe ((t (:background "#3e3d32" ))))
    '(highlight ((t (:background "#49483e" ))))
    '(hl-line ((t (:background "#3e3d32" ))))
    '(isearch ((t (:foreground "#e6db74" ))))
    '(isearch-fail ((t (:foreground "#ff79c6" ))))
    '(iswitchb-current-match ((t (:foreground "#50fa7b" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#ff79c6" ))))
    '(iswitchb-single-match ((t (:foreground "#50fa7b" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#e6db74" ))))
    '(linum ((t (:background "#3e3d32" ))))
    '(match ((t (:foreground "#50fa7b" ))))
    '(menu ((t (:foreground "#f8f8f2" :background "#282a36" ))))
    '(minibuffer-prompt ((t (:foreground "#ff79c6" ))))
    '(mode-line ((t (:box "#222218" :background "#49483e" ))))
    '(mode-line-buffer-id ((t (:foreground "#ff79c6" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:box "#222218" :background "#3e3d32" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#6272a4" ))))
    '(org-column ((t (:background "#3e3d32" ))))
    '(org-column-title ((t (:background "#3e3d32" ))))
    '(org-done ((t (:foreground "#50fa7b" ))))
    '(org-hide ((t (:foreground "#282a36" ))))
    '(org-todo ((t (:foreground "#f8f8f0" :background "#ff79c6" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f0" :background "#bd93f9" ))))
    '(org-warning ((t (:foreground "#f8f8f0" :background "#ff79c6" ))))
    '(region ((t (:background "#49483e" ))))
    '(secondary-selection ((t (:background "#49483e" ))))
    '(show-paren-match-face ((t (:background "#49483e" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f0" :background "#ff79c6" ))))
)

(provide-theme 'dracula)
