(use-package tramp-term
  :delight
  :config
  (setq vc-ignore-dir-regexp
        (format "\\(%s\\)\\|\\(%s\\)"
                vc-ignore-dir-regexp
                tramp-file-name-regexp))
  )

;; (use-package docker-tramp
;;   :delight)

(provide 'setup-tramp)
