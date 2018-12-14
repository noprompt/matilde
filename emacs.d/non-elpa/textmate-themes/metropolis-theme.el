;; default {'caret': '#F8F8F0', 'foreground': '#F8F8F2', 'selection': '#5c5c5c', 'invisibles': '#49483E', 'lineHighlight': '#49483E', 'background': '#17314a'}
;; comment {'foreground': '#000000', 'fontStyle': '   italic'}
;; string {'foreground': '#96ceb4'}
;; constant.numeric {'foreground': '#fff3c5'}
;; constant.language {'foreground': '#ff6f6a'}
;; constant.character, constant.other {'foreground': '#90cc99'}
;; variable {'foreground': '#c8c5ff'}
;; keyword {'foreground': '#d09399'}
;; storage {'foreground': '#F92672', 'fontStyle': ''}
;; storage.type {'foreground': '#66D9EF', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#bfccec', 'fontStyle': ' underline'}
;; entity.other.inherited-class {'foreground': '#9b5c2e', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#ffd2a7', 'fontStyle': ''}
;; variable.parameter {'foreground': '#c0c5fe', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#c44a87', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#A6E22E', 'fontStyle': ''}
;; support.function {'foreground': '#4f7377', 'fontStyle': ''}
;; support.constant {'foreground': '#28aaaa', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#a06a34'}
;; support.other.variable {'fontStyle': ''}
;; source.ruby {'foreground': '#c5c8c6'}
;; constant.other.symbol.ruby.19syntax {'foreground': '#99cc99'}
;; variable.other.constant.ruby {'foreground': '#c6c5e2'}
;; entity.name.type.class.ruby {'foreground': '#ffff9a'}
;; entity.name.type.module.ruby {'foreground': '#ffeb9b'}
;; source.ruby.embedded.source {'foreground': '#ededed'}
;; source.ruby.embedded.source punctuation.section.embedded.ruby {'foreground': '#0b9ba0'}
;; storage.modifier.import.java {'foreground': '#95cbfe'}
;; storage.modifier.java {'foreground': '#a0d2ff'}
;; entity.name.type.class.java {'foreground': '#ffffb6', 'fontStyle': ' underline'}
;; storage.type.primitive.array.java {'foreground': '#cfcb82'}
;; storage.type.object.array.java {'foreground': '#cfcb90'}
;; constant.numeric.java {'foreground': '#f770fd'}
;; storage.type.java {'foreground': '#cfcb89'}
;; keyword.operator.dereference.java {'foreground': '#ededed'}
(deftheme metropolis
  "Metropolis emacs theme autoconverted from the textMate theme by Adi")
(custom-theme-set-faces
  'metropolis
    '(trailing-whitespace ((t (:background "#49483e"))))
    '(whitespace-trailing ((t (:background "#49483e"))))

    '(border ((t (:background "#49483e" ))))
    '(css-property ((t (:foreground "#a06a34" ))))
    '(css-proprietary-property ((t (:foreground "#a06a34" ))))
    '(cursor ((t (:background "#f8f8f0" ))))
    '(default ((t (:foreground "#f8f8f2" :background "#17314a" ))))
    '(font-lock-builtin-face ((t (:foreground "#4f7377" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#000000" :italic t ))))
    '(font-lock-comment-face ((t (:foreground "#000000" :italic t ))))
    '(font-lock-constant-face ((t (:foreground "#28aaaa" ))))
    '(font-lock-doc-face ((t (:foreground "#96ceb4" ))))
    '(font-lock-function-name-face ((t (:foreground "#4f7377" ))))
    '(font-lock-keyword-face ((t (:foreground "#d09399" ))))
    '(font-lock-negation-char-face ((t (:foreground "#d09399" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#96ceb4" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#96ceb4" ))))
    '(font-lock-string-face ((t (:foreground "#96ceb4" ))))
    '(font-lock-type-face ((t (:foreground "#66d9ef" :italic t ))))
    '(font-lock-variable-name-face ((t (:foreground "#c8c5ff" ))))
    '(fringe ((t (:background "#49483e" ))))
    '(highlight ((t (:background "#5c5c5c" ))))
    '(hl-line ((t (:background "#49483e" ))))
    '(linum ((t (:background "#49483e" ))))
    '(menu ((t (:foreground "#f8f8f2" :background "#17314a" ))))
    '(mode-line ((t (:background "#5c5c5c" ))))
    '(mode-line-buffer-id ((t (:foreground "#c44a87" ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#49483e" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#000000" :italic t ))))
    '(org-column ((t (:background "#49483e" ))))
    '(org-column-title ((t (:background "#49483e" ))))
    '(org-hide ((t (:foreground "#17314a" ))))
    '(region ((t (:background "#5c5c5c" ))))
    '(secondary-selection ((t (:background "#5c5c5c" ))))
    '(show-paren-match-face ((t (:background "#5c5c5c" ))))
)

(provide-theme 'metropolis)
