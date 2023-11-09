(require 'org)

(setq org-clock-sound "~/Music/bell.wav")

(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/Arisbe")))

(org-roam-db-sync)

(global-set-key (kbd "C-c n f") 'org-roam-node-find)
(global-set-key (kbd "C-c n i") 'org-roam-node-insert)

(add-hook 'org-mode-hook 'turn-on-visual-line-mode)
(org-roam-db-sync)

(use-package org-bullets
  :ensure t)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-agenda-files '("~/Agenda/agenda.org"))
