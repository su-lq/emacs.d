;; (use-package semantic
;;   :config
;;   (global-semanticdb-minor-mode 1)
;;   (global-semantic-idle-scheduler-mode 1)
;;   (semantic-mode 1)

;;   (semantic-add-system-include "/usr/include")
;;   (semantic-add-system-include "/usr/local/include")
;;   (semantic-add-system-include "/usr/include/boost" 'c++-mode))

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)


(semantic-mode 1)

(require 'semantic/ia)
(require 'semantic/bovine/c)
(require 'semantic/bovine/clang)

(semantic-add-system-include "/usr/include")
(semantic-add-system-include "/usr/local/include")
(semantic-add-system-include "/usr/include/boost" 'c++-mode)

(setq semantic-symref-tool 'global)

(provide 'setup-semantic)
