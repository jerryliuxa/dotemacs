;; -*- Emacs-Lisp -*-

;; Time-stamp: <2010-04-28 13:16:59 Wednesday by ahei>

(require 'autopair)
(require 'util)
(require 'electric)

(defun autopair-settings ()
  "settings for `autopair'."
  ;; After do this, isearch any string, M-: (match-data) always return (0 3)
  (autopair-global-mode 1)

  (setq autopair-extra-pairs `(:everywhere ((?` . ?'))))

  (defun change-autopair-insert-opening ()
    "Change definition of `autopair-insert-opening'."

    (defun autopair-insert-opening-internal ()
      (interactive)
      (when (autopair-pair-p)
        (setq autopair-action (list 'opening (autopair-find-pair last-input-event) (point))))
      (autopair-fallback))

    (defun autopair-insert-opening ()
      (interactive)
      (if (and (fboundp 'skeleton-c-mode-left-brace)
               (memq major-mode modes-use-self-opening)
               (equal last-command-event ?{))
          (call-interactively 'skeleton-c-mode-left-brace)
        (call-interactively 'autopair-insert-opening-internal))))
  
  (defvar modes-use-self-opening
    '(c-mode c++-mode java-mode awk-mode php-mode)
    "*Modes use themselves insert opening function.")

  (eal-eval-by-modes
   modes-use-self-opening
   (lambda (mode)
     (change-autopair-insert-opening)))
  ;;使用易码肆24内嵌的功能：
  ;;编辑时智能缩进，类似于C-j的效果——这个C-j中，zencoding和electric-pair-mode冲突
  (electric-indent-mode t)
  ;;系统本身内置的智能自动补全括号
  (electric-pair-mode t)
  ;;特定条件下插入新行
  ;(electric-layout-mode t)

)

(eval-after-load "autopair"
  '(autopair-settings))

(provide 'autopair-settings)
