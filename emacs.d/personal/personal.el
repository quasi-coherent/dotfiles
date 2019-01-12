(require 'prelude-company)
(require 'prelude-emacs-lisp)
(require 'prelude-helm-everywhere)
(require 'prelude-helm)
(require 'prelude-haskell)
(require 'prelude-scala)
(require 'prelude-python)
(require 'prelude-shell)

;; global variables
(setq
 create-lockfiles nil
 make-backup-files nil
 whitespace-line-column 100)

;; Turn on line number gutters
(global-linum-mode t)

;; Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
