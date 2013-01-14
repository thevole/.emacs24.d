(require 'package)

(add-to-list 'package-archives
	     '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
	     '("Marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
	     '("Tromey" . "http://tromey.com/elpa/") t)
(package-initialize)

(setq mbv-packages 
      (list 'xml-rpc 'magit 'gh 'inf-ruby
            'textmate 'ruby-compilation 'jump
            'inflections 'coffee-mode
            'haml-mode 'feature-mode
            'rhtml-mode
            'yaml-mode 'rhtml 'scss-mode))

;; el-get - see https://github.com/dimitri/el-get
(setq el-get-dir (expand-file-name "el-get" user-emacs-directory))

(add-to-list 'load-path 
             (expand-file-name "el-get/el-get" user-emacs-directory))
(unless (require 'el-get nil t) 
  (url-retrieve "https://raw.github.com/dimitri/el-get/master/el-get-install.el" 
                (lambda (s) (end-of-buffer) (eval-print-last-sexp))))


;; local sources
(setq el-get-sources
      '(
        (:name xml-rpc :type elpa)
        (:name yasnippet :type elpa)
        (:name feature-mode :type elpa)
        (:name findr :type elpa)
        (:name gh :type elpa)
        (:name hexrgb :type emacswiki)
        (:name inflections :type elpa)
        (:name jump :type elpa)
        ;; (:name magit-gh-pulls :type elpa) 
        (:name eieio :type elpa)
        (:name gist :type elpa)
        (:name ruby-mode :type elpa :load "ruby-mode.el" :after (progn (ruby-mode-hook)))
        (:name css-mode :type elpa :after (progn (css-mode-hook)))
        (:name inf-ruby :type elpa)
        (:name ruby-compilation :type elpa)
        (:name textmate :type git :url "https://github.com/defunkt/textmate.el" :load "textmate.el")
        (:name rhtml :type git :url "https://github.com/eschulte/rhtml.git" :features rhtml-mode :after (progn (rhtml-mode-hook)))
        (:name yaml-mode :type git :url "https://github.com/yoshiki/yaml-mode.git" :features yaml-mode :after (progn  (yaml-mode-hook)))
))

(el-get 'sync (mapcar 'prin1-to-string mbv-packages))
