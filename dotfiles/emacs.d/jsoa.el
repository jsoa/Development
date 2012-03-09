(add-to-list 'load-path "~/.emacs.d/vendor")

(load "jsoa/theme")
(load "jsoa/env")
(load "jsoa/global")
(load "jsoa/defuns")
(load "jsoa/bindings")

(load "jsoa/python")
(load "jsoa/json")

(vendor 'python-mode)
(vendor 'coffee-mode)
(vendor 'js2-mode)
(vendor 'pony-mode)
(vendor 'yasnippet)
(vendor 'json-mode)
(vendor 'magit)
(vendor 'markdown-mode)
(vendor 'textmate)
(vendor 'Pymacs)