
;;自定义的代码风格
(defconst my-c-style
  '("stroustrup" ;;基于现有的代码风格进行修改。
    (c-offsets-alist . (;(access-label . -)
			(inclass . ++)
			(inline-open . 0)
			;(case-label . +)
			(statement-case-intro . +))))
  "My Programming Style")
;; 将自定义的代码风格加入到列表中
(c-add-style "my" my-c-style)

;; microsoft style
(c-add-style "microsoft"
	     '("stroustrup"
	       (c-offsets-alist
		(innamespace . -)
		(inline-open . 0)
		(inher-cont . c-lineup-multi-inher)
		(arglist-cont-nonempty . +)
		(template-args-cont . +))))
;(setq c-default-style "microsoft")

;定制C/C++缩进风格
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-style "k&r")
	     (setq c-basic-offset 4)
	     (setq tab-width 4)
	     (setq-default indent-tabs-mode nil)
             ;(setq indent-tabs-mode nil)
	     ))
(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-style "microsoft")
	;	     (set (make-local-variable 'ac-auto-start) nil) ;; shut down ac-auto-start in c++-mode
	     ))



(setq tab-width 4)
;; 设置缩进字符数
(setq c-basic-offset 4)
;(setq-default indent-tabs-mode nil)

(require 'hl-line)
(global-hl-line-mode t)

(load-library "hideshow") 
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
;;能把一个代码块缩起来，需要的时候再展开
;;  M-x              hs-minor-mode
;;  C-c @ ESC C-s    show all
;;  C-c @ ESC C-h    hide all
;;  C-c @ C-s        show block
;;  C-c @ C-h        hide block
;;  C-c @ C-c toggle hide/show

;;(require 'template)
;;(template-initialize)
;;(setq template-home-directory '"~/.emacs.d/emacs-lisp/templates")
;; load template
(require 'template)
;;here set the templates directory
(setq template-subdirectories '("./" "Templates/" "~/.emacs.d/templates/"))
(template-initialize)
(setq template-auto-insert t)

(provide 'my-coding-style)
