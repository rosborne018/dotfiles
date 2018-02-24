;; general company mode
(global-company-mode)
(require 'helm-company)
(require 'company-quickhelp)

;; flycheck
(require 'flycheck)
(global-flycheck-mode 1)

;; flycheck c mode
(with-eval-after-load 'flycheck
  (require 'flycheck-clang-analyzer)
  (flycheck-clang-analyzer-setup))
(require 'helm-flycheck) ;; Not necessary if using ELPA package
(eval-after-load 'flycheck
  '(define-key flycheck-mode-map (kbd "C-c ! h") 'helm-flycheck))

;; javadoc
(require 'javadoc-lookup)
(javadoc-add-roots "/usr/share/doc/openjdk-8-jdk/api"
                   "/home/ryan/bbmuser")
(global-set-key (kbd "C-h j") 'javadoc-lookup)

(require 'jdee)
(setq jdee-server-dir "/home/ryan/git/jdee-server")



;; quickhelp
(company-quickhelp-mode)
(eval-after-load 'company
  '(define-key company-active-map (kbd "C-c h") #'company-quickhelp-manual-begin))

;; java specific
;;(require 'jdee)
;;(setq jdee-server-dir "/home/ryan/git/jdee-server/target")

(require 'eldoc)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
(provide 'config-autocomplete)
