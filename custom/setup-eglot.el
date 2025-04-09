;;; package --- eglot setup
;;; Commentary:
;;; Code:

(use-package eglot
  :commands (eglot-ensure)
  ;; :hook (
   ;; (c-mode . eglot-ensure)
   ;; (c++-mode . eglot-ensure)
   ;; (python-mode . eglot-ensure)
   ;; (go-mode . eglot-ensure)
   ;; (rust-mode . eglot-ensure)
   ;; )

  :init
  (setq-default eglot-workspace-configuration
                '((:gopls .
                          ((staticcheck . t)
                           (matcher . "CaseSensitive")))))
  )


(use-package project
  :init
  (defun project-find-go-module (dir)
    (when-let ((root (locate-dominating-file dir "go.mod")))
      (cons 'go-module root)))

  (defun my-projectile-project-find-function (dir)
    (let ((root (projectile-project-root dir)))
      (and root (cons 'transient root))))

  (cl-defmethod project-root ((project (head go-module)))
    (cdr project))

  (add-hook 'project-find-functions #'project-find-go-module)
  (add-hook 'project-find-functions #'my-projectile-project-find-function)
  )

;; (use-package clang-format
;;   :defines (clang-format-fallback-style)
;;   :after (cc-mode)
;;   :config
;;   (setq-default clang-format-fallback-style "none")
;;   (add-hook 'c-mode-common-hook #'(lambda()
;;                                     (add-hook 'before-save-hook
;;                                               'clang-format-buffer t t)))
;;   )

(provide 'setup-eglot)

;;; setup-eglot.el ends here
