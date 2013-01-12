;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (gh-api-v3 gh-api) "gh/gh-api" "gh/gh-api.el" (20721
;;;;;;  36941))
;;; Generated autoloads from gh/gh-api.el

(require 'eieio)

(eieio-defclass-autoload 'gh-api 'nil "gh/gh-api" "Github API")

(eieio-defclass-autoload 'gh-api-v3 '(gh-api) "gh/gh-api" "Github API v3")

;;;***

;;;### (autoloads (gh-oauth-authenticator gh-password-authenticator
;;;;;;  gh-authenticator) "gh/gh-auth" "gh/gh-auth.el" (20721 36941))
;;; Generated autoloads from gh/gh-auth.el

(require 'eieio)

(eieio-defclass-autoload 'gh-authenticator 'nil "gh/gh-auth" "Abstract authenticator")

(eieio-defclass-autoload 'gh-password-authenticator '(gh-authenticator) "gh/gh-auth" "Password-based authenticator")

(eieio-defclass-autoload 'gh-oauth-authenticator '(gh-authenticator) "gh/gh-auth" "Oauth-based authenticator")

;;;***

;;;### (autoloads nil "gh/gh-cache" "gh/gh-cache.el" (20721 36941))
;;; Generated autoloads from gh/gh-cache.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh/gh-common" "gh/gh-common.el" (20721 36941))
;;; Generated autoloads from gh/gh-common.el

(require 'eieio)

;;;***

;;;### (autoloads (gh-gist-gist gh-gist-gist-stub gh-gist-api) "gh/gh-gist"
;;;;;;  "gh/gh-gist.el" (20721 36941))
;;; Generated autoloads from gh/gh-gist.el

(require 'eieio)

(eieio-defclass-autoload 'gh-gist-api '(gh-api-v3) "gh/gh-gist" "Gist API")

(eieio-defclass-autoload 'gh-gist-gist-stub '(gh-object) "gh/gh-gist" "Class for user-created gist objects")

(eieio-defclass-autoload 'gh-gist-gist '(gh-gist-gist-stub) "gh/gh-gist" "Gist object")

;;;***

;;;### (autoloads nil "gh/gh-issues" "gh/gh-issues.el" (20721 36941))
;;; Generated autoloads from gh/gh-issues.el

(require 'eieio)

;;;***

;;;### (autoloads (gh-oauth-api) "gh/gh-oauth" "gh/gh-oauth.el" (20721
;;;;;;  36941))
;;; Generated autoloads from gh/gh-oauth.el

(require 'eieio)

(eieio-defclass-autoload 'gh-oauth-api '(gh-api-v3) "gh/gh-oauth" "OAuth API")

;;;***

;;;### (autoloads (gh-orgs-org-stub gh-orgs-api) "gh/gh-orgs" "gh/gh-orgs.el"
;;;;;;  (20721 36941))
;;; Generated autoloads from gh/gh-orgs.el

(require 'eieio)

(eieio-defclass-autoload 'gh-orgs-api '(gh-api-v3) "gh/gh-orgs" "Orgs API")

(eieio-defclass-autoload 'gh-orgs-org-stub '(gh-object) "gh/gh-orgs" nil)

;;;***

;;;### (autoloads (gh-pulls-request gh-pulls-api) "gh/gh-pulls" "gh/gh-pulls.el"
;;;;;;  (20721 36941))
;;; Generated autoloads from gh/gh-pulls.el

(require 'eieio)

(eieio-defclass-autoload 'gh-pulls-api '(gh-api-v3) "gh/gh-pulls" "Git pull requests API")

(eieio-defclass-autoload 'gh-pulls-request '(gh-pulls-request-stub) "gh/gh-pulls" "Git pull requests API")

;;;***

;;;### (autoloads (gh-repos-repo gh-repos-repo-stub gh-repos-api)
;;;;;;  "gh/gh-repos" "gh/gh-repos.el" (20721 36941))
;;; Generated autoloads from gh/gh-repos.el

(require 'eieio)

(eieio-defclass-autoload 'gh-repos-api '(gh-api-v3) "gh/gh-repos" "Repos API")

(eieio-defclass-autoload 'gh-repos-repo-stub '(gh-object) "gh/gh-repos" "Class for user-created repository objects")

(eieio-defclass-autoload 'gh-repos-repo '(gh-repos-repo-stub) "gh/gh-repos" "Class for GitHub repositories")

;;;***

;;;### (autoloads nil "gh/gh-url" "gh/gh-url.el" (20721 36941))
;;; Generated autoloads from gh/gh-url.el

(require 'eieio)

;;;***

;;;### (autoloads (magit-status) "magit/magit" "magit/magit.el" (20721
;;;;;;  36948))
;;; Generated autoloads from magit/magit.el

(autoload 'magit-status "magit/magit" "\
Open a Magit status buffer for the Git repository containing DIR.
If DIR is not within a Git repository, offer to create a Git
repository in DIR.

Interactively, a prefix argument means to ask the user which Git
repository to use even if `default-directory' is under Git
control.  Two prefix arguments means to ignore `magit-repo-dirs'
when asking for user input.

\(fn DIR)" t nil)

;;;***

;;;### (autoloads (magit-blame-mode) "magit/magit-blame" "magit/magit-blame.el"
;;;;;;  (20721 36948))
;;; Generated autoloads from magit/magit-blame.el

(autoload 'magit-blame-mode "magit/magit-blame" "\
Display blame information inline.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (turn-on-magit-stgit magit-stgit-mode) "magit/magit-stgit"
;;;;;;  "magit/magit-stgit.el" (20721 36948))
;;; Generated autoloads from magit/magit-stgit.el

(autoload 'magit-stgit-mode "magit/magit-stgit" "\
StGit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-stgit "magit/magit-stgit" "\
Unconditionally turn on `magit-stgit-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (turn-on-magit-svn magit-svn-mode) "magit/magit-svn"
;;;;;;  "magit/magit-svn.el" (20721 36948))
;;; Generated autoloads from magit/magit-svn.el

(autoload 'magit-svn-mode "magit/magit-svn" "\
SVN support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-svn "magit/magit-svn" "\
Unconditionally turn on `magit-svn-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (turn-on-magit-topgit magit-topgit-mode) "magit/magit-topgit"
;;;;;;  "magit/magit-topgit.el" (20721 36948))
;;; Generated autoloads from magit/magit-topgit.el

(autoload 'magit-topgit-mode "magit/magit-topgit" "\
Topgit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-topgit "magit/magit-topgit" "\
Unconditionally turn on `magit-topgit-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (global-magit-wip-save-mode magit-wip-save-mode
;;;;;;  magit-wip-mode) "magit/magit-wip" "magit/magit-wip.el" (20721
;;;;;;  36948))
;;; Generated autoloads from magit/magit-wip.el

(defvar magit-wip-mode nil "\
Non-nil if Magit-Wip mode is enabled.
See the command `magit-wip-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `magit-wip-mode'.")

(custom-autoload 'magit-wip-mode "magit/magit-wip" nil)

(autoload 'magit-wip-mode "magit/magit-wip" "\
In Magit log buffers; give wip refs a special appearance.

\(fn &optional ARG)" t nil)

(autoload 'magit-wip-save-mode "magit/magit-wip" "\
Magit support for committing to a work-in-progress ref.

When this minor mode is turned on and a file is saved inside a writable
git repository then it is also committed to a special work-in-progress
ref.

\(fn &optional ARG)" t nil)

(defvar global-magit-wip-save-mode nil "\
Non-nil if Global-Magit-Wip-Save mode is enabled.
See the command `global-magit-wip-save-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-magit-wip-save-mode'.")

(custom-autoload 'global-magit-wip-save-mode "magit/magit-wip" nil)

(autoload 'global-magit-wip-save-mode "magit/magit-wip" "\
Toggle Magit-Wip-Save mode in all buffers.
With prefix ARG, enable Global-Magit-Wip-Save mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Magit-Wip-Save mode is enabled in all buffers where
`turn-on-magit-wip-save' would do it.
See `magit-wip-save-mode' for more information on Magit-Wip-Save mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (rebase-mode) "magit/rebase-mode" "magit/rebase-mode.el"
;;;;;;  (20721 36948))
;;; Generated autoloads from magit/rebase-mode.el

(autoload 'rebase-mode "magit/rebase-mode" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("git-rebase-todo" . rebase-mode))

;;;***

;;;### (autoloads nil nil ("gh/gh-autoloads.el" "gh/gh-pkg.el" "gh/gh.el"
;;;;;;  "inf-ruby/inf-ruby.el" "magit/50magit.el" "magit/magit-bisect.el"
;;;;;;  "magit/magit-key-mode.el" "magit/magit-pkg.el" "xml-rpc/xml-rpc-autoloads.el"
;;;;;;  "xml-rpc/xml-rpc-pkg.el" "xml-rpc/xml-rpc.el") (20721 36953
;;;;;;  411872))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
