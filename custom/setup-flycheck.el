;;; package --- flycheck setup
;;; Commentary:
;;; Code:

(use-package flycheck
  :delight
  :hook
  (prog-mode . flycheck-mode)
  (c++-mode . (lambda () (setq flycheck-gcc-language-standard "c++11"
                               flycheck-clang-language-standard "c++11")))
  :init
  (setq flycheck-emacs-lisp-load-path 'inherit)
  :config
  (setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-cppcheck c/c++-gcc python-pycompile))
  )

(use-package pylint)

(provide 'setup-flycheck)

;;; setup-flycheck.el ends here
