(require 'shx)
(shx-global-mode)
(savehist-mode 1)
(define-key shell-mode-map (kbd "TAB") #'company-manual-begin)
;;(exec-path-from-shell-initialize)
;;(exec-path-from-shell-copy-env "HISTFILE")
(setq history-length t) ;; unlimited shell history length
(defun turn-on-comint-history (history-file)
  (setq comint-input-ring-file-name history-file)
  (comint-read-input-ring 'silent))
(add-hook 'shell-mode-hook 'my-shell-mode-hook)
(setq explicit-shell-file-name "/bin/bash")
(defun my-shell-mode-hook ()
  (setq comint-input-ring-file-name "~/.zsh_history")  ;; or bash_history
  (comint-read-input-ring t))


(provide 'config-term)
