;FILE TYPES
;.ctp files for CakePHP
(add-to-list 'auto-mode-alist '("\\.ctp\\'" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;TAB WIDTH SETTINGS
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq cssm-indent-level 4)
(setq nxml-child-indent 4)

;GENERAL SETTINGS
;Dispalys the time in status bar
(display-time)
;Don't show the startup message
(setq inhibit-startup-messae t)
(setq inhibit-splash-screen t)
;Always add a newlinw
(setq require-final-newline t)
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
;(add-hook 'before-save-hook 'delete-trailing-whitespace)
;(add-hook 'before-save-hook (lambda() (untabify (point-min) (point-max)))) ;Getting rid of this as it's messing up my commits

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

;PLUGINS
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins"))
(progn (cd "~/.emacs.d/plugins")
       (normal-top-level-add-subdirs-to-load-path))

;PYTHON SHIZZLE
;(require 'init_python)

;Flymake, python syntax checking - awesome!!!
;Needs pyflakes
;(load-library "flymakecustom")

;yasnippet
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1b/snippets")

;Auto complete
(require 'auto-complete)
(setq ac-auto-start nil)
(global-unset-key "\C-\\")
(global-set-key  "\C-\\" 'ac-start)
(define-key ac-complete-mode-map "\C-\\" 'ac-stop)

;Git
;(require 'git)

;Haml/Sass mode
(require 'haml-mode)
(require 'sass-mode)
(require 'scss-mode)

;Hippie expand
;(global-set-key "\t" 'hippie-expand)

;ido buffer switcher
(require 'ido)
(ido-mode t)

;paren mode - don't like this
;(require 'paren)
;(show-paren-mode t)

;CUSTOM FACES
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(flymake-errline ((((class color)) (:background "tomato" :foreground "white"))))
 '(flymake-warnline ((((class color)) (:background "LightBlue2" :foreground "white")))))

;PHP NICENESS
(defun clean-php-mode ()
(interactive)
(php-mode)
(setq c-basic-offset 2) ; 2 tabs indenting
(setq indent-tabs-mode nil)
(setq fill-column 78)
(c-set-offset 'case-label '+)
(c-set-offset 'arglist-close 'c-lineup-arglist-operators))
(c-set-offset 'arglist-intro '+) ; for FAPI arrays and DBTNG
(c-set-offset 'arglist-cont-nonempty 'c-lineup-math) ; for DBTNG fields and values

;; run php lint when press f8 key
;; php lint
(defun phplint-thisfile ()
(interactive)
(compile (format "php -l %s" (buffer-file-name))))
(add-hook 'php-mode-hook
'(lambda ()
(local-set-key [f8] 'phplint-thisfile)))
;; end of php lint

;JS mode
(autoload #'espresso-mode "espresso" "Start espresso-mode" t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))

;CSS
(setq css-indent-offset 2)
(setq cssm-indent-function #'cssm-c-style-indenter)

;Color theme
;apt-get install emacs-goodies-el
(require 'color-theme)
(load-file "~/.emacs.d/plugins/blackboard-theme.el")
