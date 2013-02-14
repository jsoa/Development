
(setq starttls-use-gnutls t)
    (setq starttls-gnutls-program "gnutls-cli")
    (setq starttls-extra-arguments nil)

(setq
  jabber-history-enabled t
  jabber-use-global-history nil
  jabber-backlog-number 40
  jabber-backlog-days 30
 )

(add-hook 'jabber-chat-mode-hook 'goto-address)
