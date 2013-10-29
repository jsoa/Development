
(add-to-list 'auto-mode-alist '("\\.styl$" . stylus-mode))

(add-hook 'stylus-mode-hook (lambda ()
  (rainbow-mode 1)
))
