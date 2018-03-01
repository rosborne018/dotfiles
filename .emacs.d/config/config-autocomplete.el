;; general company mode
(require 'company)
(require 'helm-company)
(require 'company-quickhelp)

(setq company-idle-delay 0.2)
(setq company-minimum-prefix-length 2)

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

(require 'eclim)
(require 'company-emacs-eclim)
(require 'eclimd)
(custom-set-variables
 '( eclim-eclipse-dirs '("/home/ryan/eclipse/java-oxygen/eclipse"))
 '( eclim-executable "/home/ryan/eclipse/java-oxygen/eclipse/eclim"))
(company-emacs-eclim-setup)
(global-company-mode t)
(setq eclim-autostart t)
(add-hook 'java-mode-hook 'eclim-mode)


;; quickhelp
(company-quickhelp-mode)
(eval-after-load 'company
  '(define-key company-active-map (kbd "C-c h") #'company-quickhelp-manual-begin))

;; yasnippet
(require 'yasnippet)
(setq helm-yas-space-match-any-greedy t)
(global-set-key (kbd "C-c y") 'helm-yas-complete)
;;(global-company-yasnippet)
(defvar company-mode/enable-yas t
  "Enable yasnippet for all backends.")
(defun company-mode/backend-with-yas (backend)
  (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
      backend
    (append (if (consp backend) backend (list backend))
            '(:with company-yasnippet))))

(setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))

;; helm-company choose from company completions with C-:
(with-eval-after-load 'company
  (define-key company-mode-map (kbd "C-:") 'helm-company)
  (define-key company-active-map (kbd "C-:") 'helm-company))
(yas-global-mode)
;; java specific
;;(require 'jdee)
;;(setq jdee-server-dir "/home/ryan/git/jdee-server/target")

(require 'eldoc)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
(provide 'config-autocomplete)
