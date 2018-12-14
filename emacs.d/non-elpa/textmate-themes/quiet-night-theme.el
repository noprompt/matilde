;; default {'caret': '#FFFFFF', 'foreground': '#FFFFFF', 'selection': '#4D97FF54', 'invisibles': '#BFBFBF', 'lineHighlight': '#00000012', 'background': '#00355B'}
;; keyword {'foreground': '#3EABFF', 'fontStyle': ''}
;; variable,storage {'foreground': '#3EABFF', 'fontStyle': ''}
;; comment {'foreground': '#004080CF', 'fontStyle': 'italic'}
;; constant {'foreground': '#C5060B', 'fontStyle': 'bold'}
;; constant.numeric {'foreground': '#FF8000', 'fontStyle': ''}
;; constant {'foreground': '#FF8000', 'fontStyle': ''}
;; entity.name {'foreground': '#3EABFF', 'fontStyle': ''}
;; string {'foreground': '#4DFF00', 'fontStyle': ''}
;; constant.character.escape, string source {'foreground': '#26B31A', 'fontStyle': ''}
;; meta.preprocessor {'foreground': '#1A921C', 'fontStyle': ''}
;; keyword.control.import {'foreground': '#0C450D', 'fontStyle': 'bold'}
;; entity.name.function, support.function.any-method {'foreground': '#D0F639', 'fontStyle': ''}
;; entity.name.type {'foreground': '#D0F639', 'fontStyle': ''}
;; entity.other.inherited-class {'fontStyle': 'italic'}
;; variable.parameter {'foreground': '#FFFFFF', 'fontStyle': 'italic'}
;; storage.type.method {'foreground': '#70727E', 'fontStyle': ''}
;; meta.section entity.name.section, declaration.section entity.name.section {'fontStyle': 'italic'}
;; support.function {'foreground': '#3C4C72', 'fontStyle': ''}
;; support.class, support.type {'foreground': '#3EABFF', 'fontStyle': ''}
;; support.constant {'foreground': '#D0F639', 'fontStyle': ''}
;; support.variable {'foreground': '#D0F639', 'fontStyle': ''}
;; keyword.operator.js {'foreground': '#687687'}
;; invalid {'foreground': '#FFFFFF', 'background': '#990000'}
;; invalid.deprecated.trailing-whitespace {'background': '#FFD0D0'}
;; text source, string.unquoted {'background': '#0000000D'}
;; text source string.unquoted, text source text source {'background': '#0000000F'}
;; meta.tag.preprocessor.xml {'foreground': '#68685B', 'fontStyle': ''}
;; meta.tag.sgml.doctype, meta.tag.sgml.doctype entity, meta.tag.sgml.doctype string, meta.tag.preprocessor.xml, meta.tag.preprocessor.xml entity, meta.tag.preprocessor.xml string {'foreground': '#888888', 'fontStyle': ''}
;; string.quoted.docinfo.doctype.DTD {'fontStyle': 'italic'}
;; meta.tag, declaration.tag {'foreground': '#1C02FF', 'fontStyle': ''}
;; entity.name.tag {'fontStyle': 'bold'}
;; entity.other.attribute-name {'fontStyle': 'italic'}
;; markup.heading {'foreground': '#0C07FF', 'fontStyle': 'bold'}
;; markup.quote {'foreground': '#000000', 'fontStyle': 'italic'}
;; markup.list {'foreground': '#B90690'}
(deftheme quiet-night
  "Quiet Night emacs theme autoconverted from the textMate theme by Chris Thomas")
(custom-theme-set-faces
  'quiet-night
    '(trailing-whitespace ((t (:background "#bfbfbf"))))
    '(whitespace-trailing ((t (:background "#bfbfbf"))))

    '(border ((t (:background "#003155" ))))
    '(css-property ((t (:foreground "#3eabff" ))))
    '(css-proprietary-property ((t (:foreground "#3eabff" ))))
    '(cursor ((t (:background "#ffffff" ))))
    '(default ((t (:foreground "#ffffff" :background "#00355b" ))))
    '(font-lock-builtin-face ((t (:foreground "#3c4c72" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#003e79" :italic t ))))
    '(font-lock-comment-face ((t (:foreground "#003e79" :italic t ))))
    '(font-lock-constant-face ((t (:foreground "#d0f639" ))))
    '(font-lock-doc-face ((t (:foreground "#4dff00" ))))
    '(font-lock-function-name-face ((t (:foreground "#3c4c72" ))))
    '(font-lock-keyword-face ((t (:foreground "#3eabff" ))))
    '(font-lock-negation-char-face ((t (:foreground "#3eabff" ))))
    '(font-lock-preprocessor-face ((t (:foreground "#1a921c" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#4dff00" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#4dff00" ))))
    '(font-lock-string-face ((t (:foreground "#4dff00" ))))
    '(font-lock-type-face ((t (:foreground "#3eabff" ))))
    '(font-lock-variable-name-face ((t (:foreground "#3eabff" ))))
    '(font-lock-warning-face ((t (:foreground "#ffffff" :background "#990000" ))))
    '(fringe ((t (:background "#003155" ))))
    '(highlight ((t (:background "#195591" ))))
    '(hl-line ((t (:background "#003155" ))))
    '(linum ((t (:background "#003155" ))))
    '(menu ((t (:foreground "#ffffff" :background "#00355b" ))))
    '(minibuffer-prompt ((t (:foreground "#1c02ff" ))))
    '(mode-line ((t (:background "#195591" ))))
    '(mode-line-buffer-id ((t (:bold t ))))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#003155" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#003e79" :italic t ))))
    '(org-column ((t (:background "#003155" ))))
    '(org-column-title ((t (:background "#003155" ))))
    '(org-hide ((t (:foreground "#00355b" ))))
    '(org-todo ((t (:foreground "#ffffff" :background "#990000" ))))
    '(org-upcoming-deadline ((t (:foreground "#ffffff" :background "#990000" ))))
    '(org-warning ((t (:foreground "#ffffff" :background "#990000" ))))
    '(region ((t (:background "#195591" ))))
    '(secondary-selection ((t (:background "#195591" ))))
    '(show-paren-match-face ((t (:background "#195591" ))))
    '(show-paren-mismatch-face ((t (:foreground "#ffffff" :background "#990000" ))))
)

(provide-theme 'quiet-night)
