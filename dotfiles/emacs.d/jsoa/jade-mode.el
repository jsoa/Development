
;; (add-to-list 'auto-mode-alist '("\\.styl$" . stylus-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

(add-hook 'stylus-mode-hook (lambda ()
  (rainbow-mode 1)
))
