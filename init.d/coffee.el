
(add-hook 'coffee-mode-hook
          (lambda ()
            (linum-mode 1)
            (electric-indent-mode 0)
       ))

(add-hook 'haml-mode-hook
          (lambda ()
            (electric-indent-mode 0)))
