(use-package org
  :hook
  ((org-mode . auto-fill-mode))
  :config
  (setq-default fill-column 80)
  )

(use-package org-download
  :hook
  ((org-mode . org-download-enable)
   (dired-mode . org-download-enable))
  :init
  (setq-default org-download-method 'directory)
  (setq-default org-download-image-dir "./images")
  (setq-default org-download-heading-lvl 'nil)
  )

(use-package auctex
  :disabled
  :hook
  ((LaTeX-mode . (lambda ()
                   (push
                    '("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
                      :help "Run Latexmk on file")
                    TeX-command-list)))
   (TeX-mode . (lambda () (setq TeX-command-default "latexmk"))))
  :init
  (setq Tex-PDF-mode t)
  (setq TeX-view-program-selection '((output-pdf "PDF Viewer")))
  (setq TeX-view-program-list '(("PDF Viewer" "/Applications/Skim.app/Contents/SharedSupport/displayline -b -g %n %o %b")))
  :config
  (setq TeX-source-correlate-method 'synctex)
  (setq TeX-source-correlate-mode t)
  (setq TeX-source-correlate-start-server t)
  )

(use-package auctex-latexmk
  :disabled
  :commands (auctex-latexmk-setup)
  :hook
  ((LaTeX-mode . #'auctex-latexmk-setup))
  )

(provide 'setup-org-mode)
