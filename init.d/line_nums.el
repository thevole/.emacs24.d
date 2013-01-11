;; Line numbers hook
(add-hook 'mbv-code-modes-hook
	  (lambda () (linum-mode 1)))
(add-hook 'ruby-mode-hook
	  (lambda () (run-hooks 'mbv-code-modes-hook)))
