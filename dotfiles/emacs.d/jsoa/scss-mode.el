
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(add-hook 'scss-mode-hook (lambda ()
  (rainbow-mode 1)
))
