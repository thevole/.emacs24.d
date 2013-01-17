(add-hook 'ruby-mode-hook
          (lambda () (run-hooks 'mbv-code-modes-hook)))

;; (eval-after-load 'ruby-mode
;;   '(progn
;;      (require 'rcodetools)
;;      (define-key ruby-mode-map (kbd "C-c C-c") 'xmp)))

(defun mbv-add-rubyxmp ()
  (require 'rcodetools)
  (local-set-key (kbd "C-c C-c") 'xmp))

(add-hook 'ruby-mode-hook 'mbv-add-rubyxmp)
