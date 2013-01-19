(defun mbv-add-rubyxmp ()
  (require 'rcodetools)
  (local-set-key (kbd "C-c C-c") 'xmp))

(add-hook 'ruby-mode-hook 'mbv-add-rubyxmp)
