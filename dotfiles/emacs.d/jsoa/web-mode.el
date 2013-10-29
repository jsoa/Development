
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; Default engine is django
(setq web-mode-engines-alist
      '(("django"    . "\\.html\\'"))
)

(add-hook 'web-mode-hook '(lambda ()

  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-indent-style 2)

))
