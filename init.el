(setq mbv-emacs-init-file load-file-name)
(setq mbv-emacs-config-dir
      (file-name-directory mbv-emacs-init-file))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" mbv-emacs-config-dir))
(load custom-file)
