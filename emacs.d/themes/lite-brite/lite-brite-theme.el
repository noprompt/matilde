(deftheme lite-brite
  "Fun theme")

(let ((bgd-0 "#211C21") (fgd-0 "#E6FFE7")
      (bgd-1 "#2E272E") (fgd-1 "#DAF2DB")
      (bgd-2 "#3B323B") (fgd-2 "#CFE5CF")
      (bgd-3 "#473D47") (fgd-3 "#C3D9C4")
      (bgd-4 "#544854") (fgd-4 "#B8CCB8")
      (bgd-5 "#615261") (fgd-5 "#ACBFAD")
      (bgd-6 "#6E5D6E") (fgd-6 "#A1B3A1")
      (bgd-7 "#7A687A") (fgd-7 "#95A696")
      (bgd-8 "#877387") (fgd-8 "#8A998A")
      (bgd-9 "#947E94") (fgd-9 "#7E8C7F") 

      (syn-0 "#87F20C") (msg-0 "#3D9698") (dif-0 "#333B4C")
      (syn-1 "#2FFF39") (msg-1 "#5A7FB9") (dif-1 "#3D3551")
      (syn-2 "#21FFB3") (msg-2 "#7B6AC9") (dif-2 "#47314E")
      (syn-3 "#34E8FF") (msg-3 "#A25BB6") (dif-3 "#4C3044")
      (syn-4 "#83B0FF") (msg-4 "#B45894") (dif-4 "#4E3236")
      (syn-5 "#DC83FF") (msg-5 "#BA5F62") (dif-5 "#45382C")
      (syn-6 "#FF5AFF") (msg-6 "#9E7345") (dif-6 "#3D3D27")
      (syn-7 "#FF66CF") (msg-7 "#7D882D") (dif-7 "#32422C")
      (syn-8 "#FF7F63") (msg-8 "#5A973D") (dif-8 "#2C4433")
      (syn-9 "#F8B711") (msg-9 "#419E5A") (dif-9 "#2A4241")) 

  (custom-theme-set-faces
   'lite-brite
   ;; Editor
   `(default
      ((t (:foreground ,fgd-0 :background ,bgd-0))))
   `(idle-highlight
     ((t (:background ,bgd-2))))
   `(cursor
     ((t (:background ,fgd-9))))
   `(highlight
     ((t (:background ,bgd-3))))
   ;; Syntax
   `(font-lock-constant-face
     ((t (:foreground ,syn-9))))
   `(font-lock-builtin-face
     ((t (:foreground ,syn-5))))
   `(font-lock-string-face
     ((t (:foreground ,syn-5))))
   `(font-lock-keyword-face
     ((t (:foreground ,syn-0))))
   `(font-lock-function-name-face
     ((t (:foreground ,syn-8))))
   `(font-lock-variable-name-face
     ((t (:foreground ,syn-4))))
   `(font-lock-doc-face
     ((t (:foreground ,syn-3))))
   `(font-lock-doc-string-face
     ((t (:foreground ,syn-3))))
   `(clojure-doc-string
     ((t (:foreground ,syn-3))))
   `(font-lock-type-face
     ((t (:foreground ,syn-3))))
   `(font-lock-comment-face
     ((t (:foreground ,bgd-7 :slant italic))))
   `(font-lock-comment-delimiter-face
     ((t (:foreground ,bgd-9))))
   `(font-lock-warning-face
     ((t (:foreground ,syn-8))))
   
      ))
;; foo
;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'lite-brite)
