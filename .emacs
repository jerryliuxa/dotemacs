;; Setting By Jerry Liu
;; Mail:    huhu2k@gmail.com
;; website: https://github.com/jerryliuxa

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

(require 'my-gud-settings)

(require 'my-cscope-settings)

(require 'my-eshell-settings)

(require 'my-ecb-settings)

(require 'my-org-mode-settings)

(require 'my-yasnippet-settings)

(require 'my-java-settings)

(require 'my-tramp-settings)

(require 'my-perl-settings)

(require 'my-autopair-settings)

(require 'my-package-settings)

(require 'flymake-settings)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(ede-project-directories (quote ("c:/Code/libitk")))
 '(session-use-package t nil (session)))

(set-language-environment 'Chinese-GB)                                                                                             
(set-keyboard-coding-system 'euc-cn)                                                                                               
(set-clipboard-coding-system 'euc-cn)                                                                                              
(set-terminal-coding-system 'euc-cn)                                                                                               
(set-buffer-file-coding-system 'euc-cn)                                                                                            
(set-selection-coding-system 'euc-cn)                                                                                              
(modify-coding-system-alist 'process "*" 'euc-cn)                                                                                  
(setq default-process-coding-system                                                                                                
             '(euc-cn . euc-cn))                                                                                                    
(setq-default pathname-coding-system 'euc-cn) 
(setq ansi-color-for-comint-mode t)


(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

(setq stack-trace-on-error t)

(put 'upcase-region 'disabled nil)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
