(setq mbv-emacs-init-file load-file-name)
(setq mbv-emacs-config-dir
      (file-name-directory mbv-emacs-init-file))

(setq user-emacs-directory mbv-emacs-config-dir)

(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" mbv-emacs-config-dir))
(load custom-file)

;; Add custom elisp dir to loadpath
(setq mbv-elisp-dir
      (expand-file-name "elisp" user-emacs-directory))
(setq mbv-elisp-external-dir
      (expand-file-name "external" mbv-elisp-dir))

(dolist (project (directory-files mbv-elisp-external-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

;; Load lorem-ipsum
(add-to-list 'load-path mbv-elisp-dir)
(autoload 'Lorem-ipsum-insert-paragraphs "lorem-ipsum" "" t)
(autoload 'Lorem-ipsum-insert-sentences "lorem-ipsum" "" t)
(autoload 'Lorem-ipsum-insert-list "lorem-ipsum" "" t)

;; Line numbers hook
(add-hook 'mbv-code-modes-hook
	  (lambda () (linum-mode 1)))
(add-hook 'ruby-mode-hook
	  (lambda () (run-hooks 'mbv-code-modes-hook)))
