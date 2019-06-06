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
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(eshell-visual-commands
   (quote
    ("vi" "screen" "top" "less" "more" "lynx" "ncftp" "pine" "tin" "trn" "elm" "ccmake" "docker")))
 '(org-agenda-files
   (quote
    ("~/nextcloud/Work/Infrastructure_Siemens-PACS/Siemens-PACS.org" "/home/aure/nextcloud/organizer.org" "/home/aure/nextcloud/elfeed.org" "/home/aure/nextcloud/bibliography/notes.org" "/home/aure/nextcloud/Work/AIRMed/AIRMed.org" "/home/aure/nextcloud/Work/AIRMed/IKTPluss/IKTPluss.org" "/home/aure/nextcloud/Work/HiPerNav/HiPerNav.org" "/home/aure/nextcloud/Work/Systole/Systole.org" "/home/aure/nextcloud/Work/NorMIT/NorMIT.org" "/home/aure/nextcloud/Work/Infrastructure_Nihon-Kohden/Infrastructure_Nihon-Kohden.org" "/home/aure/nextcloud/Work/Infrastructure_Nihon-Kohden/Solution_NihonKohden_Personvern/graphics.org" "/home/aure/nextcloud/Work/Infrastructure_Machine-Learning/meetings/20190531_ai_meeting.org" "/home/aure/nextcloud/Work/Infrastructure_Machine-Learning/Infrastructure-ML.org" "/home/aure/nextcloud/Work/Infrastructure_Machine-Learning/server_instructions/instructions.org" "/home/aure/nextcloud/Work/Holocare/HoloCare.org" "/home/aure/nextcloud/Work/Holocare/meetings/20190516_dataskykkerhet.org" "/home/aure/nextcloud/Work/DeepLearning/fundamentals_deep_learning/notes.org" "/home/aure/nextcloud/Infrastructure/infrastructure.org")))
 '(org-return-follows-link t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 100 :width normal)))))
