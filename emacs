
(add-to-list 'load-path
             "~/.emacs.d/plugins")
(require 'yasnippet-bundle)

(add-to-list 'load-path "~/.emacs.d/plugins/django-mode/")
(require 'django-html-mode)
(require 'django-mode)
(yas/load-directory "~/.emacs.d/plugins/django-mode/snippets")

(add-to-list 'auto-mode-alist '("\\.djhtml$" . django-html-mode))

