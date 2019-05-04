(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://stable.melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/confinit.org"))

 ;; workaround for gnutls problem
(advice-add 'gnutls-available-p :around #'ignore)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (org-bullets zerodark-theme zenburn-theme which-key virtualenvwrapper use-package tao-theme poet-theme plantuml-mode moe-theme jedi gist flycheck faff-theme elpy doom-themes doom-modeline counsel company-jedi color-theme-modern cmake-mode base16-theme all-the-icons-ivy all-the-icons-dired alect-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
