(use-package highlight-indent-guides
  :delight
  :hook
  ((python-mode) . highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-method 'column)
  (setq highlight-indent-guides-responsive 'top)
  )


(provide 'setup-hl-indent)
