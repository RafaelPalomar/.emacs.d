(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
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
 '(all-the-icons-ivy-buffer-commands (quote (ivy-switch-buffer-other-window ivy-switch-buffer)))
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#003f8e" "#ff9da4" "#d1f1a9" "#ffeead" "#bbdaff" "#ebbbff" "#99ffff" "#ffffff"))
 '(beacon-color "#ff9da4")
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(fci-rule-color "#003f8e")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(org-agenda-files
   (quote
    ("/home/aure/nextcloud/elfeed.org" "/home/aure/nextcloud/organizer.org" "/home/aure/nextcloud/bibliography/notes.org" "/home/aure/nextcloud/Work/AIRMed/IKTPluss/IKTPluss.org" "/home/aure/nextcloud/Work/AIRMed/AIRMed.org" "/home/aure/nextcloud/Work/HiPerNav/HiPerNav.org" "/home/aure/nextcloud/Work/Systole/Systole.org" "/home/aure/nextcloud/Work/NorMIT/NorMIT.org" "/home/aure/nextcloud/Work/Infrastructure_Nihon-Kohden/Infrastructure_Nihon-Kohden.org" "/home/aure/nextcloud/Work/Infrastructure_Nihon-Kohden/Solution_NihonKohden_Personvern/graphics.org" "/home/aure/nextcloud/Work/Infrastructure_Machine-Learning/server_instructions/instructions.org" "/home/aure/nextcloud/Work/Infrastructure_Machine-Learning/Infrastructure-ML.org" "/home/aure/nextcloud/Work/Holocare/HoloCare.org" "/home/aure/nextcloud/Work/DeepLearning/fundamentals_deep_learning/notes.org" "/home/aure/nextcloud/Infrastructure/infrastructure.org")))
 '(org-default-priority 67)
 '(org-return-follows-link t)
 '(package-selected-packages
   (quote
    (magithub spacemacs-theme sudo-edit org-beautify-theme powerline org-bullets zerodark-theme zenburn-theme which-key virtualenvwrapper use-package tao-theme poet-theme plantuml-mode moe-theme jedi gist flycheck faff-theme elpy doom-themes doom-modeline counsel company-jedi color-theme-modern cmake-mode base16-theme all-the-icons-ivy all-the-icons-dired alect-themes)))
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#ff9da4")
     (40 . "#ffc58f")
     (60 . "#ffeead")
     (80 . "#d1f1a9")
     (100 . "#99ffff")
     (120 . "#bbdaff")
     (140 . "#ebbbff")
     (160 . "#ff9da4")
     (180 . "#ffc58f")
     (200 . "#ffeead")
     (220 . "#d1f1a9")
     (240 . "#99ffff")
     (260 . "#bbdaff")
     (280 . "#ebbbff")
     (300 . "#ff9da4")
     (320 . "#ffc58f")
     (340 . "#ffeead")
     (360 . "#d1f1a9"))))
 '(vc-annotate-very-old-color nil)
 '(window-divider-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 100 :width normal)))))
(put 'dired-find-alternate-file 'disabled nil)
