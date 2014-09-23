(defun coffee-custom ()
  "coffee-mode-hook"
 ;; (coffee-cos-mode t)
 (set coffee-cos-mode 'nil)

 (make-local-variable 'tab-width)
 (set 'tab-width 2)
 (setq coffee-args-compile '("-c" "-o" "../")))

;; (add-hook 'coffee-mode-hook
;;   '(lambda() (coffee-custom)))

(add-hook 'coffee-mode-hook '(lambda ()
  (setq coffee-cos-mode nil)
  (setq coffee-tab-width 2)
))
