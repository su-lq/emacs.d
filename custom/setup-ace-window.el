(use-package ace-window
  :delight
  :bind
  ("C-x o" . ace-window)
  :config
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)
        aw-background t
        aw-dispatch-always t
        aw-minibuffer-flag t)
  )

(provide 'setup-ace-window)
