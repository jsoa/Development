(add-to-list 'load-path "~/.emacs.d/vendor")


(require 'cask "~/.cask/cask.el")
(cask-initialize)

(load "jsoa/defuns")
(load "jsoa/env")
(load "jsoa/global")
(load "jsoa/theme")
(load "jsoa/bindings")
(load "jsoa/packages")
;; (load "jsoa/git.el")
(load "jsoa/grep")
(load "jsoa/jabber")

(vendor 'twittering-mode)
(vendor 'erc)

;; General
(vendor 'powerline)
(vendor 'flycheck)
(vendor 'smooth-scroll)
(vendor 'fill-column-indicator)
(vendor 'smart-tab)
(vendor 'auto-complete)
(vendor 'magit)
(vendor 'git-gutter)
(vendor 'yasnippet)
(vendor 'ag)

;; Python mode related
(vendor 'python-mode)
(vendor 'python-pep8)
(vendor 'python-pylint)
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

;; Anything private goes in this file, which is not in the repo
(load "jsoa/private.el")
