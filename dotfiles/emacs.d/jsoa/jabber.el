
(setq starttls-use-gnutls t)
(setq starttls-gnutls-program "gnutls-cli")
(setq starttls-extra-arguments nil)

(setq jabber-history-enabled t)
(setq jabber-use-global-history nil)
(setq jabber-backlog-number 100)
(setq jabber-backlog-days 60)
(setq jabber-chat-fill-long-lines t)
(setq fsm-debug nil)


;; Ref: https://github.com/alexott/emacs-configs/blob/master/rc/emacs-rc-jabber.el
(setq jabber-auto-reconnect t)
(setq jabber-groupchat-buffer-format "*-jg-%n-*")
(setq jabber-roster-buffer "*-jroster-*")
(setq jabber-roster-line-format " %c %-25n %u %-8s  %S")
(setq jabber-chat-buffer-format "*-jc-%n-*")
(setq jabber-muc-private-buffer-format "*-jmuc-priv-%g-%n-*")
(setq jabber-rare-time-format "%e %b %Y %H:00")

(setq jabber-chat-buffer-show-avatar nil)


;; Mode hook functions
(defun jsoa/jabber-connect-hook (jc)
  (jabber-send-presence "" "Online" 10)
  (jabber-whitespace-ping-start)

  ;; Disable the minibuffer getting jabber messages when active
  ;; See http://www.emacswiki.org/JabberEl
  (define-jabber-alert echo "Show a message in the echo area"
    (lambda (msg)
      (unless (minibuffer-prompt)
        (message "%s" msg))))
)
(defun jsoa/jabber-chat-mode-hook ()
  (goto-address)
)
(add-hook 'jabber-post-connect-hooks 'jsoa/jabber-connect-hook)
(add-hook 'jabber-chat-mode-hook 'jsoa/jabber-chat-mode-hook)
