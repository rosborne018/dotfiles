(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(defun neotree-keymapings ()
  (define-key neotree-mode-map (kbd "I") 'neotree-hidden-file-toggle))
(add-hook 'neotree-mode-hook 'neotree-keymapings)

(provide 'config-neotree)
