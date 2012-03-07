(add-to-list 'load-path "~/.emacs.d/vendor")

(load "jsoa/theme")
(load "jsoa/env")
(load "jsoa/global")
(load "jsoa/defuns")
(load "jsoa/bindings")

(load "jsoa/python")

(vendor 'coffee-mode)
(vendor 'js2-mode)
(vendor 'pony-mode)
(vendor 'yasnippet)
