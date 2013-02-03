
(setq erc-autojoin-channels-alist
      '(("freenode.net" "#django" "#python" "#git" "#emacs")))

(setq erc-keywords '("jsoa"))

(erc-timestamp-mode t)
;; (setq erc-timestamp-format "[%R-%m/%d]")
(setq erc-timestamp-only-if-changed-flag nil
      erc-timestamp-format "%H:%M "
      erc-fill-prefix "      "
      erc-insert-timestamp-function 'erc-insert-timestamp-left)

(setq erc-hide-list '("JOIN" "NICK" "PART" "QUIT"))
(setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT"))

;; Dont really want to auto-connect, but this how
;; (erc :server "irc.freenode.net" :port 6667 :nick "jsoa")