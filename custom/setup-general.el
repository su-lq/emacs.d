;; (toggle-frame-fullscreen) ;; full screen
;; (server-start) ;; start emacs server

;; disable mode
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0) ;; prevent the cursor from blinking
;; (line-number-mode 0)
;; (tooltip-mode 0)

;; enable mode
(size-indication-mode 1) ;; display position on mode line
(column-number-mode 1) ;; display column num on mode line
(display-time-mode 1) ;; display time on mode line
(global-hl-line-mode 1) ;; highlight line which pointer in
(show-paren-mode 1)
;; (global-display-line-numbers-mode 1)
(global-auto-revert-mode t)

(setq-default indent-tabs-mode nil)
(setq inhibit-startup-screen t) ;; don't dispaly startup screen
(setq inhibit-startup-echo-area-message t) ;; Echo area custom
(setq inhibit-compacting-font-caches t)

(setq initial-scratch-message "") ;; use empty scratch buffer
(setq initial-major-mode 'org-mode)
(setq default-frame-alist '((height . 50) (width . 160))) ;; set default frame size
(setq ring-bell-function 'ignore) ;; turn off the bell
(setq make-backup-files nil) ;; don't make backup files
(setq auto-save-default nil)
(setq read-file-name-completion-ignore-case t) ;; case-insensitive when read file name
(setq read-buffer-completion-ignore-case t) ;; case-insensitive when read buffer name
(setq completion-cycle-threshold nil) ;; completion command completes in cyclie manner
(setq history-delete-duplicates t) ;; delete duplicates elements in minibuff history list
(setq select-enable-clipboard t) ;; share clipborad
(setq line-move-visual nil) ;; move point up & down on logical lines
(setq track-eol nil) ;; move point up & down at the end of logical line when starting at the end of the logical line
(setq fill-column 80) ;; set the fill colnum
(setq-default show-paren-delay 0)
(setq x-underline-at-descent-line t)

;; (setq url-gateway-method 'socks)
;; (setq socks-server'("Default server" "127.0.0.1" 1080 5))

(add-to-list 'default-frame-alist '(font . "Maple Mono NF CN 14"))
;; (add-to-list 'default-frame-alist '(font . "Hack 14"))
;; (dolist (charset '(han chinese-gbk cjk-misc kana bopomofo symbol))
;;   (set-fontset-font "fontset-default"
;;                     charset
;;                     (font-spec :family "Droid Sans")))
;; (setq face-font-rescale-alist '(("Droid Sans" . 1.2)))

(setq frame-title-format
    '(""
      "%b"
      (:eval
       (let ((project-name (projectile-project-name)))
         (unless (string= "-" project-name)
           (format " in [%s]" project-name))))))

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; make new frame no scrollbar
(defun my/disable-scroll-bars (frame)
  (modify-frame-parameters frame
                           '((vertical-scroll-bars . nil)
                             (horizontal-scroll-bars . nil))))
(add-hook 'after-make-frame-functions 'my/disable-scroll-bars)

;; key bindings
;; (when (eq system-type 'darwin) ;; mac specific settings
;;   (setq mac-option-modifier 'alt)
;;   (setq mac-command-modifier 'meta)
;;   (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
;;   )

(add-to-list 'image-types 'svg)

(provide 'setup-general)
