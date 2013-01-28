;; Setting rbenv path
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" "/usr/local/bin:" (getenv "PATH")))

(setq exec-path (append '("/usr/local/bin") exec-path))

(setq exec-path
      (cons (concat (getenv "HOME") "/.rbenv/shims")
      (cons (concat (getenv "HOME") "/.rbenv/bin")
      exec-path)))
