;; js2-mode

;; js2-mode is a bit slow for large files, therefore lets
;; not make is default
;; (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq js2-cleanup-whitespace t)
(setq js2-basic-offset 4)
(setq js2-bounce-indent-p t)

;; Special improvements using the mooz fork
;; https://github.com/mooz/js2-mode
(setq js2-consistent-level-indent-inner-bracket-p t)
(setq js2-use-ast-for-indentation-p t)
