(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(add-to-list 'load-path "~/.emacs.d/elisp/")
(load-library "packages")
(load-library "style")
(load-library "org-stuff")

(org-agenda-list)
(delete-other-windows)
