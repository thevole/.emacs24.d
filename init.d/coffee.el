;; Line numbers & tabwidth & electric indent
(add-hook 'mbv-coffee-mode-hook
          (lambda () (linum-mode 1))
          (setq coffee-tab-width 2)
          (electric-indent-mode 0))

(add-hook 'coffee-mode-hook 'mbv-coffee-mode-hook)
(add-hook 'haml-mode-hook 'mbv-coffee-mode-hook)
