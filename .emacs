;FILE TYPES#
;.ctp files for CakePHP
(add-to-list 'auto-mode-alist '("\\.ctp\\'" . php-mode))

;TAB WIDTH SETTINGS
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;GENERAL SETTINGS
;Dispalys the time in status bar
(display-time)
;Don't show the startup message
(setq inhibit-startup-messae t)
(setq inhibit-splash-screen t)
;Always add a newlinw
(setq require-final-newline t)
(setq c-auto-newline t)
;Show line and column nos
(line-number-mode t)
(column-number-mode t)
;Smoother scrolling
(setq scroll-step 1)
;Do syntax highlighting
(global-font-lock-mode 1)
(setq font-lock-maximum-decoration t)
;Don't do Ctrl-Z
(global-set-key "\C-z" nil)
;Change yes/no to y/n
(fset 'yes-or-no-p 'y-or-n-p)
;Always save eshell history
(setq eshell-save-history-on-exit t)
;Don't add new line on arrow down
(setq next-line-add-newlines nil)
;Enable upper and lower casing
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'capitalize-word 'disabled nil)
(put 'upcase-word 'disabled nil)
(put 'downcase-word 'disabled nil)
;Support mac
(setq mac-command-modifier 'meta)
(setq mac-control-modifier 'meta)
;Remove trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;Selection settings
(setq search-highlight t) ;Highlight during search
(setq query-replace-highlight t) ;Highlight during replace
(setq mouse-sel-retain-highlight t)
(setq transient-mark-mode t) ;Highlight region

;CUSTOM KEY BINDINGS
;Home and end
(global-set-key [home] 'beginning-of-line)
(global-set-key [kp-home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)
(global-set-key [kp-end] 'end-of-line)
(global-set-key [select] 'end-of-line)
(global-set-key "\C-x#" 'comment-region)
(global-set-key "\M-#" 'uncomment-region)
(global-set-key "\C-r" 'replace-string)
(global-set-key "\C-e" 'replace-regexp)
(global-set-key "\C-a" 'isearch-forward-regexp)
(global-set-key "\C-x\C-b" 'electric-buffer-list)
;Make the recenter put things at a nicer eye level
(defun my-recenter ()
  (interactive)
  (recenter 15))
(global-set-key "\C-l" 'my-recenter)
;I don't like emacs's scrolling. This makes it fit with my view
; of scrolling a lot more - moving the cursor by 20 lines
(defun scroll-a-lot-down ()
  (interactive)
  (next-line 20))
(defun scroll-a-lot-up ()
  (interactive)
  (previous-line 20))
(global-set-key [prior] 'scroll-a-lot-up)
(global-set-key [next] 'scroll-a-lot-down)
;Undo
(global-set-key [subtract] 'undo)
;Insert key
(global-set-key [insert]    'overwrite-mode)
(global-set-key [kp-insert] 'overwrite-mode)
;Goto Line - M-G G
;(global-set-key "\C-l" 'goto-line)
;Word navigation
(global-set-key [M-left] 'backward-word)
(global-set-key [M-right] 'forward-word)
(global-set-key "\M-[1;5C" 'forward-word)
(global-set-key "\M-[1;5D" 'backward-word)

;PYTHON STUFF
(defun python-interpreter ()
  (interactive)
  (split-window-horizontally)
  (run-python)
  (other-window 1)
  (python-send-buffer)
  )
(add-hook 'python-mode-hook
 '(lambda () (global-set-key "\C-xh" 'python-describe-symbol)
             (global-set-key "\C-xi" 'run-python)
             (global-set-key "\C-xi" 'python-interpreter)
    ))

;PLUGINS
;yasnippet - this rocks :)
(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet-0.6.1b")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1b/snippets")

;ido buffer switcher - Not sure if i like this??
(require 'ido)
(ido-mode t)

;paren mode - don't like this
;(require 'paren)
;(show-paren-mode t)


;Open a shell on load
(split-window-horizontally)   ;; want two windows at startup
(other-window 1)              ;; move to other window
(eshell)                       ;; start a shell
(rename-buffer "*emacs-shell*") ;; rename it
(other-window 1)              ;; move back to first window
