(package-initialize)
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

(el-get 'sync)
