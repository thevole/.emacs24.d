(require 'package)
;; (add-to-list 'package-archives
;;          '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
;; (add-to-list 'package-archives
;;              '("gnu" . "http://elpa.gnu.org/"))
;; (add-to-list 'package-archives
;;              '("tromey" . "http://tromey.com/elpa/"))
(package-initialize)

(require 'wrap-region)
