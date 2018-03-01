(require 'projectile)
(require 'helm-projectile)
(projectile-global-mode)
(helm-projectile-on)
(setq projectile-globally-ignored-file-suffixes
      '("class" "tar.gz" "jar"))
(add-hook 'projectile-mode-hook (lambda () (global-set-key (kbd "C-x C-f") 'projectile-find-file)))
(setq projectile-completion-system 'helm)

(provide 'config-projectile)
