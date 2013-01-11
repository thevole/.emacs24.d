(setq mbv-emacs-init-file load-file-name)
(setq mbv-emacs-config-dir
      (file-name-directory mbv-emacs-init-file))

(setq user-emacs-directory mbv-emacs-config-dir)

(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" mbv-emacs-config-dir))
(load custom-file)
