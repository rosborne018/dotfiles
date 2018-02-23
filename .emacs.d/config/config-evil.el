;; should be before 'evil
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
  "r" 'comp-and-load-interactive
  "f" 'helm-find-files
  "q" 'delete-window
  "b" 'helm-buffers-list
  "k" 'kill-buffer
  "s" 'save-buffer
  "z" 'shell
  "g" 'google-this-search
  "m" 'bongo
  "v" 'fzf
  "u" 'undo-tree-visualize
  "d" 'helm-M-x)

;; automatically complete parens
(require 'evil-smartparens)
(require 'smartparens-config)
(show-smartparens-global-mode)
(smartparens-global-mode)


;; jk escape sequences
(require 'evil-escape)
(evil-escape-mode)
(setq-default evil-escape-key-sequence "jk")


;; a little bit of evil never hurt anyone
(require 'evil)
(evil-mode 1)
(evil-set-initial-state 'term-mode 'emacs)
(evil-set-initial-state 'bongo-library-mode 'emacs) ;; bongo
(evil-set-initial-state 'bongo-playlist-mode 'emacs) ;; bongo

;; surround command

(require 'evil-surround)
(global-evil-surround-mode 1)

(provide 'config-evil)
