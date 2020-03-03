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
 '(default ((t (:family "Inconsolata" :foundry "PfEd" :slant normal :weight normal :height 120 :width normal)))))
(put 'dired-find-alternate-file 'disabled nil)
