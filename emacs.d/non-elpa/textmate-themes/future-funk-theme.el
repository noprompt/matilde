;; default {'caret': '#DBDBDB', 'foreground': '#F0F6FF', 'selection': '#395B6E', 'findHighlight': '#abf4ad', 'bracketContentsOptions': 'solid', 'invisibles': '#BFBFBF', 'bracketContentsForeground': '#00B3FF', 'lineHighlight': '#242424', 'bracketsOptions': 'solid', 'findHighlightForeground': '#0c690e', 'background': '#212121', 'bracketsForeground': '#00B3FF'}
;; comment {'foreground': '#B6C6D4', 'fontStyle': ''}
;; string {'foreground': '#F0F07A', 'fontStyle': ''}
;; constant.numeric {'foreground': '#7BD827'}
;; constant.language {'foreground': '#FFAA00', 'fontStyle': ''}
;; constant.character, constant.other {'foreground': '#ffffff', 'fontStyle': ''}
;; variable.language, variable.other {'foreground': '#53B7ED'}
;; keyword {'foreground': '#febe5a', 'fontStyle': 'bold'}
;; storage {'foreground': '#A3D295', 'fontStyle': 'bold'}
;; entity.name.class {'fontStyle': ''}
;; entity.other.inherited-class {'fontStyle': ''}
;; entity.name.tag {'foreground': '#7BD827', 'fontStyle': ''}
;; entity.name.function {'foreground': '#ffffff', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#708E67', 'fontStyle': ''}
;; support.function {'foreground': '#ffffff', 'fontStyle': 'bold'}
;; meta.function-call {'foreground': '#ffffff', 'fontStyle': ''}
;; meta.function-call.object {'foreground': '#ececec', 'fontStyle': 'bold'}
;; support.constant {'fontStyle': ''}
;; support.type, support.class {'fontStyle': ''}
;; support.other.variable {'fontStyle': ''}
;; storage.type {'foreground': '#73FF8C', 'fontStyle': 'bold'}
;; invalid {'foreground': '#FF0000', 'fontStyle': ''}
;; bracket.quote {'foreground': '', 'background': '#6ca0d1'}
;; bracket.curly {'foreground': '', 'background': '#6ca0d1'}
;; bracket.round {'foreground': '', 'background': '#6ca0d1'}
;; bracket.square {'foreground': '', 'background': '#6ca0d1'}
;; bracket.angle {'foreground': '', 'background': '#6ca0d1'}
;; bracket.tag {'background': '#6ca0d1'}
;; invalid.illegal.missing-asterisk.phpdoc {'foreground': '#FFC1A8', 'fontStyle': 'italic'}
;; invalid.deprecated {'fontStyle': 'italic underline', 'background': '#EFCFCF'}
;; invalid.illegal {'foreground': '#F9CFCE', 'fontStyle': 'italic', 'background': ''}
;; default {'fontStyle': ''}
;; meta.selector, meta.selector entity, meta.selector entity punctuation, entity.name.tag.css {'foreground': '#00B7FF', 'fontStyle': ''}
;; meta.property-name, support.type.property-name {'foreground': '#F0F6FA'}
;; meta.property-value constant.numeric, meta.property-value constant, meta.property-value keyword {'foreground': '#7BD827', 'fontStyle': '', 'background': ''}
;; meta.selector entity.name.tag.css {'foreground': '#9CEFFF', 'fontStyle': '', 'background': ''}
;; meta.selector entity.other.attribute-name.class.css, entity.other.attribute-name.id.css {'foreground': '#53B7ED', 'fontStyle': '', 'background': ''}
;; entity.other.attribute-name.pseudo-class {'foreground': '#73FF8C', 'fontStyle': '', 'background': ''}
;; support.constant.property-value {'foreground': '#9CFFCD', 'fontStyle': '', 'background': ''}
;; constant.other {'foreground': '#7BD827', 'fontStyle': '', 'background': ''}
;; keyword.other.unit {'foreground': '#7BD827', 'fontStyle': '', 'background': ''}
;; support.function.misc {'foreground': '#FFA3D3', 'fontStyle': 'bold', 'background': ''}
;; meta.selector.css {'foreground': '#ffffff', 'fontStyle': ''}
;; default {'fontStyle': ''}
;; meta.tag.sgml.doctype {'foreground': '#ffffff', 'fontStyle': ''}
;; entity.name.tag {'foreground': '#7BD827', 'fontStyle': '', 'background': ''}
;; meta.tag string punctuation {'foreground': '#ffffff', 'fontStyle': ''}
;; punctuation.definition.tag {'foreground': '#7BD827', 'fontStyle': ''}
;; constant.character.entity {'foreground': '#53B7ED', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#53B7ED', 'fontStyle': ''}
;; meta.tag string.quoted, meta.tag string.quoted constant.character.entity {'foreground': '#F0F07A', 'fontStyle': ''}
;; comment.block.html, punctuation.definition.commment.html {'foreground': '#ACE2F2', 'fontStyle': ''}
(deftheme future-funk
  "Future Funk emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'future-funk
    '(trailing-whitespace ((t (:background "#bfbfbf"))))
    '(whitespace-trailing ((t (:background "#bfbfbf"))))

    '(border ((t (:background "#242424" ))))
    '(css-property ((t (:foreground "#f0f6fa" ))))
    '(css-proprietary-property ((t (:foreground "#f0f6fa" ))))
    '(css-selector ((t (:foreground "#ffffff" ))))
    '(cursor ((t (:background "#dbdbdb" ))))
    '(default ((t (:foreground "#f0f6ff" :background "#212121" ))))
    '(font-lock-builtin-face ((t (:foreground "#ffffff" :bold t ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#b6c6d4" ))))
    '(font-lock-comment-face ((t (:foreground "#b6c6d4" ))))
    '(font-lock-constant-face ((t ())))
    '(font-lock-doc-face ((t (:foreground "#f0f07a" ))))
    '(font-lock-function-name-face ((t (:foreground "#ffffff" :bold t ))))
    '(font-lock-keyword-face ((t (:foreground "#febe5a" :bold t ))))
    '(font-lock-negation-char-face ((t (:foreground "#febe5a" :bold t ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#f0f07a" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#f0f07a" ))))
    '(font-lock-string-face ((t (:foreground "#f0f07a" ))))
    '(font-lock-type-face ((t (:foreground "#73ff8c" :bold t ))))
    '(font-lock-variable-name-face ((t (:foreground "#53b7ed" ))))
