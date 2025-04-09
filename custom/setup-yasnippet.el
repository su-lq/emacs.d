(use-package yasnippet
  :delight
  (yas-minor-mode)
  :hook
  (prog-mode . yas-minor-mode)
  )

(use-package yasnippet-snippets
  :after yasnippet
  )

(use-package auto-yasnippet
  :bind
  (("C-c & w" . aya-create)
   ("C-c & y" . aya-expand)
   )
  :config
  (setq aya-persist-snippets-dir (concat user-emacs-directory "my/snippets"))
  )

(provide 'setup-yasnippet)
