(require 'w3m)
(setq browse-url-browser-function 'w3m-browse-url)
(w3m-turnoff-inline-images)
(eval-after-load "w3m-mode"
  '(define-key w3m-mode-map (kbd "C-a") nil))


(provide 'config-w3m)
