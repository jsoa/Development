(require 'color-theme)

(setq color-theme-is-global t)

(defun color-theme-lowlevel ()
  "LowLevel Theme"
  (interactive)
  (color-theme-install
   '(color-theme-lowlevel
     ((background-color . "#131313")
      (foreground-color . "#B9BDB6")
      (background-mode . dark)
      (border-color . "#323232")
      (cursor-color . "#FFFFFF")
      (mouse-color . "#323232"))
     (mode-line ((t (:foreground "#B9BDB6" :background "#323232"))))
     (region ((t (:background "#323232"))))

     (minibuffer-prompt ((t (:foreground "#5BA1CF" :bold t))))
     (font-lock-comment-face ((t (:foreground "#646763"))))
     (font-lock-constant-face ((t (:foreground "#6E9360"))))
     (font-lock-builtin-face ((t (:foreground "#5CE638"))))
     (font-lock-function-name-face ((t (:foreground "#FFAA3E"))))
     (font-lock-variable-name-face ((t (:foreground "#FFFFFF"))))
     (font-lock-keyword-face ((t (:foreground "#5BA1CF"))))
     (font-lock-string-face ((t (:foreground "#6E9360"))))
     (font-lock-integer-face ((t (:foreground "#5CE638"))))
     (font-lock-doc-string-face ((t (:foreground "#68DC0C"))))
     (font-lock-type-face ((t (:foreground "#FFFFFF"))))
     )))

(provide 'color-theme-lowlevel)
(color-theme-lowlevel)
