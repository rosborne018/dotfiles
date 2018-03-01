(require 'perspective)
(persp-mode 1)
;;(require 'persp-projectile)
(desktop-save-mode 1)

;;(desktop-auto-save-set-timer 60)

(require 'workgroups)
(workgroups-mode 1)
(setq wg-prefix-key (kbd "C-c w"))
(wg-load "/home/ryan/.emacs.d/4-split")


(provide 'config-workspace)
