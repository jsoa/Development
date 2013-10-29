
(require 'smart-tab)
(setq global-smart-tab-mode t)

;; ref: https://github.com/haxney/smart-tab/issues/1#issuecomment-2046965
(add-to-list 'hippie-expand-try-functions-list
             'yas/hippie-try-expand) ;put yasnippet in hippie-expansion list


;; ref: http://www.emacswiki.org/emacs/TabCompletion
(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
   the minibuffer. Else, if mark is active, indents region. Else if
   point is at the end of a symbol, expands it. Else indents the
   current line."
   (interactive)
   (if (minibufferp)
     (unless (minibuffer-complete)
       (dabbrev-expand nil))
     (if mark-active
       (indent-region (region-beginning)
         (region-end))
       (if (looking-at "\\_>")
         (dabbrev-expand nil)
         (indent-for-tab-command)))))


(setq smart-tab-using-hippie-expand t)
