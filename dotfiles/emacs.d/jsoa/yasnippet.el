
(require 'yasnippet)

(yas/global-mode t)

(setq yas/triggers-in-field t)
(setq yas/prompt-functions '(yas/ido-prompt))

(yas/load-directory "~/.emacs.d/jsoa/snippets")

