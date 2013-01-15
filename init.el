;; Directories and file names
(setq mbv-emacs-init-file (or load-file-name buffer-file-name))
(setq mbv-emacs-config-dir
      (file-name-directory mbv-emacs-init-file))
(setq user-emacs-directory mbv-emacs-config-dir)
(setq mbv-init-dir 
      (expand-file-name "init.d" mbv-emacs-config-dir))

;; Add custom elisp dir to loadpath
(setq mbv-elisp-dir
      (expand-file-name "elisp" user-emacs-directory))
(setq mbv-elisp-external-dir
      (expand-file-name "external" mbv-elisp-dir))

;; Load all elisp files in ./init.d
(if (file-exists-p mbv-init-dir)
    (dolist (file (directory-files mbv-init-dir t "\.el$"))
      (load file)))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" mbv-emacs-config-dir))
(load custom-file)
