(use-package python
  :config
  (setq indent-tabs-mode nil)
  ;; (setq-default python-indent 4)
  (setq-default python-indent-offset 4)
  )

(use-package pipenv
  :delight
  :hook
  (python-mode . pipenv-mode)
  ;; :init
  ;; (setq pipenv-projectile-after-switch-function #'pipenv-projectile-after-switch-extended)
  )

(use-package lsp-pyright
  ;; :disabled
  :hook
  (python-mode . (lambda () (require 'lsp-pyright) (lsp-deferred)))
  )

(provide 'setup-py-mode)
