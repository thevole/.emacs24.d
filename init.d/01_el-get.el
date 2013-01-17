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
  (add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
  (add-hook 'ruby-mode-hook '(lambda ()
                               (setq ruby-deep-arglist t)
                               (setq ruby-deep-indent-paren nil)
                               (setq c-tab-always-indent nil)
                               (require 'inf-ruby)
                               (require 'ruby-compilation)
                               ;; (rinari-minor-mode t)
                               )))
(defun rhtml-mode-hook ()
  (autoload 'rhtml-mode "rhtml-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . rhtml-mode))
  (add-to-list 'auto-mode-alist '("\\.rjs\\'" . rhtml-mode))
  (add-hook 'rhtml-mode '(progn
                           (define-key rhtml-mode-map (kbd "M-s") 'save-buffer))))
(defun yaml-mode-hook ()
  (autoload 'yaml-mode "yaml-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode)))
(defun css-mode-hook ()
  (autoload 'css-mode "css-mode" nil t)
  (add-hook 'css-mode-hook '(lambda ()
                              (setq css-indent-level 2)
                              (setq css-indent-offset 2))))

(setq el-get-sources
      '((:name ruby-mode 
               :type elpa
               :load "ruby-mode.el"
               :after (progn (ruby-mode-hook)))
        (:name inf-ruby  :type elpa)
        (:name ruby-compilation :type elpa)
	(:name eieio :type elpa)
        (:name css-mode 
               :type elpa 
               :after (progn (css-mode-hook)))
        (:name textmate
               :type git
               :url "git://github.com/defunkt/textmate.el"
               :load "textmate.el")
        (:name rhtml
               :type git
               :url "https://github.com/eschulte/rhtml.git"
               :features rhtml-mode
               :after (progn (rhtml-mode-hook)))
        (:name rinari
               :type git
               :url "https://github.com/eschulte/rinari.git"
               :load "rinari.el")
        (:name rspec-mode
               :type git
               :url "https://github.com/pezra/rspec-mode.git"
               :load "rspec-mode.el"
               :after (require 'rspec-mode))
	(:name gh :type elpa)
	(:name inflections :type elpa)
	(:name coffee-mode :type elpa)
        (:name yaml-mode 
               :type git
               :url "http://github.com/yoshiki/yaml-mode.git"
               :features yaml-mode
               :after (progn (yaml-mode-hook)))))

     (setq mbv-packages
           (append
            '(cssh el-get yasnippet findr gh hexrgb inflections fill-column-indicator
                   jump feature-mode eieio xml-rpc coffee-mode magit
                   haml-mode scss-mode)
            (mapcar 'el-get-source-name el-get-sources)))


(el-get 'sync mbv-packages)
