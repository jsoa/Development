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
(load "jsoa/ffip")

;; Social
;; (load "jsoa/erc")
;; (load "jsoa/jabber")
;; (load "jsoa/twittering-mode")

;; Python mode related
(elpy-enable)
(load "jsoa/elpy-mode")
;; (load "jsoa/virtualenv")

;; Go mode related
;; (load "jsoa/go-mode")

;; Other Modes
(load "jsoa/elisp")
(load "jsoa/yaml")
(load "jsoa/coffee-mode")
(load "jsoa/css-mode")
(load "jsoa/jade-mode")
(load "jsoa/stylus-mode")
(load "jsoa/js")
(load "jsoa/js2-mode")
(load "jsoa/json-mode")
(load "jsoa/markdown-mode")
(load "jsoa/scss-mode")
(load "jsoa/sass-mode")
(load "jsoa/shell-mode")
(load "jsoa/web-mode")
;; (load "jsoa/qml-mode")
(load "jsoa/org-mode")
(load "jsoa/tide-mode")
(load "jsoa/compilation-mode")

;; (load "jsoa/visual-basic-mode")

;; Anything private goes in this file, which is not in the repo
(load "jsoa/private.el")

;; (totd)
 ;; (autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
 ;; (setq auto-mode-alist (append '(("\\.\\(frm\\|bas\\|cls\\|vb\\)$" .
 ;;                                 visual-basic-mode)) auto-mode-alist))
