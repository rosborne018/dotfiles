(require 'google-this)
(google-this-mode 1)

(require 'elfeed)
(setq elfeed-feeds
      '("http://nullprogram.com/feed/"
        "http://emacstidbits.blogspot.com/atom.xml"
        "http://tromey.com/elpa/elpa.rss"
        "http://emacs-fu.blogspot.com/feeds/posts/default/-/new"
        "http://planet.emacsen.org/atom.xml"))
(global-undo-tree-mode)
(setq undo-tree-auto-save-history 1)

(require 'auto-async-byte-compile)
(setq auto-async-byte-compile-exclude-files-regexp "/junk/")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)

(require 'ace-jump-mode)
;; lets the shell be opened in the current directory
(global-auto-revert-mode)

(require 'ace-popup-menu)
(ace-popup-menu-mode 1)
(setq ace-popup-menu-show-pane-header t)
(global-prettify-symbols-mode 1)
(eval-after-load 'image '(require 'image+))
(eval-after-load 'image+ '(imagex-global-sticky-mode 1))
(eval-after-load 'image+ '(imagex-auto-adjust-mode 1))

(require 'md4rd)
;;(define-key md4rd-map (kbd "u") 'md4rd-upvote)
;;(define-key md4rd-map (kbd "d") 'md4rd-downvote)
;;(define-key md4rd-map (kbd "o") 'md4rd-open)
;;(define-key md4rd-map (kbd "t") 'md4rd-widget-toggle-line)
;;(define-key md4rd-map (kbd "e") 'md4rd-widget-expand-all)
;;(define-key md4rd-map (kbd "c") 'md4rd-widget-collapse-all)
;;(define-key md4rd-map (kbd "j") 'widget-forward)
;;(define-key md4rd-map (kbd "k") 'widget-backward)
(setq md4rd-subs-active 
      '(lisp+Common_Lisp emacs programmingcirclejerk linux+linuxmasterrace+commandline))
(provide 'config-misc)
;; end
