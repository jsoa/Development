(add-to-list 'load-path "~/.emacs.d/vendor")


(require 'cask "~/.cask/cask.el")
(cask-initialize)

(load "jsoa/defuns")
(load "jsoa/env")
(load "jsoa/global")
(load "jsoa/theme")
(load "jsoa/bindings")
(load "jsoa/packages")
(load "jsoa/grep")


;; Modes

;; General
(load "jsoa/ag")
(load "jsoa/fill-column-indicator")
(load "jsoa/git-gutter")
(load "jsoa/powerline")
(load "jsoa/smart-tab")
(load "jsoa/smooth-scroll")
(load "jsoa/yasnippet")

;; Social
(load "jsoa/erc")
(load "jsoa/jabber")
(load "jsoa/twittering-mode")

;; Python mode related
(load "jsoa/python-mode")
(load "jsoa/python-pep8")
(load "jsoa/python-pylint")
(load "jsoa/virtualenv")

;; Other Modes
(load "jsoa/coffee-mode")
(load "jsoa/css-mode")
(load "jsoa/jade-mode")
(load "jsoa/stylus-mode")
(load "jsoa/js")
(load "jsoa/js2-mode")
(load "jsoa/json-mode")
(load "jsoa/markdown-mode")
(load "jsoa/scss-mode")
(load "jsoa/shell-mode")
(load "jsoa/web-mode")

;; Anything private goes in this file, which is not in the repo
(load "jsoa/private.el")

(totd)
