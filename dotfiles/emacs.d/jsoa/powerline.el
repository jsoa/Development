(powerline-default-theme)

(custom-set-faces
  '(mode-line ((t (:background "#5c5cff" :foreground "#000000" :box nil))))

  ;; Keep the colors for inactive and active the same, just change the primary
  ;; mode-line color (above)
  '(powerline-active1 ((t (:foreground "grey80" :background "gray10" :box nil))))
  '(powerline-active2 ((t (:foreground "grey80" :background "grey20" :box nil))))
  '(powerline-inactive1 ((t (:foreground "grey80" :background "grey10" :box nil))))
  '(powerline-inactive2 ((t (:foreground "grey80" :background "grey20" :box nil))))

)

(powerline-center-theme)
