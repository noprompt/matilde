;; default {'caret': '#FF9900', 'foreground': '#FCFFE0', 'selection': '#AA00FF73', 'invisibles': '#FFB16F52', 'lineHighlight': '#38403D', 'background': '#0B0A09'}
;; constant {'foreground': '#D27518C2', 'fontStyle': ''}
;; entity {'foreground': '#A89100B5', 'fontStyle': ''}
;; entity.other {'foreground': '#BA6912'}
;; keyword {'foreground': '#949C8B', 'fontStyle': ''}
;; storage {'foreground': '#FFEE80', 'fontStyle': ''}
;; string -string.unquoted.old-plist -string.unquoted.heredoc, string.unquoted.heredoc string {'foreground': '#C7A4A1B5'}
;; comment {'foreground': '#706D5B', 'fontStyle': 'italic'}
;; support {'foreground': '#9FC28A', 'fontStyle': ''}
;; variable {'foreground': '#D1A796', 'fontStyle': ''}
;; variable.language {'foreground': '#FF80E1', 'fontStyle': ''}
;; meta.function-call {'foreground': '#FFEE80'}
;; invalid {'foreground': '#F8F8F8', 'background': '#A41300'}
;; text source, string.unquoted.heredoc, source source {'foreground': '#D9D59F', 'fontStyle': '', 'background': '#24231D4D'}
;; entity.other.inherited-class {'foreground': '#7EFCFF', 'fontStyle': ''}
;; string.quoted source {'foreground': '#439740BA', 'fontStyle': ''}
;; string constant {'foreground': '#60DB5DBA'}
;; string.regexp {'foreground': '#7DFFC0A6'}
;; string variable {'foreground': '#B8B960', 'fontStyle': ''}
;; support.function {'foreground': '#85873A', 'fontStyle': ''}
;; support.constant {'foreground': '#C27E66', 'fontStyle': ''}
;; support.class.exception {'foreground': '#FF1E00'}
;; meta.preprocessor.c {'foreground': '#8996A8'}
;; meta.preprocessor.c keyword {'foreground': '#AFC4DB'}
;; meta.sgml.html meta.doctype, meta.sgml.html meta.doctype entity, meta.sgml.html meta.doctype string, meta.xml-processing, meta.xml-processing entity, meta.xml-processing string {'foreground': '#73817D'}
;; meta.tag, meta.tag entity {'foreground': '#BABD9C'}
;; meta.selector.css entity.name.tag {'foreground': '#99A190'}
;; meta.selector.css entity.other.attribute-name.id {'foreground': '#CC8844'}
;; meta.selector.css entity.other.attribute-name.class {'foreground': '#CFB958'}
;; support.type.property-name.css {'foreground': '#E0DDAD'}
;; meta.property-group support.constant.property-value.css, meta.property-value support.constant.property-value.css {'foreground': '#AEB14B'}
;; meta.preprocessor.at-rule keyword.control.at-rule {'foreground': '#FFB010'}
;; meta.property-value support.constant.named-color.css, meta.property-value constant {'foreground': '#999179'}
;; meta.constructor.argument.css {'foreground': '#EB939A'}
;; meta.diff, meta.diff.header {'foreground': '#F8F8F8', 'fontStyle': '', 'background': '#000E1A'}
;; markup.deleted {'foreground': '#F8F8F8', 'background': '#800F00'}
;; markup.changed {'foreground': '#F8F8F8', 'background': '#806F00'}
;; markup.inserted {'foreground': '#F8F8F8', 'background': '#228000'}
;; markup.raw {'background': '#8FDDF630'}
;; markup.quote {'background': '#005BAA'}
;; markup.list {'background': '#0F0040'}
;; markup.bold {'foreground': '#9D80FF', 'fontStyle': 'bold'}
;; markup.italic {'foreground': '#80FFBB', 'fontStyle': 'italic'}
;; markup.heading {'fontStyle': 'bold'}
(deftheme krtheme
  "krTheme emacs theme autoconverted from the textMate theme by unknown")
(custom-theme-set-faces
  'krtheme
    '(trailing-whitespace ((t (:background "#59402a"))))
    '(whitespace-trailing ((t (:background "#59402a"))))

    '(border ((t (:background "#38403d" ))))
    '(css-property ((t (:foreground "#e0ddad" ))))
    '(css-proprietary-property ((t (:foreground "#e0ddad" ))))
    '(css-selector ((t (:foreground "#cc8844" ))))
    '(cursor ((t (:background "#ff9900" ))))
    '(default ((t (:foreground "#fcffe0" :background "#0b0a09" ))))
    '(diff-added ((t (:foreground "#f8f8f8" :background "#228000" ))))
    '(diff-changed ((t (:foreground "#f8f8f8" :background "#806f00" ))))
    '(diff-header ((t (:foreground "#f8f8f8" :background "#000e1a" ))))
    '(diff-hunk-header ((t (:foreground "#f8f8f8" :background "#000e1a" ))))
    '(diff-removed ((t (:foreground "#f8f8f8" :background "#800f00" ))))
    '(font-lock-builtin-face ((t (:foreground "#85873a" ))))
    '(font-lock-comment-delimiter-face ((t (:foreground "#706d5b" :italic t ))))
    '(font-lock-comment-face ((t (:foreground "#706d5b" :italic t ))))
    '(font-lock-constant-face ((t (:foreground "#c27e66" ))))
    '(font-lock-doc-face ((t (:foreground "#49a246" ))))
    '(font-lock-function-name-face ((t (:foreground "#85873a" ))))
    '(font-lock-keyword-face ((t (:foreground "#949c8b" ))))
    '(font-lock-negation-char-face ((t (:foreground "#949c8b" ))))
    '(font-lock-preprocessor-face ((t (:foreground "#8996a8" ))))
    '(font-lock-regexp-grouping-backslash ((t (:foreground "#55a980" ))))
    '(font-lock-regexp-grouping-construct ((t (:foreground "#55a980" ))))
    '(font-lock-string-face ((t (:foreground "#49a246" ))))
    '(font-lock-type-face ((t (:foreground "#ffee80" ))))
    '(font-lock-variable-name-face ((t (:foreground "#d1a796" ))))
    '(font-lock-warning-face ((t (:foreground "#f8f8f8" :background "#a41300" ))))
    '(fringe ((t (:background "#38403d" ))))
    '(highlight ((t (:background "#530578" ))))
    '(hl-line ((t (:background "#38403d" ))))
    '(isearch ((t (:foreground "#f8f8f8" :background "#806f00" ))))
    '(isearch-fail ((t (:foreground "#f8f8f8" :background "#800f00" ))))
    '(iswitchb-current-match ((t (:foreground "#f8f8f8" :background "#228000" ))))
    '(iswitchb-invalid-regexp ((t (:foreground "#f8f8f8" :background "#800f00" ))))
    '(iswitchb-single-match ((t (:foreground "#f8f8f8" :background "#228000" ))))
    '(iswitchb-virtual-matches ((t (:foreground "#f8f8f8" :background "#806f00" ))))
    '(linum ((t (:background "#38403d" ))))
    '(match ((t (:foreground "#f8f8f8" :background "#228000" ))))
    '(menu ((t (:foreground "#fcffe0" :background "#0b0a09" ))))
    '(minibuffer-prompt ((t (:foreground "#babd9c" ))))
    '(mode-line ((t (:background "#530578" ))))
    '(mode-line-buffer-id ((t (:foreground "#7a6a03" ))))
    '(mode-line-emphasis ((t (:foreground "#9d80ff" :bold t ))))
    '(mode-line-highlight ((t (:foreground "#80ffbb" :italic t ))))
    '(mode-line-inactive ((t (:background "#38403d" ))))
    '(org-agenda-dimmed-todo-face ((t (:foreground "#706d5b" :italic t ))))
    '(org-column ((t (:background "#38403d" ))))
    '(org-column-title ((t (:background "#38403d" ))))
    '(org-done ((t (:foreground "#f8f8f8" :background "#228000" ))))
    '(org-hide ((t (:foreground "#0b0a09" ))))
    '(org-todo ((t (:foreground "#f8f8f8" :background "#a41300" ))))
    '(org-upcoming-deadline ((t (:foreground "#f8f8f8" :background "#a41300" ))))
    '(org-warning ((t (:foreground "#f8f8f8" :background "#a41300" ))))
    '(region ((t (:background "#530578" ))))
    '(secondary-selection ((t (:background "#530578" ))))
    '(show-paren-match-face ((t (:background "#530578" ))))
    '(show-paren-mismatch-face ((t (:foreground "#f8f8f8" :background "#a41300" ))))
)

(provide-theme 'krtheme)
