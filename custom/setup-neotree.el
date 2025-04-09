(use-package neotree
  :bind
  ("C-c C-t" . neotree-toggle)
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

(provide 'setup-neotree)
