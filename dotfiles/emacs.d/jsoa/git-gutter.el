(global-git-gutter-mode t)

;; (setq git-gutter:window-width 2)

(setq git-gutter:modified-sign "|")
(setq git-gutter:added-sign "|")
(setq git-gutter:deleted-sign "|")

(set-face-background 'git-gutter:modified "color-234")
(set-face-background 'git-gutter:added "color-234")
(set-face-background 'git-gutter:deleted "color-234")

(set-face-foreground 'git-gutter:modified "blue")
(set-face-foreground 'git-gutter:added "green")
(set-face-foreground 'git-gutter:deleted "red")

(setq git-gutter:unchanged-sign "|")
(set-face-background 'git-gutter:unchanged "color-234")
(set-face-foreground 'git-gutter:unchanged "color-234")

;; (setq git-gutter:separator-sign " ")
;; (set-face-background 'git-gutter:separator "color-234")
;; (set-face-foreground 'git-gutter:separator "color-234")
