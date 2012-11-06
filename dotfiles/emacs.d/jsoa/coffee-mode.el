(defun coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2)
 (setq coffee-args-compile '("-c" "-o" "../")))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

(add-hook 'coffee-mode-hook '(lambda () (coffee-cos-mode t)))