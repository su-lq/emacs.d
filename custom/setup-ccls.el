(use-package ccls
  :disabled
  :hook
  ((c-mode c++-mode objc-mode cuda-mode) . (lambda () (require 'ccls) (lsp)))
  (lsp-after-open . ccls-code-lens-mode)
  :init
  ;; (setq ccls-executable "/usr/bin/ccls")
  (setq ccls-executable "/usr/local/bin/ccls")
  ;; (setq ccls-initialization-options '(:index (:comments 2) :completion (:detailedLabel t)))

  :config
  ;; (ccls-navigate "D")
  ;; (ccls-navigate "L")
  ;; (ccls-navigate "R")
  ;; (ccls-navigate "U")

  ;; ;; direct callers
  ;; (lsp-find-custom "$ccls/call")
  ;; ;; callers up to 2 levels
  ;; (lsp-find-custom "$ccls/call" '(:levels 2))
  ;; ;; direct callees
  ;; (lsp-find-custom "$ccls/call" '(:callee t))

  ;; (lsp-find-custom "$ccls/vars")
  ;; ;; Use lsp-goto-implementation or lsp-ui-peek-find-implementation (textDocument/implementation) for derived types/functions
  ;; ;; $ccls/inheritance is more general

  ;; ;; Alternatively, use lsp-ui-peek interface
  ;; (lsp-ui-peek-find-custom "$ccls/call")
  ;; (lsp-ui-peek-find-custom "$ccls/call" '(:callee t))

  ;; (defun ccls/callee ()
  ;;   (interactive)
  ;;   (lsp-ui-peek-find-custom "$ccls/call" '(:callee t)))

  ;; (defun ccls/caller ()
  ;;   (interactive)
  ;;   (lsp-ui-peek-find-custom "$ccls/call"))

  ;; (defun ccls/vars (kind)
  ;;   (lsp-ui-peek-find-custom "$ccls/vars" `(:kind ,kind)))

  ;; (defun ccls/base (levels)
  ;;   (lsp-ui-peek-find-custom "$ccls/inheritance" `(:levels ,levels)))

  ;; (defun ccls/derived (levels)
  ;;   (lsp-ui-peek-find-custom "$ccls/inheritance" `(:levels ,levels :derived t)))

  ;; (defun ccls/member (kind)
  ;;   (interactive)
  ;;   (lsp-ui-peek-find-custom "$ccls/member" `(:kind ,kind)))

  ;; ;; References w/ Role::Address bit (e.g. variables explicitly being taken addresses)
  ;; (defun ccls/references-address ()
  ;;   (interactive)
  ;;   (lsp-ui-peek-find-custom "textDocument/references"
  ;;                            (plist-put (lsp--text-document-position-params) :role 128)))

  ;; ;; References w/ Role::Role
  ;; (defun ccls/references-read ()
  ;;   (interactive)
  ;;   (lsp-ui-peek-find-custom "textDocument/references"
  ;;                            (plist-put (lsp--text-document-position-params) :role 8)))

  ;; ;; References w/ Role::Write
  ;; (defun ccls/references-write ()
  ;;   (interactive)
  ;;   (lsp-ui-peek-find-custom "textDocument/references"
  ;;                            (plist-put (lsp--text-document-position-params) :role 16)))

  ;; ;; References w/ Role::Dynamic bit (macro expansions)
  ;; (defun ccls/references-macro ()
  ;;   (interactive)
  ;;   (lsp-ui-peek-find-custom "textDocument/references"
  ;;                            (plist-put (lsp--text-document-position-params) :role 64)))

  ;; ;; References w/o Role::Call bit (e.g. where functions are taken addresses)
  ;; (defun ccls/references-not-call ()
  ;;   (interactive)
  ;;   (lsp-ui-peek-find-custom "textDocument/references"
  ;;                            (plist-put (lsp--text-document-position-params) :excludeRole 32)))

  ;; ccls/vars ccls/base ccls/derived ccls/members have a parameter while others are interactive.
  ;; (ccls/base 1) direct bases
  ;; (ccls/derived 1) direct derived
  ;; (ccls/member 2) => 2 (Type) => nested classes / types in a namespace
  ;; (ccls/member 3) => 3 (Func) => member functions / functions in a namespace
  ;; (ccls/member 0) => member variables / variables in a namespace
  ;; (ccls/vars 1) => field
  ;; (ccls/vars 2) => local variable
  ;; (ccls/vars 3) => field or local variable. 3 = 1 | 2
  ;; (ccls/vars 4) => parameter

  ;; References whose filenames are under this project
  ;; (lsp-ui-peek-find-references nil (list :folders (vector (projectile-project-root))))

  ;; (setq ccls-sem-highlight-method 'font-lock)
  ;; (setq ccls-sem-highlight-method 'overlay)

  ;; For rainbow semantic highlighting
  ;; (ccls-use-default-rainbow-sem-highlight)

  ;; (ccls-call-hierarchy nil) ; caller hierarchy
  (ccls-call-hierarchy t) ; caller hierarchy

  ;; (ccls-inheritance-hierarchy nil) ; base hierarchy
  (ccls-inheritance-hierarchy t) ; derived hierarchy
  )

(provide 'setup-ccls)
