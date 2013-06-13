(global-git-gutter-mode t)

(setq git-gutter:window-width 1)

(setq git-gutter:modified-sign "|")
(setq git-gutter:added-sign "|")
(setq git-gutter:deleted-sign "|")

(set-face-background 'git-gutter:modified "#131313")
(set-face-background 'git-gutter:added "#131313")
(set-face-background 'git-gutter:deleted "#131313")


(set-face-foreground 'git-gutter:modified "blue")
(set-face-foreground 'git-gutter:added "green")
(set-face-foreground 'git-gutter:deleted "red")

(setq git-gutter:unchanged-sign "|")
(set-face-background 'git-gutter:unchanged "#131313")
(set-face-foreground 'git-gutter:unchanged "#131313")

;; (setq git-gutter:separator-sign " ")
;; (set-face-background 'git-gutter:separator "color-234")
;; (set-face-foreground 'git-gutter:separator "color-234")
