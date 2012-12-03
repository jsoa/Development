
;; ref: https://github.com/haxney/smart-tab/issues/1#issuecomment-2046965
(add-to-list 'hippie-expand-try-functions-list
'yas/hippie-try-expand) ;put yasnippet in hippie-expansion list

(setq smart-tab-using-hippie-expand t)

(global-smart-tab-mode 1)
