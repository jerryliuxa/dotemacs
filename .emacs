;; Setting By Hua Liang [ [ Stupid ET ] Cedric Porter ]
;; Mail:    et@everet.org
;; website: http://EverET.org

;;Personal information
(setq user-full-name "Jerry Liu")
(setq user-mail-address "jerry.p.liu@ericsson.com") 

;; Add plugins to load-path.
;; We will put some tiny plugins in it
(add-to-list 'load-path "~/.emacs.d/plugins/") 
(add-to-list 'load-path "~/.emacs.d/plugins/configs") 

;; Environment
(push "~/.emacs.d/plugins/bin" exec-path)

(require 'my-functions)

(require 'my-misc-settings)

(require 'my-coding-style)

(require 'my-small-tools)

(require 'window-setting)

(require 'my-autocomplete-settings)

;;(require 'my-python-settings)

(require 'my-ruby-mode-settings)

;(require 'my-lisp-settings)

(require 'my-emacs-lisp-settings)

(require 'my-octopress-settings)

(require 'my-cedet-settings)
;(load-file "~/.emacs.d/plugins/cedet-bzr/cedet-devel-load.el")

(require 'my-gud-settings)

(require 'my-cscope-settings)

(require 'my-eshell-settings)

(require 'my-ecb-settings)

(require 'my-org-mode-settings)

(require 'my-yasnippet-settings)

(require 'my-java-settings)

(require 'my-tramp-settings)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(session-use-package t nil (session)))

(set-language-environment 'Chinese-GB)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(setq ansi-color-for-comint-mode t)

(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

(put 'upcase-region 'disabled nil)
