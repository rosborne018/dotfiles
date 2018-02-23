
(require 'bongo)
(add-hook 'bongo-mode-hook
	  (lambda () (local-unset-key (kbd "<SPC>")))
	  (lambda () (local-unset-key (kbd "p")))
	  (lambda () (local-set-key (kbd "p") #'bongo-pause/resume)))
(provide 'config-music)
;;; music.el ends here
