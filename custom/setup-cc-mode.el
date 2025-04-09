(require 'cc-mode)

(defun my-make-CR-do-indent()
  (define-key c-mode-base-map "\C-m" 'c-context-line-break))

(add-hook 'c-initialization-hook #'my-make-CR-do-indent)

(setq c-offsets-alist '((member-init-intro . ++)))

(defconst my-c-style
  '((c-tab-always-indent . t)
    (c-comment-only-line-offset . 4)

    (c-hanging-braces-alist . ((substatement-open after)
                               (brace-list-open)
                               (brace-list-close)))

    (c-hanging-colons-alist . ((member-init-intro before)
                               (inher-intro)
                               (case-label after)
                               (label after)
                               (access-label after)))

    (c-cleanup-list . (scope-operator
                       empty-defun-braces
                       defun-close-semi))

    (c-offsets-alist . ((arglist-close . c-lineup-arglist)
                        (innamespace . 0)
                        (substatement-open . 0)
                        (case-label . 0)
                        (block-open . 0)
                        (inline-open . 0)
                        (knr-argdecl-intro . -)))

    (c-echo-syntactic-information-p . t))
  "My C Programming Style")

(c-add-style "Personal" my-c-style)

(defun my-c-mode-common-hook()
  (c-set-style "personal")
  (setq c-basic-offset 4
        tab-width 4)
  (setq-default c-electric-flag nil
                c-tab-always-indent 'complete)
  (c-toggle-auto-newline 1)
  (which-function-mode 1)
  (hs-minor-mode 1)
  (display-line-numbers-mode 1))

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(provide 'setup-cc-mode)
