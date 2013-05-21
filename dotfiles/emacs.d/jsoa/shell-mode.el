
(add-hook 'eshell-preoutput-filter-functions
           'ansi-color-filter-apply)

(add-hook 'eshell-preoutput-filter-functions
           'ansi-color-apply)
