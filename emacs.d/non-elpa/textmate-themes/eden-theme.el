;; default {'caret': '#AEAFAD', 'foreground': '#C5C8C6', 'selection': '#373B41', 'invisibles': '#4B4E55', 'lineHighlight': '#282A2E', 'background': '#191919'}
;; comment {'foreground': '#666'}
;; keyword.operator.class, constant.other, source.php.embedded.line {'foreground': '#CED1CF', 'fontStyle': ''}
;; variable, support.other.variable, string.other.link, string.regexp, entity.name.tag, entity.other.attribute-name, meta.tag, declaration.tag {'foreground': '#56d457'}
;; constant.numeric, constant.language, support.constant, constant.character, variable.parameter, punctuation.section.embedded, keyword.other.unit {'foreground': '#b8a0df', 'fontStyle': ''}
;; entity.name.class, entity.name.type.class, support.type, support.class {'foreground': '#31d4be', 'fontStyle': ''}
;; string, constant.other.symbol, entity.other.inherited-class, markup.heading {'foreground': '#6efbb0', 'fontStyle': ''}
;; keyword.operator, constant.other.color {'foreground': '#9ad3cd'}
;; entity.name.function, meta.function-call, support.function, keyword.other.special-method, meta.block-level {'foreground': '#81A2BE', 'fontStyle': ''}
;; keyword, storage, storage.type, entity.name.tag.css {'foreground': '#72b700', 'fontStyle': ''}
;; invalid {'foreground': '#CED2CF', 'fontStyle': '', 'background': '#DF5F5F'}
;; meta.separator {'foreground': '#CED2CF', 'background': '#82A3BF'}
;; invalid.deprecated {'foreground': '#CED2CF', 'fontStyle': '', 'background': '#B798BF'}
;; sublimelinter.mark.warning {'foreground': '#DDB700'}
;; sublimelinter.mark.error {'foreground': '#D02000'}
;; sublimelinter.gutter-mark {'foreground': '#FFFFFF'}
(deftheme eden
  "Eden emacs theme autoconverted from the textMate theme by Saad Quadri")
(custom-theme-set-faces
  'eden
    '(trailing-whitespace ((t (:background "#4b4e55"))))
    '(whitespace-trailing ((t (:background "#4b4e55"))))

    '(border ((t (:background "#282a2e" ))))
    '(css-property ((t (:foreground "#31d4be" ))))
    '(css-proprietary-property ((t (:foreground "#31d4be" ))))
    '(cursor ((t (:background "#aeafad" ))))
    '(default ((t (:foreground "#c5c8c6" :background "#191919" ))))
    '(font-lock-builtin-face ((t (:foreground "#81a2be" ))))
