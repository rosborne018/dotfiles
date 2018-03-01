;; should be before 'evil
(require 'evil-leader)
(global-evil-leader-mode)

(setq grep-command "grep --color -i -l -r")
(evil-leader/set-leader "<SPC>")
(defun eww-selected ()
  (interactive)
  (eww-browse-url (buffer-substring-no-properties (mark) (point))))

(evil-leader/set-key
  "a"     'ace-window
  "b"     'load-current-file
  "c"     'capture-window
  "d"     'helm-M-x
  "e"     'er/expand-region
  "f"     'helm-find-files
  "g"     'google-this-search
  "h"     'grep
  "j"     'ace-jump-word-mode
  "k"     'kill-buffer
  "l"     'helm-buffers-list
  "m"     'magit
  "o"     'eww-selected
  "p"     'persp-switch
  "q"     'delete-window
  "r"     'comp-and-load-interactive
  "s"     'save-buffer
  "u"     'undo-tree-visualize
  "v"     'vagrant-tramp
  "z"     'fzf
  ";"     'shell-here
  "<DEL>" 'previous-buffer
  )
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
