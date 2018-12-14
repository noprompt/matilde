;; default {'caret': '#FFFFFF', 'foreground': '#FFFFFF', 'selection': '#B36539BF', 'invisibles': '#FFFFFF26', 'lineHighlight': '#00000059', 'background': '#002240'}
;; punctuation - (punctuation.definition.string | punctuation.definition.comment) {'foreground': '#E1EFFF', 'fontStyle': ''}
;; constant {'foreground': '#FF628C', 'fontStyle': ''}
;; entity {'foreground': '#FFDD00', 'fontStyle': ''}
;; keyword {'foreground': '#FF9D00', 'fontStyle': ''}
;; storage {'foreground': '#FFEE80', 'fontStyle': ''}
;; string -string.unquoted.old-plist -string.unquoted.heredoc, string.unquoted.heredoc string {'foreground': '#3AD900', 'fontStyle': ''}
;; comment {'foreground': '#0088FF', 'fontStyle': 'italic'}
;; support {'foreground': '#80FFBB', 'fontStyle': ''}
;; variable {'foreground': '#CCCCCC', 'fontStyle': ''}
;; variable.language {'foreground': '#FF80E1', 'fontStyle': ''}
;; meta.function-call {'foreground': '#FFEE80'}
;; invalid {'foreground': '#F8F8F8', 'background': '#800F00'}
;; text source, string.unquoted.heredoc, source source {'foreground': '#FFFFFF', 'fontStyle': '', 'background': '#223545'}
;; entity.other.inherited-class {'foreground': '#80FCFF', 'fontStyle': 'italic'}
;; string.quoted source {'foreground': '#9EFF80', 'fontStyle': ''}
;; string constant {'foreground': '#80FF82'}
;; string.regexp {'foreground': '#80FFC2'}
;; string variable {'foreground': '#EDEF7D'}
;; support.function {'foreground': '#FFB054', 'fontStyle': ''}
;; support.constant {'foreground': '#EB939A', 'fontStyle': ''}
;; support.type.exception {'foreground': '#FF1E00'}
;; meta.preprocessor.c {'foreground': '#8996A8'}
;; meta.preprocessor.c keyword {'foreground': '#AFC4DB'}
;; meta.sgml.html meta.doctype, meta.sgml.html meta.doctype entity, meta.sgml.html meta.doctype string, meta.xml-processing, meta.xml-processing entity, meta.xml-processing string {'foreground': '#73817D'}
;; meta.tag, meta.tag entity {'foreground': '#9EFFFF'}
;; meta.selector.css entity.name.tag {'foreground': '#9EFFFF'}
;; meta.selector.css entity.other.attribute-name.id {'foreground': '#FFB454'}
;; meta.selector.css entity.other.attribute-name.class {'foreground': '#5FE461'}
;; support.type.property-name.css {'foreground': '#9DF39F'}
;; meta.property-group support.constant.property-value.css, meta.property-value support.constant.property-value.css {'foreground': '#F6F080'}
;; meta.preprocessor.at-rule keyword.control.at-rule {'foreground': '#F6AA11'}
;; meta.property-value support.constant.named-color.css, meta.property-value constant {'foreground': '#EDF080'}
;; meta.constructor.argument.css {'foreground': '#EB939A'}
;; meta.diff, meta.diff.header {'foreground': '#F8F8F8', 'fontStyle': '', 'background': '#000E1A'}
;; markup.deleted {'foreground': '#F8F8F8', 'background': '#4C0900'}
;; markup.changed {'foreground': '#F8F8F8', 'background': '#806F00'}
;; markup.inserted {'foreground': '#F8F8F8', 'background': '#154F00'}
;; markup.raw {'background': '#8FDDF630'}
;; markup.quote {'background': '#004480'}
;; markup.list {'background': '#130D26'}
;; markup.bold {'foreground': '#C1AFFF', 'fontStyle': 'bold'}
;; markup.italic {'foreground': '#B8FFD9', 'fontStyle': 'italic'}
;; markup.heading {'foreground': '#C8E4FD', 'fontStyle': 'bold', 'background': '#001221'}
(deftheme cobalt
  "Cobalt emacs theme autoconverted from the textMate theme by Jacob Rus")
(custom-theme-set-faces
  'cobalt
    '(trailing-whitespace ((t (:background "#26435c"))))
    '(whitespace-trailing ((t (:background "#26435c"))))

    '(border ((t (:background "#00162a" ))))
    '(css-property ((t (:foreground "#9df39f" ))))
    '(css-proprietary-property ((t (:foreground "#9df39f" ))))
    '(css-selector ((t (:foreground "#ffb454" ))))
    '(cursor ((t (:background "#ffffff" ))))
    '(default ((t (:foreground "#ffffff" :background "#002240" ))))
    '(diff-added ((t (:foreground "#f8f8f8" :background "#154f00" ))))
    '(diff-changed ((t (:foreground "#f8f8f8" :background "#806f00" ))))
    '(diff-header ((t (:foreground "#f8f8f8" :background "#000e1a" ))))
    '(diff-hunk-header ((t (:foreground "#f8f8f8" :background "#000e1a" ))))
    '(diff-removed ((t (:foreground "#f8f8f8" :background "#4c0900" ))))
    '(font-lock-builtin-face ((t (:foreground "#ffb054" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#0088ff" :italic t ))))
    '(font-lock-comment-face ((t (:foreground "#0088ff" :italic t ))))
    '(font-lock-constant-face ((t (:foreground "#eb939a" ))))
    '(font-lock-doc-face ((t (:foreground "#80ff82" ))))
    '(font-lock-function-name-face ((t (:foreground "#ffb054" ))))
    '(font-lock-keyword-face ((t (:foreground "#ff9d00" ))))
    '(font-lock-negation-char-face ((t (:foreground "#ff9d00" ))))
    '(font-lock-preprocessor-face ((t (:foreground "#8996a8" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#80ffc2" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#80ffc2" ))))
    '(font-lock-string-face ((t (:foreground "#80ff82" ))))
    '(font-lock-type-face ((t (:foreground "#ffee80" ))))
    '(font-lock-variable-name-face ((t (:foreground "#cccccc" ))))
    '(font-lock-warning-face ((t (:foreground "#f8f8f8" :background "#800f00" ))))
    '(fringe ((t (:background "#00162a" ))))
    '(highlight ((t (:background "#86543b" ))))
    '(hl-line ((t (:background "#00162a" ))))
    '(isearch ((t (:foreground "#f8f8f8" :background "#806f00" ))))
    '(isearch-fail ((t (:foreground "#f8f8f8" :background "#4c0900" ))))
    '(iswitchb-current-match ((t (:foreground "#f8f8f8" :background "#154f00" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#f8f8f8" :background "#4c0900" ))))
    '(iswitchb-single-match ((t (:foreground "#f8f8f8" :background "#154f00" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#f8f8f8" :background "#806f00" ))))
    '(linum ((t (:background "#00162a" ))))
    '(match ((t (:foreground "#f8f8f8" :background "#154f00" ))))
    '(menu ((t (:foreground "#ffffff" :background "#002240" ))))
    '(minibuffer-prompt ((t (:foreground "#9effff" ))))
    '(mode-line ((t (:background "#86543b" ))))
    '(mode-line-buffer-id ((t (:foreground "#ffdd00" ))))
    '(mode-line-emphasis ((t (:foreground "#c1afff" :bold t ))))
    '(mode-line-highlight ((t (:foreground "#b8ffd9" :italic t ))))
    '(mode-line-inactive ((t (:background "#00162a" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#0088ff" :italic t ))))
    '(org-column ((t (:background "#00162a" ))))
    '(org-column-title ((t (:background "#00162a" ))))
    '(org-done ((t (:foreground "#f8f8f8" :background "#154f00" ))))
    '(org-hide ((t (:foreground "#002240" ))))
    '(org-todo ((t (:foreground "#f8f8f8" :background "#800f00" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f8" :background "#800f00" ))))
    '(org-warning ((t (:foreground "#f8f8f8" :background "#800f00" ))))
    '(region ((t (:background "#86543b" ))))
    '(secondary-selection ((t (:background "#86543b" ))))
    '(show-paren-match-face ((t (:background "#86543b" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f8" :background "#800f00" ))))
)

(provide-theme 'cobalt)
