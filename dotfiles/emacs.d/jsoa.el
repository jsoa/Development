(add-to-list 'load-path "~/.emacs.d/vendor")

(load "jsoa/defuns")

(load "jsoa/env")
(load "jsoa/global")
(load "jsoa/theme")
(load "jsoa/bindings")
(load "jsoa/packages")
(load "jsoa/grep")
(load "jsoa/diff")
(load "jsoa/nxhtml")
(load "jsoa/jabber")

(vendor 'twittering-mode)
(vendor 'erc)

;; General
(vendor 'goto-last-change)
(vendor 'powerline)
(vendor 'flycheck)
(vendor 'smooth-scroll)
(vendor 'fill-column-indicator)
(vendor 'smart-tab)
(vendor 'findr)
(vendor 'multiple-cursors)
(vendor 'expand-region)
(vendor 'auto-complete)
(vendor 'magit)
(vendor 'git-gutter)
(vendor 'yasnippet)

;; Python mode related
(vendor 'python-mode)
(vendor 'python-pep8)
(vendor 'python-pylint)
(vendor 'pylookup)
(vendor 'virtualenv)

;; Other Modes
(vendor 'coffee-mode)
(vendor 'js2-mode)
(vendor 'jade-mode)
(vendor 'css-mode)
(vendor 'scss-mode)
(vendor 'json-mode)
(vendor 'markdown-mode)
(vendor 'web-mode)
(vendor 'rainbow-mode)

;; Other
;; (vendor 'textmate)



(load "jsoa/private.el")
