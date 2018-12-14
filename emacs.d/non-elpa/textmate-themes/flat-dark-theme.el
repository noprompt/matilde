;; default {'caret': '#B2B8C2', 'foreground': '#B2B8C2', 'selection': '#404b56', 'invisibles': '#B2B8C2', 'lineHighlight': '#2e353f', 'background': '#292f39'}
;; comment {'foreground': '#52565E', 'fontStyle': ' italic', 'background': ''}
;; string {'foreground': '#17bc9c'}
;; constant.numeric {'foreground': '#a26bbe'}
;; constant.language {'foreground': '#a26bbe'}
;; constant.character, constant.other {'foreground': '#a36bbe'}
;; variable {'foreground': '#48a3df', 'fontStyle': ''}
;; keyword {'foreground': '#2e8dcd'}
;; storage {'foreground': '#2e8dcd', 'fontStyle': ''}
;; storage.type {'foreground': '#2e8dcd'}
;; entity.name.class {'foreground': '#17bc9c'}
;; entity.other.inherited-class {'foreground': '#17bc9c'}
;; entity.name.function {'foreground': '#17bc9c'}
;; variable.parameter {'foreground': '#792A9C'}
;; entity.name.tag {'foreground': '#49a3df'}
;; entity.other.attribute-name {'foreground': '#17bc9c'}
;; support.function {'foreground': '#49a3df', 'fontStyle': ''}
;; support.constant {'foreground': '#49a3df', 'fontStyle': ''}
;; support.type, support.class {'foreground': '#49a3df'}
;; support.other.variable {'foreground': '#b1b8c1', 'fontStyle': ' bold'}
;; invalid {'foreground': '#b1b8c1', 'fontStyle': ' bold', 'background': '#DF332D'}
;; invalid.deprecated {'foreground': '#B2B8C2', 'fontStyle': ' bold', 'background': '#9252B0'}
(deftheme flat-dark
  "Flat Dark emacs theme autoconverted from the textMate theme by Ricardo Muniz Crespo")
(custom-theme-set-faces
  'flat-dark
    '(trailing-whitespace ((t (:background "#b2b8c2"))))
    '(whitespace-trailing ((t (:background "#b2b8c2"))))

    '(border ((t (:background "#2e353f" ))))
    '(css-property ((t (:foreground "#49a3df" ))))
    '(css-proprietary-property ((t (:foreground "#49a3df" ))))
    '(cursor ((t (:background "#b2b8c2" ))))
    '(default ((t (:foreground "#b2b8c2" :background "#292f39" ))))
    '(font-lock-builtin-face ((t (:foreground "#49a3df" ))))
