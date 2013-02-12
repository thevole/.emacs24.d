(defun mbv-add-rubyxmp ()
  (require 'rcodetools)
  (local-set-key (kbd "C-c C-c") 'xmp))

(defun ri-bind-key ()
  (local-set-key (kbd "<f1>") 'yari))


(add-hook 'ruby-mode-hook
          (lambda ()
            (electric-indent-mode 1)))

(add-hook 'ruby-mode-hook 'mbv-add-rubyxmp)

(add-hook 'ruby-mode-hook 'ri-bind-key)
