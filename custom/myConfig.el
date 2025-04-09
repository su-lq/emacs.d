;;; package --- My Emacs Config
;;; Commentary:
;;; Code:

;; load CEDET development version
;; (load-file "~/.emacs.d/cedet/cedet-devel-load.el")
;; (load-file "~/.emacs.d/cedet/contrib/cedet-contrib-load.el")

(emacs-init-time)
;; (add-to-list 'exec-path "/usr/local/bin")
;; (setenv "PATH" (concat "/usr/local/bin:/Library/TeX/texbin:" (getenv "PATH")))

(setq-default gc-cons-threshold (* 16 1024 1024)
              gc-cons-percentage 0.5)

;; config package
(require 'package)
(package-initialize)

(setq package-enable-at-startup nil)
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; (setq package-archives '(("gnu-tuna" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                          ("melpa-tuna" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(setq package-archives '(("gnu-ustc" . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa-ustc" . "https://mirrors.ustc.edu.cn/elpa/melpa/")))

;; config exec path
(unless (package-installed-p 'exec-path-from-shell)
  (package-refresh-contents)
  (package-install 'exec-path-from-shell))

(require 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; config use-package
;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(setq use-package-always-ensure t)

;; load custom configs
;; (add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-general)
(require 'setup-theme)
(require 'setup-edwina)
(require 'setup-winum)
(require 'setup-powerline)
(require 'setup-delight)
(require 'setup-helm)
(require 'setup-whitespace)

(require 'setup-avy)
(require 'setup-ace-window)

(require 'setup-tramp)

(require 'setup-org-mode)

;; (require 'setup-icons)
;; (require 'setup-neotree)
(require 'setup-treemacs)
(require 'setup-projectile)

(require 'setup-flycheck)
(require 'setup-company)
(require 'setup-yasnippet)
(require 'setup-magit)
(require 'setup-hl-indent)
;; (require 'setup-fci)

;; (require 'setup-semantic)
(require 'setup-lsp-mode)
(require 'setup-eglot)
(require 'setup-ccls)

(require 'setup-cc-mode)
(require 'setup-py-mode)
(require 'setup-go-mode)
(require 'setup-dockerfile)

(require 'setup-grap-dot)

(require 'setup-multiple-cursors)

(provide 'myConfig)

;;; myConfig.el ends here
