(require 'projectile)
(require 'helm-projectile)
(projectile-global-mode)
(helm-projectile-on)
(setq projectile-completion-system 'helm)

(provide 'config-projectile)
