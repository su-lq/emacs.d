(use-package edwina
  :disabled
  :config
  (setq display-buffer-base-action '(display-buffer-below-selected))
  (edwina-setup-dwm-keys)
  (edwina-mode 1)
  )

(provide 'setup-edwina)
