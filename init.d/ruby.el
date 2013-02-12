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

(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-hook 'ruby-mode-hook '(lambda ()
                             (setq ruby-deep-arglist t)
                             (setq ruby-deep-indent-paren nil)
                             (setq c-tab-always-indent nil)
                             (require 'inf-ruby)
                             (require 'ruby-compilation)
                             ))

(add-hook 'css-mode-hook '(lambda ()
                            (setq css-indent-level 2)
                            (setq css-indent-offset 2)))
