
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
(custom-set-variables
 '(jabber-auto-reconnect t)
 '(jabber-groupchat-buffer-format "*-jg-%n-*")
 '(jabber-roster-buffer "*-jroster-*")
 '(jabber-roster-line-format " %c %-25n %u %-8s  %S")
 '(jabber-chat-buffer-format "*-jc-%n-*")
 '(jabber-muc-private-buffer-format "*-jmuc-priv-%g-%n-*")
 '(jabber-rare-time-format "%e %b %Y %H:00")
)

;; Different colors for the roster and chat buffers
(custom-set-faces
 '(jabber-chat-prompt-foreign ((t (:foreground "color-184" :weight bold))))
 '(jabber-chat-prompt-local ((t (:foreground "color-94" :weight bold))))
 '(jabber-roster-user-away ((t (:foreground "color-242" :slant italic :weight normal))))
 '(jabber-roster-user-dnd ((t (:foreground "color-235" :slant italic :weight normal))))
 '(jabber-roster-user-offline ((t (:foreground "color-52" :slant italic :weight light))))
 '(jabber-roster-user-online ((t (:foreground "color-26" :slant normal :weight bold)))))


;; Mode hook functions
(defun jsoa/jabber-connect-hook (jc)
  (jabber-send-presence "" "Online" 10)
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
