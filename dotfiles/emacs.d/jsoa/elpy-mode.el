 (require 'elpy)

(setq elpy-rpc-backend "jedi")

(when (load "flycheck" t t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(add-hook 'elpy-mode-hook (lambda ()
     (hl-line-mode)
     (flycheck-mode)
     (fci-mode)
     ))


(defun elpy-goto-definition-or-rgrep ()
  "Go to the definition of the symbol at point, if found. Otherwise, run `elpy-rgrep-symbol'."
    (interactive)
    (ring-insert find-tag-marker-ring (point-marker))
    (condition-case nil (elpy-goto-definition)
        (error (elpy-rgrep-symbol
                (concat "\\(def\\|class\\)\s" (thing-at-point 'symbol) "(")))))

(define-key elpy-mode-map (kbd "M-.") 'elpy-goto-definition-or-rgrep)

;; (define-key elpy-mode-map [(f7)] 'pylint)
;; (define-key elpy-mode-map [(f8)] 'pep8)
;; (setq elpy-test-django-runner-command '("./manage.py" "test"))


(defun python-add-breakpoint ()
  "Add a break point"
  (interactive)
  (newline-and-indent)
  (insert "import ipdb; ipdb.set_trace()")
  (highlight-lines-matching-regexp "^[ ]*import ipdb; ipdb.set_trace()"))


; Highlight the call to ipdb
; src http://pedrokroger.com/2010/07/configuring-emacs-as-a-python-ide-2/
(defun annotate-pdb ()
  (interactive)
  (highlight-lines-matching-regexp "import ipdb")
  (highlight-lines-matching-regexp "ipdb.set_trace()"))
(add-hook 'python-mode-hook 'annotate-pdb)


(defun ipdb-cleanup ()
    (interactive)
    (save-excursion
      (replace-regexp ".*ipdb.set_trace().*\n" "" nil (point-min) (point-max))
      ;; (save-buffer)
      ))


;; IPython env variables
(setenv "IPY_TEST_SIMPLE_PROMPT" "1")
(setenv "IPYTHON_ARGUMENTS" "--simple-prompt")

(setq elpy-test-django-with-manage t)
