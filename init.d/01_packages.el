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
            'yaml-mode 'rhtml 'css-mode))

;; el-get - see https://github.com/dimitri/el-get
(setq el-get-dir (expand-file-name "el-get" user-emacs-directory))

(add-to-list 'load-path 
             (expand-file-name "el-get/el-get" user-emacs-directory))
(unless (require 'el-get nil t) 
  (url-retrieve "https://raw.github.com/dimitri/el-get/master/el-get-install.el" 
                (lambda (s) (end-of-buffer) (eval-print-last-sexp))))

;; hooks
(defun ruby-mode-hook ()
  (autoload 'ruby-mode "ruby-mode" nil t)
  (add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
  (add-hook 'ruby-mode-hook '(progn
                               (setq ruby-deep-arglist t)
                               (setq ruby-deep-indent-paren nil)
                               (setq c-tab-always-indent nil)
                               (require 'inf-ruby)
                               (require 'ruby-compilation))))
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
  (add-hook 'css-mode-hook '(progrn
                              (setq css-indent-level 2)
                              (setq css-indent-offset 2))))

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
