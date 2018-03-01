;;(package-initialize)

(require 'package) 
(setq-default indent-tabs-mode nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
(global-linum-mode)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)


(let* ((emacs-dir '"/home/ryan/.emacs.d/")
       (emacs-load-dirs '("elisp/load-current.el"
                          "elisp/scrot.el"
                          "exwm/config-exwm.el"
                                        ;                          "git/workgroups.el/workgroups.el"
                          ))
       (emacs-full-load-name (mapcar (lambda (x) (concat emacs-dir x)) emacs-load-dirs)))
  (mapc (lambda (x) (load-file x)) emacs-full-load-name)
  )



(require 'use-package)
(defun load-directory (dir)
  (let ((load-it (lambda (f)
		   (load-file (concat (file-name-as-directory dir) f)))
		 ))
    (mapc load-it (directory-files dir nil "\\.elc$"))))
(defun recomp ()
  (byte-recompile-directory "/home/ryan/.emacs.d/config/" 0)
  )
(defun comp-and-load ()
  (recomp)
  (load-directory "/home/ryan/.emacs.d/config/")
  )
(comp-and-load)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0846e3b976425f142137352e87dd6ac1c0a1980bb70f81bfcf4a54177f1ab495" "a866134130e4393c0cad0b4f1a5b0dd580584d9cf921617eee3fd54b6f09ac37" "2a1b4531f353ec68f2afd51b396375ac2547c078d035f51242ba907ad8ca19da" "2af26301bded15f5f9111d3a161b6bfb3f4b93ec34ffa95e42815396da9cb560" "b5ecb5523d1a1e119dfed036e7921b4ba00ef95ac408b51d0cd1ca74870aeb14" default)))
 '(eclim-eclipse-dirs (quote ("/home/ryan/eclipse/java-oxygen/eclipse")))
 '(eclim-executable "/home/ryan/eclipse/java-oxygen/eclipse/eclim")
 '(package-selected-packages
   (quote
    (evil-org erc-youtube erc-image erc-hl-nicks workgroups elfeed mastodon helm-exwm exwm slack use-package speed-type ace-popup-menu bongo helm-emms ace-jump-mode expand-region helm-c-yasnippet yasnippet-snippets company-emacs-eclim shx helm-flycheck irony-eldoc helm-gtags ggtags shell-here auto-async-byte-compile dashboard neotree doom-themes perspective persp-mode vagrant-tramp fzf google-this aggressive-indent flycheck-clang-analyzer javadoc-lookup company-quickhelp evil-magit magit eyebrowse spaceline-all-the-icons spaceline helm-notmuch notmuch meghanada helm-filesets emms mingus helm-company company evil-smartparens helm-projectile projectile evil-escape helm-google helm avy evil-leader evil-surround load-dir ace-window evil)))
 '(symon-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
