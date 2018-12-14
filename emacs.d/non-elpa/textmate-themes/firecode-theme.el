;; default {'caret': '#F8F8F0', 'foreground': '#F8F8F2', 'selection': '#515151', 'invisibles': '#3B3A32', 'lineHighlight': '#3D3D3D55', 'background': '#191919'}
;; comment {'foreground': '#6d6d6d'}
;; string {'foreground': '#97d8ea'}
;; constant.numeric {'foreground': '#fc9354'}
;; constant.language {'foreground': '#fc9354'}
;; constant.character, constant.other {'foreground': '#fc9354'}
;; variable {'foreground': ''}
;; keyword {'foreground': '#f63249'}
;; storage {'foreground': '#f63249', 'fontStyle': ''}
;; storage.type {'foreground': '#73c3d2', 'fontStyle': 'italic'}
;; entity.name.class {'foreground': '#2e98e2', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '#2e98e2', 'fontStyle': 'italic underline'}
;; entity.name.function {'foreground': '#2e98e2', 'fontStyle': ''}
;; variable.parameter {'foreground': '#fc9354', 'fontStyle': 'italic'}
;; entity.name.tag {'foreground': '#f63249', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#2e98e2', 'fontStyle': ''}
;; support.function {'foreground': '#8ecfdb', 'fontStyle': ''}
;; support.constant {'foreground': '#8ecfdb', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#8ecfdb', 'fontStyle': 'italic'}
;; support.other.variable {'fontStyle': ''}
;; support.other.namespace, entity.name.type.namespace {'foreground': '#FFB2F9'}
;; support.other.namespace.use-as.php {'foreground': '#66D9EF'}
;; variable.language.namespace.php {'foreground': '#D66990'}
;; punctuation.separator.inheritance.php {'foreground': '#F92672'}
;; support.function.misc.css, support.constant.property-value.css, support.constant.font-name.css {'foreground': '#FFEE99'}
;; meta.tag.template.value.twig, meta.tag.template.block.twig {'foreground': '#CD5AC5'}
;; keyword.control.twig {'foreground': '#E05D8C'}
;; variable.other.twig {'foreground': '#E5A5E0'}
;; variable.other.property.twig {'foreground': '#FFE1FC'}
;; constant.language.twig {'foreground': '#FFD2A6'}
;; constant.numeric.twig {'foreground': '#FFD0FB'}
;; support.function.twig {'foreground': '#90E7F7'}
;; meta.function-call.other.twig {'foreground': '#FAB85A'}
;; meta.function-call.twig {'foreground': '#FAB85A'}
;; invalid {'foreground': '#F8F8F0', 'fontStyle': '', 'background': '#f92649'}
;; invalid.deprecated {'foreground': '#F8F8F0', 'background': '#FF80F4'}
(deftheme firecode
  "FireCode emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'firecode
    '(trailing-whitespace ((t (:background "#3b3a32"))))
    '(whitespace-trailing ((t (:background "#3b3a32"))))

    '(border ((t (:background "#252525" ))))
    '(css-property ((t (:foreground "#8ecfdb" :italic t ))))
    '(css-proprietary-property ((t (:foreground "#8ecfdb" :italic t ))))
    '(cursor ((t (:background "#f8f8f0" ))))
    '(default ((t (:foreground "#f8f8f2" :background "#191919" ))))
    '(font-lock-builtin-face ((t (:foreground "#8ecfdb" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#6d6d6d" ))))
    '(font-lock-comment-face ((t (:foreground "#6d6d6d" ))))
    '(font-lock-constant-face ((t (:foreground "#8ecfdb" ))))
    '(font-lock-doc-face ((t (:foreground "#97d8ea" ))))
    '(font-lock-function-name-face ((t (:foreground "#8ecfdb" ))))
    '(font-lock-keyword-face ((t (:foreground "#f63249" ))))
    '(font-lock-negation-char-face ((t (:foreground "#f63249" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#97d8ea" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#97d8ea" ))))
    '(font-lock-string-face ((t (:foreground "#97d8ea" ))))
    '(font-lock-type-face ((t (:foreground "#73c3d2" :italic t ))))
