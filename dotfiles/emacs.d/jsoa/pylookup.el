
;; Doc lookup
(autoload 'pylookup-lookup "pylookup")
(autoload 'pylookup-update "pylookup")
(setq pylookup-program "~/.emacs.d/vendor/pylookup/pylookup.py")
(setq pylookup-db-file "~/.emacs.d/vendor/pylookup/pylookup.db")
(global-set-key "\C-ch" 'pylookup-lookup
)
