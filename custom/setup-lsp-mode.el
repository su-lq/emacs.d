;;; package --- lsp-mode setup
;;; Commentary:
;;; Code:

(use-package lsp-mode
  :commands (lsp)
  :hook
  ((c-mode . lsp-deferred)
   (c++-mode . lsp-deferred)
   (python-mode . lsp-deferred)
   (go-mode . lsp-deferred)
   (rust-mode . lsp-deferred)
   (before-save . whitespace-cleanup)
   )

  :config
  (setq lsp-disabled-clients '(ccls))
  (setq lsp-prefer-flymake nil)
  (setq lsp-enable-indentation nil)
  (setq lsp-diagnostic-package :none)
  (setq lsp-idle-delay 0.1)

  ;; (progn
  ;;   (lsp-register-client
  ;;    (make-lsp-client :new-connection (lsp-tramp-connection "clangd")
  ;;                     :major-modes '(c-mode c++-mode)
  ;;                     :remote? t
  ;;                     :server-id 'dev)))

  (lsp-register-client
     (make-lsp-client :new-connection (lsp-tramp-connection "clangd")
                      :major-modes '(c-mode c++-mode)
                      :remote? t
                      :server-id 'dev))
  )

(use-package lsp-ui
  :after (lsp-mode)
  :commands (lsp-ui-mode)
  :hook (lsp-mode . lsp-ui-mode)
  :bind
  (:map lsp-ui-mode-map
        ([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
        ([remap xref-find-references] . lsp-ui-peek-find-references)
        ("C-c C-l ." . lsp-ui-peek-find-definitions)
        ("C-c C-l ?" . lsp-ui-peek-find-references)
        ("C-c C-l r" . lsp-rename)
        ("C-c C-l x" . lsp-restart-workspace)
        ("C-c C-l w" . lsp-ui-peek-find-workspace-symbol)
        ("C-c C-l i" . lsp-ui-peek-find-implementation)
        ("C-c C-l d" . lsp-describe-thing-at-point)
        )
  :config
  ;; don't include type signature in the child frame
  (setq lsp-ui-doc-include-signature nil)
  ;; don't show symbol on the right of info
  (setq lsp-ui-sideline-show-symbol nil)

  ;; (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  ;; (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)

  ;; (define-key lsp-ui-mode-map (kbd "C-c C-l .") 'lsp-ui-peek-find-definitions)
  ;; (define-key lsp-ui-mode-map (kbd "C-c C-l ?") 'lsp-ui-peek-find-references)
  ;; (define-key lsp-ui-mode-map (kbd "C-c C-l r") 'lsp-rename)
  ;; (define-key lsp-ui-mode-map (kbd "C-c C-l x") 'lsp-restart-workspace)
  ;; (define-key lsp-ui-mode-map (kbd "C-c C-l w") 'lsp-ui-peek-find-workspace-symbol)
  ;; (define-key lsp-ui-mode-map (kbd "C-c C-l i") 'lsp-ui-peek-find-implementation)
  ;; (define-key lsp-ui-mode-map (kbd "C-c C-l d") 'lsp-describe-thing-at-point)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-ui-doc-enable t)
  (setq lsp-ui-peek-enable t)
  (setq lsp-ui-peek-always-show t))

;; (use-package lsp-docker
;;   :disabled
;;   ;; :after (lsp-mode)
;;   ;; :commands (lsp-docker-start)
;;   ;; :hook (lsp-mode . lsp-docker-start)
;;   :config
;;   (defvar lsp-docker-client-packages
;;     '(lsp-clangd))

;;   (setq lsp-docker-client-configs
;;         '((:server-id clangd :docker-server-id clangd-docker :server-command "clangd")))

;;   (lsp-docker-init-clients
;;    :path-mappings '(("/Users/suliquan/Workspace/FFmpeg" . "/FFmpeg"))
;;    :client-packages lsp-docker-client-packages
;;    :client-configs lsp-docker-client-configs))

(use-package helm-lsp
  :after (lsp-mode))


(provide 'setup-lsp-mode)

;;; setup-lsp-mode.el ends here
