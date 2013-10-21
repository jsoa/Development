
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


(defvar libnotify-program "/usr/bin/notify-send")
(defvar libnotify-program-args "--expire-time=2000 --icon=/usr/share/icons/hicolor/128x128/apps/emacs24.png")

(defun notify-send (title message)
  (start-process "notify" " notify"
		 libnotify-program libnotify-program-args title message))

(defun libnotify-jabber-notify (from buf text proposed-alert)
  "(jabber.el hook) Notify of new Jabber chat messages via libnotify"
  (when (or jabber-message-alert-same-buffer
            (not (memq (selected-window) (get-buffer-window-list buf))))
    (if (jabber-muc-sender-p from)
        (notify-send (format "(PM) %s"
                       (jabber-jid-displayname (jabber-jid-user from)))
               (format "%s: %s" (jabber-jid-resource from) text)))
      (notify-send (format "%s" (jabber-jid-displayname from))
             text))
)

(add-hook 'jabber-alert-message-hooks 'libnotify-jabber-notify)

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
  (visual-line-mode t)
)
(add-hook 'jabber-post-connect-hooks 'jsoa/jabber-connect-hook)
(add-hook 'jabber-chat-mode-hook 'jsoa/jabber-chat-mode-hook)
