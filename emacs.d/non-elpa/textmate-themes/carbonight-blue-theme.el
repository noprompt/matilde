;; default {'caret': '#F83333', 'foreground': '#979797', 'selection': '#433131', 'findHighlight': '#3aa6d0', 'bracketContentsOptions': 'bold underline', 'invisibles': '#3B3A32', 'bracketContentsForeground': '#ffffff', 'lineHighlight': '#3B3633', 'bracketsOptions': 'bold underline', 'tagsOptions': 'stippled_underline', 'findHighlightForeground': '#000000', 'activeGuide': '#963131', 'background': '#25292a', 'selectionBorder': '#222218', 'bracketsForeground': '#ffffff'}
;; comment {'foreground': '#4B4B4B'}
;; string {'foreground': '#4D81A5'}
;; constant.numeric {'foreground': '#4D81A5'}
;; constant.language {'foreground': '#979797'}
;; constant.character, constant.other {'foreground': '#979797'}
;; variable {'fontStyle': ''}
;; keyword {'foreground': ''}
;; storage {'foreground': '#9E9E9E', 'fontStyle': ''}
;; storage.type {'foreground': '#979797', 'fontStyle': ''}
;; entity.name.class {'foreground': '#979797', 'fontStyle': 'underline'}
;; entity.other.inherited-class {'foreground': '', 'fontStyle': 'underline'}
;; entity.name.function {'foreground': '#979797', 'fontStyle': ''}
;; variable.parameter {'foreground': '#979797', 'fontStyle': ''}
;; entity.name.tag {'foreground': '#979797', 'fontStyle': ''}
;; entity.other.attribute-name {'foreground': '#C4C4C4', 'fontStyle': ''}
;; support.function {'foreground': '#979797', 'fontStyle': ''}
;; support.constant {'foreground': '#979797', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#979797', 'fontStyle': ''}
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
;; string punctuation.section.embedded.ruby {'foreground': '#d9d9d9'}
;; string source.ruby.embedded.source {'foreground': '#1A4E72'}
(deftheme carbonight-blue
  "Carbonight Blue emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'carbonight-blue
    '(trailing-whitespace ((t (:background "#3b3a32"))))
    '(whitespace-trailing ((t (:background "#3b3a32"))))

    '(border ((t (:background "#3b3633" ))))
    '(css-property ((t (:foreground "#979797" ))))
    '(css-proprietary-property ((t (:foreground "#979797" ))))
    '(cursor ((t (:background "#f83333" ))))
    '(default ((t (:foreground "#979797" :background "#25292a" ))))
    '(diff-added ((t (:foreground "#a6e22e" ))))
    '(diff-changed ((t (:foreground "#e6db74" ))))
    '(diff-header ((t (:foreground "#75715e" ))))
    '(diff-hunk-header ((t (:foreground "#75715e" ))))
    '(diff-removed ((t (:foreground "#00a8c6" ))))
    '(font-lock-builtin-face ((t (:foreground "#979797" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#4b4b4b" ))))
    '(font-lock-comment-face ((t (:foreground "#4b4b4b" ))))
    '(font-lock-constant-face ((t (:foreground "#979797" ))))
    '(font-lock-doc-face ((t (:foreground "#4d81a5" ))))
    '(font-lock-function-name-face ((t (:foreground "#979797" ))))
