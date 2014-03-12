;; Low level theme (WIP)

(deftheme low-level "Low Level")

(let (
      (lowlevel-bg             "#131313")
      (lowlevel-bg-1           "#1A1A1A")
      (lowlevel-bg+1           "#292929")
      (lowlevel-bg+2           "#323232")
      (lowlevel-fg-3           "#646763")
      (lowlevel-fg-2           "#999999")
      (lowlevel-fg-1           "#CCCCCC")
      (lowlevel-fg             "#B9BDB6")
      (lowlevel-fg+1           "#FFFFFF")
      (lowlevel-yellow         "#D7D700")
      (lowlevel-orange-1       "#8b5a00")
      (lowlevel-orange         "#FFAA3E")
      (lowlevel-blue           "#5BA1CF")
      (lowlevel-blue-1         "#27408b")
      (lowlevel-green-2        "#6E9360")
      (lowlevel-green-1        "#5CE638")
      (lowlevel-green          "#00FF00")
      (lowlevel-red            "#FF453C")
      (lowlevel-red+1          "#ee0000"))

  (custom-theme-set-faces
   'low-level
   `(default ((t (:foreground ,lowlevel-fg :background ,lowlevel-bg))))
   '(fixed-pitch ((t (:family "Monospace"))))
   '(variable-pitch ((t (:family "Sans Serif"))))

   `(cursor ((((background light)) (:background ,lowlevel-yellow)) (((background dark)) (:background ,lowlevel-yellow))))
   `(region ((t (:background ,lowlevel-bg+2))))
   `(minibuffer-prompt ((t (:weight bold :foreground ,lowlevel-blue))))

   `(font-lock-builtin-face ((t (:foreground ,lowlevel-green-1))))
   `(font-lock-comment-face ((t (:foreground ,lowlevel-fg-3))))
   '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
   `(font-lock-constant-face ((t (:foreground ,lowlevel-blue :weight bold))))
   '(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
   `(font-lock-doc-string-face ((t (:foreground ,lowlevel-green-1))))
   `(font-lock-function-name-face ((t (:foreground ,lowlevel-orange))))
   `(font-lock-integer-face ((t (:foreground ,lowlevel-green-1))))
   `(font-lock-keyword-face ((t (:foreground ,lowlevel-blue))))
   '(font-lock-negation-char-face ((t nil)))
   '(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
   '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
   '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
   `(font-lock-string-face ((t (:foreground ,lowlevel-green-2))))
   `(font-lock-type-face ((t (:foreground ,lowlevel-fg+1))))
   `(font-lock-variable-name-face ((t (:foreground ,lowlevel-fg+1))))
   '(font-lock-warning-face ((t (:inherit (error)))))

   `(vertical-border-face ((t (:background ,lowlevel-bg :foreground ,lowlevel-fg-3))))
   `(fringe-face ((t (:background ,lowlevel-bg+1))))

   ;; rst
   `(rst-level-1-face ((t (:background ,lowlevel-bg))))
   `(rst-level-2-face ((t (:background ,lowlevel-bg))))
   `(rst-level-3-face ((t (:background ,lowlevel-bg))))
   `(rst-level-4-face ((t (:background ,lowlevel-bg))))
   `(rst-level-5-face ((t (:background ,lowlevel-bg))))

   ;; markdown-mode
   `(markdown-header-face ((t (:foreground ,lowlevel-blue))))
   `(markdown-inline-code-face ((t (:foreground ,lowlevel-fg+1))))
   `(markdown-pre-face ((t (:foreground ,lowlevel-orange))))

   ;; mode-line
   `(mode-line ((t (:background ,lowlevel-blue :foreground ,lowlevel-bg :box nil))))
   '(mode-line-buffer-id ((t (:weight bold))))
   '(mode-line-emphasis ((t (:weight bold))))

   ;; Powerline
   `(powerline-active1 ((t (:foreground ,lowlevel-fg-2 :background ,lowlevel-bg-1 :box nil))))
   `(powerline-inactive1 ((t (:foreground ,lowlevel-fg-2 :background ,lowlevel-bg-1 :box nil))))
   `(powerline-active2 ((t (:foreground ,lowlevel-fg-1 :background ,lowlevel-bg+2 :box nil))))
   `(powerline-inactive2 ((t (:foreground ,lowlevel-fg-2 :background ,lowlevel-bg+2 :box nil))))

   ;; magit
   `(magit-item-highlight ((t (:inherit magit-item-highlight :background ,lowlevel-bg+1))) nil)
   `(magit-branch ((t (:foreground ,lowlevel-blue :weight bold))))
   `(magit-section-title ((t (:foreground ,lowlevel-yellow))))

   ;; diff
   `(diff-added ((t (:inherit diff-changed :foreground ,lowlevel-green-1))) nil)
   `(diff-removed ((t (:inherit diff-changed :foreground ,lowlevel-red))) nil)

   ;; git gutter
   `(git-gutter:modified ((t (:background ,lowlevel-bg :foreground ,lowlevel-orange :weight bold))))
   `(git-gutter:added ((t (:background ,lowlevel-bg :foreground ,lowlevel-green-1 :weight bold))))
   `(git-gutter:deleted ((t (:background ,lowlevel-bg :foreground ,lowlevel-red+1 :weight bold ))))
   `(git-gutter:unchanged ((t (:background ,lowlevel-bg :foreground ,lowlevel-bg :weight bold))))

   ;; jabber
   `(jabber-chat-prompt-foreign ((t (:foreground ,lowlevel-fg-3 :weight bold))))
   `(jabber-chat-prompt-local ((t (:foreground ,lowlevel-blue :weight bold))))
   `(jabber-roster-user-away ((t (:foreground ,lowlevel-bg+2 :slant italic :weight normal))))
   `(jabber-roster-user-dnd ((t (:foreground ,lowlevel-bg+1 :slant italic :weight normal))))
   `(jabber-roster-user-offline ((t (:foreground ,lowlevel-red+1 :slant italic :weight light))))
   `(jabber-roster-user-online ((t (:foreground ,lowlevel-blue :slant normal :weight bold))))
   `(jabber-activity-personal-face ((t (:foreground ,lowlevel-yellow :weight bold))))
   `(jabber-activity-face ((t (:foreground ,lowlevel-yellow :weight bold))))
   `(jabber-rare-time-face ((t (:foreground ,lowlevel-orange :weight bold))))

   ;; bookmark
   `(bookmark-menu-heading ((t (:foreground ,lowlevel-orange :weight bold))))

   ;; flycheck
   `(flycheck-warning ((t (:weight bold :underline nil))))
   `(flycheck-error ((t (:foreground ,lowlevel-red :weight bold :underline nil))))
   `(flycheck-info ((t (:weight bold :underline nil))))

   ;; css-mode
   `(css-property ((t (:foreground ,lowlevel-orange))))
   `(css-selector ((t (:foreground ,lowlevel-fg+1))))
   ;; `(css-proprietary-property ((t (:foreground ,lowlevel-blue))))

   ;; coffeescript
   `(coffee-mode-function-param ((t (:foreground ,lowlevel-orange))))
   `(coffee-mode-class-name ((t (:foreground ,lowlevel-fg+1))))

   ;; python-mode
   `(py-decorators-face ((t (:foreground ,lowlevel-blue :weight bold))))
   ;; `(py-exception-name-face ((t (:foreground ,lowlevel-blue))))

   ;; javascript-mode TODO
   ;; js2-mode
   ;; js2-error
   ;; js2-external-variable
   ;; js2-function-param
   ;; js2-instance-member
   ;; js2-jsdoc-html-tag-delimiter
   ;; js2-jsdoc-html-tag-name
   ;; js2-jsdoc-tag
   ;; js2-jsdoc-type
   ;; js2-jsdoc-value
   ;; js2-private-function-call
   ;; js2-private-member
   ;; js2-warning

   ;; erc TODO
   `(erc-default-face ((t ((:foreground ,lowlevel-fg)))))
   `(erc-timestamp-face ((t (:foreground ,lowlevel-green-2 :weight bold))))
   `(erc-notice-face ((t (:foreground ,lowlevel-fg-3))))
   `(erc-prompt-face ((t (:foreground ,lowlevel-blue :weight bold))))
   `(erc-command-indicator-face ((t (:foreground ,lowlevel-green))))
   `(erc-nick-default-face ((t (:foreground ,lowlevel-orange))))
   `(erc-my-nick-face ((t (:foreground ,lowlevel-blue))))
   '(erc-nick-msg-face ((t (:inherit erc-nick-default-face))))
   `(erc-direct-msg-face ((t (:foreground ,lowlevel-fg-2))))
   `(erc-input-face ((t (:foreground ,lowlevel-fg))))
   `(erc-button ((t (:foreground ,lowlevel-blue :weight bold))))
   `(erc-header-line ((t (:foreground ,lowlevel-yellow))))
   ;; erc-action-face
   ;; erc-bold-face
   ;; erc-error-face
   ;; erc-inverse-face
   ;; erc-underline-face

   ;; web-mode TODO
   '(web-mode-css-rule-face ((t (:inherit css-property))))
   '(web-mode-css-prop-face ((t (:inherit css-selector))))
   `(web-mode-css-pseudo-class-face ((t (:foreground ,lowlevel-green-2))))
   ;; web-mode-css-at-rule-face
   ;; web-mode-builtin-face
   ;; web-mode-comment-face
   ;; web-mode-constant-face
   ;; web-mode-doctype-face
   ;; web-mode-folded-face
   ;; web-mode-function-name-face
   ;; web-mode-html-attr-name-face
   ;; web-mode-html-attr-value-face
   ;; web-mode-html-tag-face
   ;; web-mode-keyword-face
   ;; web-mode-param-name-face
   ;; web-mode-preprocessor-face
   ;; web-mode-server-background-face
   ;; web-mode-server-comment-face
   ;; web-mode-server-string-face
   ;; web-mode-string-face
   ;; web-mode-type-face
   ;; web-mode-variable-name-face
   ;; web-mode-warning-face
   ;; web-mode-whitespaces-face

   )
)

(provide-theme 'low-level)
