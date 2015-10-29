(require 'qml-mode)

(add-to-list 'auto-mode-alist '("\\.qml$" . qml-mode))
(add-to-list 'interpreter-mode-alist '("qml" . qml-mode))
