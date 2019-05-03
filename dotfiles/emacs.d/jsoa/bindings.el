
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
(global-set-key [(control f9)] (lambda () (interactive) (magit-status)))
(global-set-key [(f9)]         (lambda () (interactive) (magit-status)))

;; Note: need to disable menu access keys and shortcuts in terminal

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


(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-x p") 'find-file-in-project)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-c C-r") 'ivy-resume)


(global-set-key (kbd "C-c d") 'file-info)
