;; Add my personal elisp directory to the load path
(add-to-list 'load-path mbv-elisp-dir)

(dolist (project (directory-files mbv-elisp-external-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))
