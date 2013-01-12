(require 'package)

(add-to-list 'package-archives
	     '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
	     '("Marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
	     '("Tromey" . "http://tromey.com/elpa/") t)
(package-initialize)

(setq mbv-packages 
      (list 'xml-rpc 'magit 'gh 'inf-ruby))
;; (dolist (package mbv-required-packages)
;;   (when (not (package-installed-p package))
;;     (package-refresh-contents)
;;     (package-install package)))

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
        (:name gist :type elpa)))

(el-get 'sync (mapcar 'prin1-to-string mbv-packages))
