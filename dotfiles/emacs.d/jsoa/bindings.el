
;; map the window manipulation keys to meta 0, 1, 2, o
;; these commands can be used normally using C-x instead of M
(global-set-key (kbd "M-3") 'split-window-horizontally) ; was digit-argument
(global-set-key (kbd "M-2") 'split-window-vertically) ; was digit-argument
(global-set-key (kbd "M-1") 'delete-other-windows) ; was digit-argument
(global-set-key (kbd "M-0") 'delete-window) ; was digit-argument
(global-set-key (kbd "M-o") 'other-window) ; was facemenu-keymap

;; easier buffer killing
(global-unset-key (kbd "M-k"))
(global-set-key (kbd "M-K") 'kill-this-buffer)

;; ibuffer > list-buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; easier go to line; normally M-g M-g
(global-set-key (kbd "M-g") 'goto-line)

;; comment or uncomment region or line;
(global-set-key (kbd "M-/") 'comment-or-uncomment-region-or-line)

;; rename file or buffer
(global-set-key (kbd "C-c R") 'rename-current-file-or-buffer)

;; Note: need to disable menu access keys and shortcuts in terminal