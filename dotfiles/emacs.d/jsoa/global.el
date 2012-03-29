;;; Global emacs settings

;; Don't show the startup screen
(setq inhibit-startup-message t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight regions and add special behaviors to regions.
;; "C-h d transient" for more info
(setq transient-mark-mode t)

;; save position in files
(setq-default save-place t)

;; Display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)

;; Turn off tool-bar-mode
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; overwrite selection with typing
(delete-selection-mode t)

;; Modeline info
(display-time-mode 1)
;; (display-battery-mode 1)

;; Small fringes
;; (set-fringe-mode '(1 . 1))

;; Emacs gurus don't need no stinking scroll bars
(when (fboundp 'toggle-scroll-bar)
  (toggle-scroll-bar -1))

;; Explicitly show the end of a buffer
(set-default 'indicate-empty-lines t)

;; Line-wrapping
(set-default 'fill-column 80)

;; Prevent the annoying beep on errors
;; (setq visible-bell t)

;; Make sure all backup and autosave files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; From https://github.com/antonj/.emacs.d/blob/master/aj-generic.el
(defvar autosave-dir "~/.emacs.d/autosave")
(make-directory autosave-dir t)

(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))

(defun make-auto-save-file-name ()
  (concat autosave-dir
          (if buffer-file-name
              (concat "/#" (file-name-nondirectory buffer-file-name) "#")
            (expand-file-name
             (concat "#%" (buffer-name) "#")))))

;; Gotta see matching parens
(show-paren-mode t)

;; Don't truncate lines
(setq-default truncate-lines t)
(setq truncate-partial-width-windows nil)

;; For emacsclient
(server-start)

;; Trailing whitespace is unnecessary
;; (add-hook 'before-save-hook (lambda () (whitespace-cleanup)))

;; Trash can support
(setq delete-by-moving-to-trash t)

;; `brew install aspell --lang=en` (instead of ispell)
;; (setq-default ispell-program-name "aspell")
;; (setq ispell-list-command "list")
;; (setq ispell-extra-args '("--sug-mode=ultra"))