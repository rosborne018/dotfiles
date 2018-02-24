(require 'google-this)
(google-this-mode 1)

(global-undo-tree-mode)
(setq undo-tree-auto-save-history 1)

(require 'auto-async-byte-compile)
(setq auto-async-byte-compile-exclude-files-regexp "/junk/")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)

;; lets the shell be opened in the current directory
(global-auto-revert-mode)
(provide 'config-misc)
;; end
