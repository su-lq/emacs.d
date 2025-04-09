(use-package whitespace
  :delight
  :hook
  (prog-mode . whitespace-mode)
  (text-mode . whitespace-mode)
  :config
  ;; (setq whitespace-line-column 80)
  (setq whitespace-style '(face
                           ;; tabs
                           empty
                           trailing
                           ;; lines-tail
                           indentation
                           )
        )
  )

(provide 'setup-whitespace)
