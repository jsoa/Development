
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

;; Initialize Pymac
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)

;;; Electric Pairs
;;(add-hook 'python-mode-hook
;;     (lambda ()
;;      (define-key python-mode-map "\"" 'electric-pair)
;;      (define-key python-mode-map "\'" 'electric-pair)
;;      (define-key python-mode-map "(" 'electric-pair)
;;      (define-key python-mode-map "[" 'electric-pair)
;;      (define-key python-mode-map "{" 'electric-pair)))
;;(defun electric-pair ()
;;  "Insert character pair without sournding spaces"
;;  (interactive)
;;  (let (parens-require-spaces)
;;    (insert-pair)))

;;; bind RET to py-newline-and-indent
;;; bind f7 to pylint and f8 to pep8
(add-hook 'python-mode-hook '(lambda ()
     (define-key python-mode-map [(f7)] 'python-pylint)
     (define-key python-mode-map [(f8)] 'python-pep8)
     (define-key python-mode-map "\C-m" 'newline-and-indent)))

;; (add-hook 'python-mode-hook
;;   (lambda ()
;;          (auto-complete-mode 1)))

;;; Set the tabs correctly
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default py-indent-offset 4)

;; Delete trailing whilespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)
