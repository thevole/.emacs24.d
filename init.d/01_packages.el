(setq el-get-dir (expand-file-name "el-get" user-emacs-directory))
(add-to-list 'load-path
             (expand-file-name "el-get/el-get" user-emacs-directory))

(setq el-get-user-package-directory
      (expand-file-name "init-files" el-get-dir))


(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(defun ruby-mode-hook ()
   (autoload 'ruby-mode "ruby-mode" nil t)
   (add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
   (add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
   (add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
   (add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
   (add-hook 'ruby-mode-hook '(lambda ()
                               (setq ruby-deep-arglist t)
                               (setq ruby-deep-indent-paren nil)
                               (setq c-tab-always-indent nil)
                               (require 'inf-ruby)
                               (require 'ruby-compilation)
                               )))

(defun css-mode-hook ()
  (autoload 'css-mode "css-mode" nil t)
  (add-hook 'css-mode-hook '(lambda ()
                              (setq css-indent-level 2)
                              (setq css-indent-offset 2))))

(setq el-get-sources
      '((:name rhtml-mode
               :type git
               :url "https://github.com/eschulte/rhtml.git"
               :features rhtml-mode)
        (:name coffee-mode
               :type git
               :url "https://github.com/defunkt/coffee-mode.git"
               :features coffee-mode)
        (:name ruby-mode
               :type elpa
               :features ruby-mode
               :after (progn (ruby-mode-hook)))
        (:name ruby-compilation :type elpa)
        (:name yaml-mode
               :type git
               :url "http://github.com/yoshiki/yaml-mode.git"
               :features yaml-mode)
        (:name css-mode
               :type elpa
               :after (progn (css-mode-hook)))
        (:name rspec-mode
               :type git
               :url "https://github.com/pezra/rspec-mode.git"
               :features rspec-mode)
        (:name cucumber
               :type git
               :url "https://github.com/michaelklishin/cucumber.el.git"
               :features feature-mode)
        (:name scss-mode
               :type git
               :url "https://github.com/antonj/scss-mode.git"
               :features scss-mode)
        (:name magit
               :type git
               :url "https://github.com/magit/magit.git"
               :features magit)
        (:name yari
               :type git
               :url "https://github.com/hron/yari.el.git"
               :load "yari.el")
        (:name rinari
               :type git
               :url "https://github.com/eschulte/rinari.git"
               :local "rinari.el")
))

     (setq mbv-packages
           (append
            '(el-get
              fill-column-indicator
              haml-mode
              coffee-mode)
            (mapcar 'el-get-source-name el-get-sources)))


(el-get 'sync mbv-packages)
