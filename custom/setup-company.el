(use-package company
  :delight
  :bind
  (:map c-mode-map
        ("C-<tab>" . company-complete))
  (:map c++-mode-map
        ("C-<tab>" . company-complete))
  (:map python-mode-map
        ("C-<tab>" . company-complete))
  :hook
  ((after-init . global-company-mode)
   (c++-mode . (lambda () (setq company-clang-insert-arguments "-std=c++11")))
   )
  :config
  (setq company-idle-delay 0.0)
  (setq company-show-numbers t)
  (setq company-tooltip-limit 10)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  (setq company-tooltip-flip-when-above t)
  (setq company-backends (delete 'company-semantic company-backends))
  )

(provide 'setup-company)
