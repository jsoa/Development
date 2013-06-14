;; Low level theme

(deftheme low-level "Low Level")

(custom-theme-set-faces
 'low-level
  '(default ((t (
     :family "Ubuntu Mono"
     :height 98
     :weight normal
     :foreground "#B9BDB6"
     :background "#131313"
     :inherit nil))))
  '(fixed-pitch ((t (:family "Monospace"))))
  '(variable-pitch ((t (:family "Sans Serif"))))
  '(cursor ((((background light)) (:background "#00FF00")) (((background dark)) (:background "#FFFFFF"))))
  '(region ((t (:background "#323232"))))
  '(minibuffer-prompt ((t (:weight bold :foreground "#5BA1CF"))))

  '(font-lock-builtin-face ((t (:foreground "#5CE638"))))
  '(font-lock-comment-face ((t (:foreground "#646763"))))
  '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
  '(font-lock-constant-face ((t (:foreground "#6E9360"))))
  '(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
  '(font-lock-doc-string-face ((t (:foreground "#68DC0C"))))
  '(font-lock-function-name-face ((t (:foreground "#FFAA3E"))))
  '(font-lock-integer-face ((t (:foreground "#5CE638"))))
  '(font-lock-keyword-face ((t (:foreground "#5BA1CF"))))
  '(font-lock-negation-char-face ((t nil)))
  '(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
  '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
  '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
  '(font-lock-string-face ((t (:foreground "#6E9360"))))
  '(font-lock-type-face ((t (:foreground "#FFFFFF"))))
  '(font-lock-variable-name-face ((t (:foreground "#FFFFFF"))))
  '(font-lock-warning-face ((t (:inherit (error)))))

  '(vertical-border-face ((t (:background "#131313" :foreground "#696969"))))
  '(fringe-face ((t (:background "#292929"))))

  ;; rst
  '(rst-level-1-face ((t (:background "#131313"))))
  '(rst-level-2-face ((t (:background "#131313"))))
  '(rst-level-3-face ((t (:background "#131313"))))
  '(rst-level-4-face ((t (:background "#131313"))))
  '(rst-level-5-face ((t (:background "#131313"))))

  ;; mode-line
  '(mode-line ((t (:background "#5BA1CF" :foreground "#0a0a0a" :box nil))))
  '(mode-line-buffer-id ((t (:weight bold))))
  '(mode-line-emphasis ((t (:weight bold))))

  ;; Powerline
  '(powerline-active1 ((t (:foreground "#CCCCCC" :background "#1a1a1a" :box nil))))
  '(powerline-inactive1 ((t (:foreground "#999999" :background "#1a1a1a" :box nil))))
  '(powerline-active2 ((t (:foreground "#CCCCCC" :background "#333333" :box nil))))
  '(powerline-inactive2 ((t (:foreground "#999999" :background "#333333" :box nil))))

  ;; magit
  '(magit-item-highlight ((t (:inherit magit-item-highlight :background "#262626"))) nil)
  '(magit-branch ((t (:foreground "brightblue" :weight bold))))
  '(magit-section-title ((t (:foreground "#d7d700"))))

  ;; diff
  '(diff-added ((t (:inherit diff-changed :foreground "#5CE638"))) nil)
  '(diff-removed ((t (:inherit diff-changed :foreground "#FF453C"))) nil)

  ;; git gutter
  '(git-gutter:modified ((t (:background "#131313" :foreground "#FFAA3E" :weight bold))))
  '(git-gutter:added ((t (:background "#131313" :foreground "#5CE638" :weight bold))))
  '(git-gutter:deleted ((t (:background "#131313" :foreground "#ee0000" :weight bold ))))
  '(git-gutter:unchanged ((t (:background "#131313" :foreground "#131313" :weight bold))))

  ;; jabber
  '(jabber-chat-prompt-foreign ((t (:foreground "#d7d700" :weight bold))))
  '(jabber-chat-prompt-local ((t (:foreground "#875f00" :weight bold))))
  '(jabber-roster-user-away ((t (:foreground "#6c6c6c" :slant italic :weight normal))))
  '(jabber-roster-user-dnd ((t (:foreground "#262626" :slant italic :weight normal))))
  '(jabber-roster-user-offline ((t (:foreground "#5f0000" :slant italic :weight light))))
  '(jabber-roster-user-online ((t (:foreground "#58A1CF" :slant normal :weight bold))))

  ;; more
)

(provide-theme 'low-level)
