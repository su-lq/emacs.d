(use-package projectile
  :delight
  '(:eval (concat " PT[" (projectile-project-name) "]"))
  :hook
  (prog-mode . projectile-mode)
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  (when (file-directory-p "~/Workspace")
    (setq projectile-project-search-path
          '("~/Workspace/"
            ;; "/ssh:device156:~/"
            ;; "/docker:dev:/Workspace/"
            )))
  ;; (setq projectile-switch-project-action #'projectile-dired)
  :config
  (add-to-list 'projectile-globally-ignored-directories ".ccls-cache")
  )

(use-package helm-projectile
  :if (functionp 'helm)
  :config
  (helm-projectile-on)
  )

(provide 'setup-projectile)
