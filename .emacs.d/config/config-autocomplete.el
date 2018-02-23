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

;; javadoc
(require 'javadoc-lookup)
(javadoc-add-roots "/usr/share/doc/openjdk-8-jdk/api"
                   "/home/ryan/bbmuser")
(global-set-key (kbd "C-h j") 'javadoc-lookup)



;; quickhelp
(company-quickhelp-mode)
(eval-after-load 'company
  '(define-key company-active-map (kbd "C-c h") #'company-quickhelp-manual-begin))

;; java specific
;;(require 'jdee)
;;(setq jdee-server-dir "/home/ryan/git/jdee-server/target")

(provide 'config-autocomplete)
