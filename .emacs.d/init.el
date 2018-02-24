;;(package-initialize)
(require 'package) 
(setq-default indent-tabs-mode nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
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
(defun comp-and-load-interactive()
  (interactive)
  (load-file "/home/ryan/.emacs.d/init.el")
  )
(comp-and-load)
(require 'use-package)
(defun copy-path ()
  (interactive)
  (when buffer-file-name
    (kill-new (file-truename buffer-file-name))))
(global-set-key (kbd "<f7>") 'copy-path)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0846e3b976425f142137352e87dd6ac1c0a1980bb70f81bfcf4a54177f1ab495" "a866134130e4393c0cad0b4f1a5b0dd580584d9cf921617eee3fd54b6f09ac37" "2a1b4531f353ec68f2afd51b396375ac2547c078d035f51242ba907ad8ca19da" "2af26301bded15f5f9111d3a161b6bfb3f4b93ec34ffa95e42815396da9cb560" "b5ecb5523d1a1e119dfed036e7921b4ba00ef95ac408b51d0cd1ca74870aeb14" default)))
 '(package-selected-packages
   (quote
    (helm-flycheck irony-eldoc helm-gtags fish-completion ggtags shell-here auto-async-byte-compile dashboard neotree doom-themes perspective persp-mode vagrant-tramp fzf google-this aggressive-indent flycheck-clang-analyzer javadoc-lookup company-quickhelp evil-magit magit eyebrowse spaceline-all-the-icons spaceline helm-notmuch notmuch bongo meghanada helm-filesets emms mingus multi-term helm-company company evil-smartparens helm-projectile projectile w3m evil-escape helm-google helm avy evil-leader evil-surround load-dir ace-window evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
