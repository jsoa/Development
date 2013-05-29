
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")

;; Environment specific
(if (eq system-type 'gnu/linux)
     (setq browse-url-browser-function 'browse-url-chromium)
)
