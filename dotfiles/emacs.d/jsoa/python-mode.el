
(require 'python-mode)
;; (require 'highlight-indentation)

;; Default python command is python2
(setq py-python-command "python3")

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

;;; bind RET to py-newline-and-indent
;;; bind f7 to pylint and f8 to pep8
;;; enabled flycheck mode for python
(add-hook 'python-mode-hook '(lambda ()
     (flycheck-mode)
     (fci-mode)
     ;; (highlight-indentation)
     ;; (auto-complete-mode)
     (define-key python-mode-map [(f7)] 'pylint)
     (define-key python-mode-map [(f8)] 'pep8)
     (define-key python-mode-map "\C-m" 'newline-and-indent)))


;;; Set the tabs correctly
(setq-default py-indent-offset 4)
