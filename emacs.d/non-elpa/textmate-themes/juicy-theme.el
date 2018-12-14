;; default {'caret': '#ffffff', 'foreground': '#e3e2e0', 'selection': '#444444', 'findHighlight': '#FFE792', 'bracketContentsOptions': 'underline', 'invisibles': '#3B3A32', 'bracketContentsForeground': '#F8F8F2A5', 'lineHighlight': '#282828', 'bracketsOptions': 'underline', 'tagsOptions': 'stippled_underline', 'findHighlightForeground': '#000000', 'activeGuide': '#9D550FB0', 'background': '#222222', 'selectionBorder': '#282828', 'bracketsForeground': '#F8F8F2A5'}
;; comment {'foreground': '#777777'}
;; string {'foreground': '#3bc7b8'}
;; constant.numeric {'foreground': '#CE1836'}
;; constant.language {'foreground': '#F9D423'}
;; constant.character, constant.other {'foreground': '#F9D423'}
;; variable {'fontStyle': ''}
;; keyword {'foreground': '#EDB92E'}
;; storage {'foreground': '#c3cb4c', 'fontStyle': ''}
;; storage.type {'foreground': '#EDB92E', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#808dd3', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '#808dd3', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#F85931', 'fontStyle': ''}
;; variable.parameter {'foreground': '#808dd3', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#FF4E50', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#c3cb4c', 'fontStyle': ''}
;; support.function {'foreground': '#F85931', 'fontStyle': ''}
;; support.constant {'foreground': '#F85931', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#F85931', 'fontStyle': 'italic'}
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
(deftheme juicy
  "Juicy emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'juicy
    '(trailing-whitespace ((t (:background "#3b3a32"))))
    '(whitespace-trailing ((t (:background "#3b3a32"))))

    '(border ((t (:background "#282828" ))))
    '(css-property ((t (:foreground "#f85931" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#f85931" :italic t ))))
    '(cursor ((t (:background "#ffffff" ))))
    '(default ((t (:foreground "#e3e2e0" :background "#222222" ))))
    '(diff-added ((t (:foreground "#a6e22e" ))))
    '(diff-changed ((t (:foreground "#e6db74" ))))
    '(diff-header ((t (:foreground "#75715e" ))))
    '(diff-hunk-header ((t (:foreground "#75715e" ))))
    '(diff-removed ((t (:foreground "#00a8c6" ))))
    '(font-lock-builtin-face ((t (:foreground "#f85931" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#777777" ))))
    '(font-lock-comment-face ((t (:foreground "#777777" ))))
    '(font-lock-constant-face ((t (:foreground "#f85931" ))))
    '(font-lock-doc-face ((t (:foreground "#3bc7b8" ))))
    '(font-lock-function-name-face ((t (:foreground "#f85931" ))))
    '(font-lock-keyword-face ((t (:foreground "#edb92e" ))))
    '(font-lock-negation-char-face ((t (:foreground "#edb92e" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#3bc7b8" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#3bc7b8" ))))
    '(font-lock-string-face ((t (:foreground "#3bc7b8" ))))
    '(font-lock-type-face ((t (:foreground "#edb92e" :italic t ))))
    '(font-lock-variable-name-face ((t ())))
    '(font-lock-warning-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(fringe ((t (:background "#282828" ))))
    '(highlight ((t (:background "#444444" ))))
    '(hl-line ((t (:background "#282828" ))))
    '(isearch ((t (:foreground "#e6db74" ))))
    '(isearch-fail ((t (:foreground "#00a8c6" ))))
    '(iswitchb-current-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#00a8c6" ))))
    '(iswitchb-single-match ((t (:foreground "#a6e22e" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#e6db74" ))))
    '(linum ((t (:background "#282828" ))))
    '(match ((t (:foreground "#a6e22e" ))))
    '(menu ((t (:foreground "#e3e2e0" :background "#222222" ))))
    '(mode-line ((t (:box "#282828" :background "#444444" ))))
    '(mode-line-buffer-id ((t (:foreground "#ff4e50" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:box "#282828" :background "#282828" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#777777" ))))
    '(org-column ((t (:background "#282828" ))))
    '(org-column-title ((t (:background "#282828" ))))
    '(org-done ((t (:foreground "#a6e22e" ))))
    '(org-hide ((t (:foreground "#222222" ))))
    '(org-todo ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f0" :background "#8fbe00" ))))
    '(org-warning ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
    '(region ((t (:background "#444444" ))))
    '(secondary-selection ((t (:background "#444444" ))))
    '(show-paren-match-face ((t (:background "#444444" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f0" :background "#00a8c6" ))))
)

(provide-theme 'juicy)