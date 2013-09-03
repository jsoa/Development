
;; map the window manipulation keys to meta 0, 1, 2, o
;; these commands can be used normally using C-x instead of M
(global-set-key (kbd "M-3") 'split-window-horizontally) ; was digit-argument
(global-set-key (kbd "M-2") 'split-window-vertically) ; was digit-argument
(global-set-key (kbd "M-1") 'delete-other-windows) ; was digit-argument
(global-set-key (kbd "M-0") 'delete-window) ; was digit-argument
(global-set-key (kbd "M-o") 'other-window) ; was facemenu-keymap

;; Enable some disabled commands
(put 'downcase-region 'disabled nil) ;; C-x C-l
(put 'upcase-region 'disabled nil) ;; C-x C-u

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

;; ispell region
(global-set-key (kbd "C-c s") 'ispell-region)

;; magit bindings
(global-set-key [(control f9)] (lambda () (interactive) (magit-status default-directory)))
(global-set-key [(f9)]         (lambda () (interactive) (magit-status default-directory)))

;; Note: need to disable menu access keys and shortcuts in terminal

;; ref: https://github.com/magnars/.emacs.d/blob/master/key-bindings.el
(global-set-key (kbd "C-c c") 'mc/edit-lines)
(global-set-key (kbd "C-c e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-c a") 'mc/edit-beginnings-of-lines)

;; Mark additional regions matching current region
(global-set-key (kbd "C-c b") 'mc/mark-all-like-this-dwim)
(global-set-key (kbd "C-c p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c n") 'mc/mark-next-like-this)
;; (global-set-key (kbd "C-c C-M-m") 'mc/mark-more-like-this-extended)
(global-set-key (kbd "C-c r") 'mc/mark-all-in-region)

;; Expand region (increases selected region by semantic units)
;; (global-set-key (kbd "C-c C-@") 'er/expand-region)

;; Edit file with sudo
(global-set-key (kbd "M-s e") 'sudo-edit)

;; set browse-url function depending on os
(if (eq system-type 'gnu/linux)
     (setq browse-url-browser-function 'browse-url-chromium)
)
(if (eq system-type 'darwin)
    ;; ref: http://francesco-cek.com/open-an-url-in-safari-from-emacs/
     (setq browse-url-browser-function 'browse-url-generic
          browse-url-generic-program "open")
)

(global-set-key (kbd "C-c C-o") 'browse-url)

;;
(global-unset-key [C-down-mouse-1])
