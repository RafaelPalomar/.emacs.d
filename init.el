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
    ("vi" "screen" "top" "less" "more" "lynx" "ncftp" "pine" "tin" "trn" "elm" "ccmake" "docker" "htop" "dispatch-conf")))
 '(hexl-bits 32)
 '(org-agenda-files
   (quote
    ("~/Nextcloud/Work/ALive/ALive.org" "/home/aure/Nextcloud/organizer.org" "/home/aure/Nextcloud/elfeed.org" "/home/aure/Nextcloud/org-linkz/Readme.org" "/home/aure/Nextcloud/org-linkz/Linkz.org" "/home/aure/Nextcloud/bibliography/notes.org" "/home/aure/Nextcloud/Work/Systole/Systole.org" "/home/aure/Nextcloud/Work/Research/Resectograms/Resectograms.org" "/home/aure/Nextcloud/Work/Research/Resectograms/Proposals/MSc/proposal.org" "/home/aure/Nextcloud/Work/Research/ResectionPlanning/Proposals/MSc/proposal.org" "/home/aure/Nextcloud/Work/Research/DistanceMaps/presentations/201906128_work_plan/DistanceMaps.org" "/home/aure/Nextcloud/Work/Research/DistanceMaps/meetings/20180628_planning_work/meeting.org" "/home/aure/Nextcloud/Work/NorMIT/NorMIT.org" "/home/aure/Nextcloud/Work/Misc_notes/tesis_Fernando/notas.org" "/home/aure/Nextcloud/Work/Misc_notes/SMIT2019/SMIT2019.org" "/home/aure/Nextcloud/Work/Misc_Meetings/Software_Strategy/presentations/20191212_Software_Strategy_Seminar/proposal.org" "/home/aure/Nextcloud/Work/Misc_Meetings/Infrastructure/infrastructure.org" "/home/aure/Nextcloud/Work/LungProject/meetings/20190628_info_meeting/meeting.org" "/home/aure/Nextcloud/Work/Infrastructure_Siemens-PACS/test_plan/test_plan.org" "/home/aure/Nextcloud/Work/Infrastructure_Siemens-PACS/Siemens-PACS.org" "/home/aure/Nextcloud/Work/Infrastructure_Nihon-Kohden/Infrastructure_Nihon-Kohden.org" "/home/aure/Nextcloud/Work/Infrastructure_Nihon-Kohden/Solution_NihonKohden_Personvern/graphics.org" "/home/aure/Nextcloud/Work/Infrastructure_Nihon-Kohden/Presentations/20190614_approved_solution/presentation.org" "/home/aure/Nextcloud/Work/Infrastructure_Nihon-Kohden/Meetings/20190614_approved_solution/minutes.org" "/home/aure/Nextcloud/Work/Infrastructure_Nihon-Kohden/Documentation/WindowsSystem.org" "/home/aure/Nextcloud/Work/Infrastructure_Nihon-Kohden/Documentation/Notes.org" "/home/aure/Nextcloud/Work/Infrastructure_Machine-Learning/Infrastructure-ML.org" "/home/aure/Nextcloud/Work/Infrastructure_Machine-Learning/server_instructions/instructions.org" "/home/aure/Nextcloud/Work/Infrastructure_Machine-Learning/meetings/20190531_ai_meeting.org" "/home/aure/Nextcloud/Work/Holocare/HoloCare.org" "/home/aure/Nextcloud/Work/Holocare/meetings/20190516_dataskykkerhet.org" "/home/aure/Nextcloud/Work/HiPerNav/HiPerNav.org" "/home/aure/Nextcloud/Work/HiPerNav/PaperReview_Effect_Intraoperative_Imaging/review.org" "/home/aure/Nextcloud/Work/DeepLearning/fundamentals_deep_learning/notes.org" "/home/aure/Nextcloud/Work/Curcuma/Curcuma.org" "/home/aure/Nextcloud/Work/3DSlicer/3DSlicer.org" "/home/aure/Nextcloud/Infrastructure/infrastructure.org")))
 '(org-default-priority 67)
 '(org-latex-pdf-process (quote ("latexmk -shell-escape -bibtex -xelatex -f %f")))
 '(org-mind-map-display (quote window))
 '(org-mind-map-engine "twopi")
 '(org-return-follows-link t)
 '(package-selected-packages
   (quote
    (ripgrep shell-here avy pass magit ox-reveal org-re-reveal json-mode ob-http mastodon org-mind-map cider clojure-mode flycheck-ledger ledger-mode yasnippet yaml-mode which-key use-package systemd sudo-edit spacemacs-theme rainbow-delimiters plantuml-mode org-ref org-pdfview org-bullets jedi hungry-delete gist flycheck expand-region elfeed-org elfeed-goodies dockerfile-mode counsel cmake-mode beacon all-the-icons-ivy)))
 '(python-shell-interpreter "python3")
 '(safe-local-variable-values
   (quote
    ((eval add-hook
	   (quote after-save-hook)
	   (lambda nil
	     (org-html-export-to-html t))
	   t t))))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 100 :width normal)))))
(put 'dired-find-alternate-file 'disabled nil)
