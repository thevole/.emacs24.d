(autoload 'fci-mode "fill-column-indicator"
  "Toggle fill column indicator"
  t)

;; Wrap region
(add-hook 'mbv-code-modes-hook
          (lambda () (wrap-region-mode 1)))

(add-hook 'html-mode-hook
          (lambda () (wrap-region-mode 1)))

;; Line numbers
(add-hook 'mbv-code-modes-hook
          (lambda () (linum-mode 1)))

;; Show whitespace
(add-hook 'mbv-code-modes-hook
          (lambda () (whitespace-mode 0)))

;; Truncate lines
(add-hook 'mbv-code-modes-hook
    (lambda () (setq truncate-lines t)))

;; Clean up whitespace on save
(add-hook 'mbv-code-modes-hook
          (lambda ()
            (add-hook 'before-save-hook 'whitespace-cleanup nil t)))

;; Show an indicator of the fill column
(add-hook 'mbv-code-modes-hook
          (lambda () (fci-mode 1)))

(add-hook 'prog-mode-hook
          (lambda () (run-hooks 'mbv-code-modes-hook)))
