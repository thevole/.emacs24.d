(require 'package)

(add-to-list 'package-archives
	     '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
	     '("Marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
	     '("Tromey" . "http://tromey.com/elpa/") t)
(package-initialize)

(setq mbv-required-packages 
      (list 'xml-rpc 'magit 'gh 'inf-ruby))
(dolist (package mbv-required-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))
