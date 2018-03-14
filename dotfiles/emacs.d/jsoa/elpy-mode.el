(require 'elpy)


(add-hook 'elpy-mode-hook (lambda ()
     (hl-line-mode)
     (flycheck-mode)
     (fci-mode)
     ))
