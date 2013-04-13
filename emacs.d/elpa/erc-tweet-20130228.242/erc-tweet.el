;;; erc-tweet.el --- shows text of a tweet when an url is posted in erc buffers

;; Copyright (C) 2012  Raimon Grau

;; Author: Raimon Grau <raimonster@gmail.com>
;; Version: 20130228.242
;; X-Original-Version: 0.9
;; Package-Requires: ((erc "5.3"))
;; Keywords: extensions

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Show inlined tweets in erc buffers.
;;
;;; Installation:
;;
;; usage:
;;
;; (require 'erc-tweet)
;; (add-to-list 'erc-modules 'tweet)
;; (erc-update-modules)
;;
;; Or `(require 'erc-tweet)` and  `M-x customize-option erc-modules RET`
;;
;; This plugin subscribes to hooks `erc-insert-modify-hook` and
;; `erc-send-modify-hook` to download and show tweets.


;;; Code:

(require 'erc)
(require 'url-queue)

(defgroup erc-tweet nil
  "Enable tweet."
  :group 'erc)

(defcustom erc-tweet-regex "https?://twitter.com/.+/status/[0-9]+"
  "Regex to mach URLs to be downloaded"
  :group 'erc-tweet
  :type '(regexp :tag "Regex"))

(defun erc-strip-tags (str)
  "Strip tags in a regex. Naive, I know."
  (replace-regexp-in-string "<.+?>" "" str))

(defun erc-tweet (status marker)
  (interactive)
  (goto-char (point-min))
  (search-forward "js-tweet-text tweet-text \">")
  (push-mark (point))
  (search-forward "

")
  (backward-char)
  (kill-region (mark) (point))

  (with-current-buffer (marker-buffer marker)
    (save-excursion
      (let ((inhibit-read-only t))
	(goto-char (marker-position marker))
	(insert-before-markers
	 (erc-strip-tags
	  (with-temp-buffer
	    (insert "[tweet] - ")
	    (yank)
	    (buffer-string))))
	(put-text-property (point-min) (point-max) 'read-only t)))))

(defun erc-tweet-show-tweet ()
  (interactive)
  (goto-char (point-min))
  (search-forward "http" nil t)
  (let ((url (thing-at-point 'url)))
    (when (and url (string-match erc-tweet-regex url))
      (goto-char (point-max))
      (url-queue-retrieve url
			  'erc-tweet
			  (list
			   (point-marker))
			  t))))


;;;###autoload
(eval-after-load 'erc
  '(define-erc-module tweet nil
     "Display inlined twits in ERC buffer"
     ((add-hook 'erc-insert-modify-hook 'erc-tweet-show-tweet t)
      (add-hook 'erc-send-modify-hook 'erc-tweet-show-tweet t))
     ((remove-hook 'erc-insert-modify-hook 'erc-tweet-show-tweet)
      (remove-hook 'erc-send-modify-hook 'erc-tweet-show-tweet))
     t))


;;; Code:



(provide 'erc-tweet)
;;; erc-tweet.el ends here
