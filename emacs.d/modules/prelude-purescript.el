;;; prelude-purescript.el --- Emacs Prelude: Nice config for Purescript programming
;;
;; Author: Daniel Donohue
;; Version: 1.0.0
;; Keywords: convenience
;;
;;; Commentary:
;;

;;; Code:

(require 'prelude-programming)
(prelude-require-packages '(purescript-mode psc-ide))

(add-hook 'purescript-mode-hook
          (lambda ()
            (psc-ide-mode)
            (company-mode)
            (flycheck-mode)
            (turn-on-purescript-indentation)))

(setq psc-ide-use-npm-bin t)

(provide 'prelude-purescript)

;;; prelude-purescript.el ends here
