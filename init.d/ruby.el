(defun mbv-add-rubyxmp ()
  (require 'rcodetools)
  (local-set-key (kbd "C-c C-c") 'xmp))

(add-hook 'ruby-mode-hook 'mbv-add-rubyxmp)

(defun ri-bind-key ()
  (local-set-key (kbd "<f1>") 'yari))
(add-hook 'ruby-mode-hook 'ri-bind-key)
