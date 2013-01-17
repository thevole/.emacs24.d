(add-hook 'ruby-mode-hook
          (lambda () (run-hooks 'mbv-code-modes-hook)))

(defun mbv-add-rubyxmp ()
  (require 'rcodetools)
  (local-set-key (kbd "C-c C-c") 'xmp))

(add-hook 'ruby-mode-hook 'mbv-add-rubyxmp)
