;;; Global emacs settings

;; Set highlight line on
(global-hl-line-mode 1)

;; Change the color of the default highlight line
(set-face-background 'hl-line "#222")

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
(if (fboundp 'vertical-scroll-bar) (vertical-scroll-bar -1))
(if (fboundp 'horizontal-scroll-bar) (horizontal-scroll-bar -1))

;; overwrite selection with typing
(delete-selection-mode t)

;; Modeline info
;; (display-time-mode 1)
;; (display-battery-mode 1)

;; Small fringes
(set-fringe-mode '(0 . 0))

;; global linum-mode
;; (global-linum-mode 1)
;; (setq linum-format "%4d \u2502")
;; (custom-set-faces
;;  '(linum ((t (:inherit (shadow default) :background "color-234" :foreground "brightblack")))))

;; Emacs gurus don't need no stinking scroll bars
(when (fboundp 'toggle-scroll-bar)
  (toggle-scroll-bar -1))

;; Explicitly show the end of a buffer
(set-default 'indicate-empty-lines t)

;; Line-wrapping
(set-default 'fill-column 80)

;; Prevent the annoying beep on errors
(setq visible-bell nil)

;; Add proper word wrapping
;; (global-visual-line-mode t)

;; Make sure all backup and autosave files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; From https://github.com/antonj/.emacs.d/blob/master/aj-generic.el
(defvar autosave-dir "~/.emacs.d/autosave")
(make-directory autosave-dir t)

;; Gotta see matching parens
(show-paren-mode t)

;; Don't truncate lines
(setq-default truncate-lines t)
(setq truncate-partial-width-windows nil)

;; For emacsclient
(server-start)

;; Desktop mode
(desktop-save-mode 1)
(setq desktop-path '("~/.emacs.d/desktops/"))
(setq desktop-dirname "~/.emacs.d/desktops/")
(setq desktop-base-file-name "emacs-desktop")

;; uniqify buffer names
(require 'uniquify)
(setq
  uniquify-buffer-name-style 'post-forward
  uniquify-separator ":")

;; Trailing whitespace is unnecessary
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Trash can support
(setq delete-by-moving-to-trash t)

;; Enable ido mode
;; (ido-mode t)
;; (setq ido-enable-flex-matching t)

;; Enable ivy mode
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(setq ivy-wrap t)
(setq ivy-format-function (quote ivy-format-function-default))
(setq ivy-height 15)

(global-font-lock-mode 1)

(set-face-attribute 'default nil :height 100)

;; Show keystrokes
(setq echo-keystrokes 0.1)

;; Never insert tabs
(set-default 'indent-tabs-mode nil)
(setq-default tab-width 4)

;; The custom themes path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(setq magit-push-current-set-remote-if-missing t)
