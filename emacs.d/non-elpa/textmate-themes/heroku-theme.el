;; default {'caret': '#FFFFFF', 'foreground': '#8584AE', 'selection': '#FFFFFC', 'invisibles': '#62548B', 'lineHighlight': '#FFFFFF12', 'background': '#1B1B24'}
;; comment {'foreground': '#62548B', 'fontStyle': 'italic'}
;; keyword, storage {'foreground': '#A292FF', 'fontStyle': ''}
;; meta.class.ruby {'foreground': '#09AFED'}
;; constant.numeric {'foreground': '#8584AE', 'fontStyle': ''}
;; source.ruby.rails {'foreground': '#8584AE'}
;; constant {'foreground': '#6DBA09', 'fontStyle': ''}
;; constant.language {'foreground': '#09AFED', 'fontStyle': ''}
;; variable.language, variable.other {'foreground': '#C13333', 'fontStyle': ''}
;; string {'foreground': '#6DBA09', 'fontStyle': ''}
;; constant.character.escape, string source {'foreground': '#FFA500', 'fontStyle': ''}
;; meta.preprocessor {'foreground': '#1A921C', 'fontStyle': ''}
;; keyword.control.import {'foreground': '#0C450D', 'fontStyle': ''}
;; entity.name.function, support.function.any-method {'foreground': '#09AFED', 'fontStyle': ''}
;; entity.name.type {'fontStyle': 'underline'}
;; entity.other.inherited-class {'fontStyle': 'italic'}
;; variable.parameter {'fontStyle': 'italic'}
;; storage.type.method {'foreground': '#70727E', 'fontStyle': ''}
;; meta.section entity.name.section, declaration.section entity.name.section {'fontStyle': 'italic'}
;; support.function {'foreground': '#09AFED', 'fontStyle': ''}
;; support.class, support.type {'foreground': '#09AFED', 'fontStyle': ''}
;; support.constant {'foreground': '#06960E', 'fontStyle': ''}
;; support.variable {'foreground': '#09AFED', 'fontStyle': ''}
;; keyword.operator.js {'foreground': '#B4F5FE'}
;; invalid {'foreground': '#FFFFFF', 'background': '#990000'}
;; invalid.deprecated.trailing-whitespace {'background': '#FFD0D0'}
;; text source, string.unquoted {'foreground': '#8584AE', 'fontStyle': '', 'background': '#0000000D'}
;; text source string.unquoted, text source text source {'foreground': '#C13333', 'background': '#0000000F'}
;; meta.tag.preprocessor.xml {'foreground': '#68685B', 'fontStyle': ''}
;; meta.tag.sgml.doctype, meta.tag.sgml.doctype entity, meta.tag.sgml.doctype string, meta.tag.preprocessor.xml, meta.tag.preprocessor.xml entity, meta.tag.preprocessor.xml string {'foreground': '#C13333', 'fontStyle': ''}
;; string.quoted.docinfo.doctype.DTD {'fontStyle': 'italic'}
;; meta.tag, declaration.tag {'foreground': '#C13333', 'fontStyle': ''}
;; entity.name.tag {'fontStyle': ''}
;; markup.heading {'foreground': '#09AFED', 'fontStyle': ''}
;; markup.quote {'foreground': '#8584AE', 'fontStyle': 'italic'}
;; markup.list {'foreground': '#A292FF'}
(deftheme heroku
  "Heroku emacs theme autoconverted from the textMate theme by Chris Thomas")
(custom-theme-set-faces
  'heroku
    '(trailing-whitespace ((t (:background "#62548b"))))
    '(whitespace-trailing ((t (:background "#62548b"))))

    '(border ((t (:background "#2b2b33" ))))
    '(css-property ((t (:foreground "#09afed" ))))
    '(css-proprietary-property ((t (:foreground "#09afed" ))))
    '(cursor ((t (:background "#ffffff" ))))
    '(default ((t (:foreground "#8584ae" :background "#1b1b24" ))))
    '(font-lock-builtin-face ((t (:foreground "#09afed" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#62548b" :italic t ))))
    '(font-lock-comment-face ((t (:foreground "#62548b" :italic t ))))
    '(font-lock-constant-face ((t (:foreground "#06960e" ))))
    '(font-lock-doc-face ((t (:foreground "#6dba09" ))))
    '(font-lock-function-name-face ((t (:foreground "#09afed" ))))
    '(font-lock-keyword-face ((t (:foreground "#a292ff" ))))
    '(font-lock-negation-char-face ((t (:foreground "#a292ff" ))))
    '(font-lock-preprocessor-face ((t (:foreground "#1a921c" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#6dba09" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#6dba09" ))))
    '(font-lock-string-face ((t (:foreground "#6dba09" ))))
    '(font-lock-type-face ((t (:foreground "#a292ff" ))))
    '(font-lock-variable-name-face ((t (:foreground "#c13333" ))))
    '(font-lock-warning-face ((t (:foreground "#ffffff" :background "#990000" ))))
    '(fringe ((t (:background "#2b2b33" ))))
    '(highlight ((t (:background "#fffffc" ))))
    '(hl-line ((t (:background "#2b2b33" ))))
    '(linum ((t (:background "#2b2b33" ))))
    '(menu ((t (:foreground "#8584ae" :background "#1b1b24" ))))
    '(minibuffer-prompt ((t (:foreground "#c13333" ))))
    '(mode-line ((t (:background "#fffffc" ))))
    '(mode-line-buffer-id ((t ())))
    '(mode-line-emphasis ((t (:bold t ))))
    '(mode-line-highlight ((t (:italic t ))))
    '(mode-line-inactive ((t (:background "#2b2b33" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#62548b" :italic t ))))
    '(org-column ((t (:background "#2b2b33" ))))
    '(org-column-title ((t (:background "#2b2b33" ))))
    '(org-hide ((t (:foreground "#1b1b24" ))))
    '(org-todo ((t (:foreground "#ffffff" :background "#990000" ))))
    '(org-upcoming-deadline ((t (:foreground "#ffffff" :background "#990000" ))))
    '(org-warning ((t (:foreground "#ffffff" :background "#990000" ))))
    '(region ((t (:background "#fffffc" ))))
    '(secondary-selection ((t (:background "#fffffc" ))))
    '(show-paren-match-face ((t (:background "#fffffc" ))))
    '(show-paren-mismatch-face ((t (:foreground "#ffffff" :background "#990000" ))))
)

(provide-theme 'heroku)
