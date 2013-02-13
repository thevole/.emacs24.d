(defvar mbv-packages
  '(ace-jump-mode coffee-mode expand-region feature-mode fill-column-indicator
                  haml-mode handlebars-mode inf-ruby inflections
                  js2-mode jump-char jump magit rinari rspec-mode scss-mode
                  wrap-region yaml-mode yari)
  "A list of packages to ensure are installed at launch.")

(defun mbv-packages-installed-p ()
  (loop for p in mbv-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (mbv-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p mbv-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'mbv-packages)
