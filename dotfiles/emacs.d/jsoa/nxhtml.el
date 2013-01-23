(if (boundp 'image-types)
    nil
    (defvar image-types nil))

(load "../vendor/nxhtml/autostart")

(setq auto-mode-alist
      (append '(("\\.html?$" . django-html-mumamo-mode)) auto-mode-alist))
(setq mumamo-background-colors nil)
(add-to-list 'auto-mode-alist '("\\.html$" . django-html-mumamo-mode))
