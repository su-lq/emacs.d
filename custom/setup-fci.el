(use-package fill-column-indicator
  :hook
  ((python-mode) . fci-mode)
  :config
  (setq fci-rule-column 80
        fci-rule-width 3
        fci-rule-color "darkgrey")
  )


(provide 'setup-fci)
