;; Set the debug option to enable a backtrace when a  
;; problem occurs.  
;; 当有错误出现显示错误信息,便于调试  
(setq debug-on-error t)  
;; Update the Emacs load-path to include the path to  
;; the JDE and its require packages. This code assumes  
;; that you have installed the packages in the emacs/site  
;; subdirectory of your home directory.  
;; 加载所需的package  
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/jdee-2.4.1/lisp"))  
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/cedet-1.1/semantic"))  
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/cedet-1.1/speedbar"))  
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/cedet-1.1/eieio"))  
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/elib-1.0"))  
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/cedet-1.1/common"))  
;; If you want Emacs to defer loading the JDE until you open a  
;; Java file, edit the following line  
;; 不自动加载jde-mode  
(setq defer-loading-jde t)  
;; to read:  
;;  (setq defer-loading-jde t)  
;; 编辑.java文件时加载jde  
(if defer-loading-jde
        (progn
          (autoload 'jde-mode "jde" "JDE mode." t)
          (setq auto-mode-alist
                (append
                 '(("\\.java\\'" . jde-mode))
                 auto-mode-alist)))
      
;; 设置局部快捷键
  (define-key jde-mode-map (kbd "C-c C-v g m") 'jde-gen-main-method)
  (define-key jde-mode-map (kbd "C-c C-v g p") 'jde-gen-println)
  (define-key jde-mode-map (kbd "C-c C-v g C") 'jde-gen-class)
  (define-key jde-mode-map (kbd "C-c C-v g c") 'jde-gen-inner-class)
  (define-key jde-mode-map (kbd "C-c C-v g a l") 'jde-gen-action-listener)
  (define-key jde-mode-map (kbd "C-c C-v g m l") 'jde-gen-mouse-listener)
  (define-key jde-mode-map (kbd "C-c C-v g w l") 'jde-gen-window-listener)

  (require 'jde))

;;(require 'javadoc-help)
;;(javadoc-set-predefined-urls '("/opt/java_docs/common-cache-1.0.0-javadoc"
;;                               "/opt/java_docs/commons-codec-1.4-javadoc"
;;                               "/opt/java_docs/commons-logging-1.1.1-javadoc"
;;                               "/opt/java_docs/ehcache-server-1.0.0-javadoc"
;;                               "/opt/java_docs/gson-1.7.1-javadoc"
;;                               "/opt/java_docs/jcommander-1.12-javadoc"
;;                               "/opt/java_docs/jersey-apache-client-1.9.1-javadoc"
;;                               "/opt/java_docs/jersey-client-1.9.1-javadoc"
;;                               "/opt/java_docs/jersey-core-1.9.1-javadoc"
;;                               "/opt/java_docs/joda-time-1.6.2-javadoc"
;;                               "/opt/java_docs/junit-4.8.2-javadoc"
;;                               "/opt/java_docs/logback-classic-1.0.0-javadoc"
;;                               "/opt/java_docs/logback-core-1.0.0-javadoc"
;;                               "/opt/java_docs/lombok-0.10.4-javadoc"
;;                               "/opt/java_docs/mongo-java-driver-2.7.2-javadoc"
;;                               "/opt/java_docs/mybatis-3.0.5-javadoc"
;;                               "/opt/java_docs/slf4j-api-1.6.4-javadoc"
;;                               "/opt/java_docs/snakeyaml-1.6-javadoc"
;;                               "/opt/java_docs/testng-6.1.1-javadoc"))

;;(global-set-key [(f1)]          'javadoc-lookup)  ; F1 to lookup
;;(global-set-key [(shift f1)]    'javadoc-help)    ; Shift-F1 to bring up menu

(provide 'my-java-settings)
