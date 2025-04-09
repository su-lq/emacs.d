;; (helm-mode t)

(use-package helm
  :delight
  ;; :demand t
  :bind
  (("M-x" . helm-M-x)
   ("C-x C-f" . helm-find-files))
  :config
  (setq helm-M-x-fuzzy-match t
        helm-mode-fuzzy-match t
        helm-buffers-fuzzy-matching t
        helm-recentf-fuzzy-match t
        helm-locate-fuzzy-match t
        helm-semantic-fuzzy-match t
        helm-imenu-fuzzy-match t
        helm-completion-in-region-fuzzy-match t
        helm-candidate-number-list 150
        helm-split-window-in-side-p t
        ;; helm-move-to-line-cycle-in-source t
        helm-autoresize-max-height 0
        helm-autoresize-min-height 20)
  (helm-mode 1)
  )

(provide 'setup-helm)
