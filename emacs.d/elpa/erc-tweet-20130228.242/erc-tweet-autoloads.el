;;; erc-tweet-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "erc-tweet" "erc-tweet.el" (20840 43364 0 0))
;;; Generated autoloads from erc-tweet.el

(eval-after-load 'erc '(define-erc-module tweet nil "Display inlined twits in ERC buffer" ((add-hook 'erc-insert-modify-hook 'erc-tweet-show-tweet t) (add-hook 'erc-send-modify-hook 'erc-tweet-show-tweet t)) ((remove-hook 'erc-insert-modify-hook 'erc-tweet-show-tweet) (remove-hook 'erc-send-modify-hook 'erc-tweet-show-tweet)) t))

;;;***

;;;### (autoloads nil nil ("erc-tweet-pkg.el") (20840 43364 589933
;;;;;;  0))

;;;***

(provide 'erc-tweet-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; erc-tweet-autoloads.el ends here
