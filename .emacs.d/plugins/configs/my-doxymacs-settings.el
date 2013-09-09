;;==================== doxymacs ====================
(add-to-list 'load-path "~/.emacs.d/plugins/doxymacs-1.8.0")
(add-to-list 'load-path "~/.emacs.d/plugins/doxymacs")
(require 'doxymacs)

;; +---------+----------------------------------------------------------------------+
;; |C-c d ?  |从符号表中查找当前光标所在内容的文档（需要指定doxymacs-doxygen-dirs） |
;; +---------+----------------------------------------------------------------------+
;; |C-c d r  |重新扫描 Doxygen 的 tags 文件                                         |
;; +---------+----------------------------------------------------------------------+
;; |C-c d f  |为所在位置之后的那个函数插入注释（注意是在当前光标处插入，最好在函数  |
;; |         |上方的空行处使用，插入前先对好齐）                                    |
;; |         |                                                                      |
;; +---------+----------------------------------------------------------------------+
;; |C-c d i  |为当前文件插入注释（内容包括文件名、作者、日期和简介）                |
;; |         |                                                                      |
;; +---------+----------------------------------------------------------------------+
;; |C-c d ;  |为当前行的成员变量插入注释（类似M-;，但是格式不同）                   |
;; +---------+----------------------------------------------------------------------+
;; |C-c d m  |插入空白的多行注释，这个就在单纯是想要注释的时候用了                  |
;; +---------+----------------------------------------------------------------------+
;; |C-c d s  |插入空白的单行注释，和上面那个差不多                                  |
;; +---------+----------------------------------------------------------------------+
;; |C-c d @  |插入分组注释。所谓分组注释就是将某个范围内的代码看作一组，生成文档时  |
;; |         |会单独归在一个组下。使用时要先选中想分组的那部分代码                  |
;; +---------+----------------------------------------------------------------------+

;;注释高亮，针对C和C++程序
(add-hook 'c-mode-common-hook 'doxymacs-mode)

;;-------------------- doxymacs --------------------
(defconst doxymacs-C++-file-comment-template
 '(
   "/******************************************************************************" > n
   "*" > n
   "* " "FILE NAME   :"
   (if (buffer-file-name)
       (file-name-nondirectory (buffer-file-name))
     "") > n
   "*" > n
   "*" " DESCRIPTION :"> n
   "*" > n
   "*" "    "> n
   "*" > n
   "*" " HISTORY     :"> n
   "*" > n
   "*" "    See Log at end of file"> n
   "*" > n
   "*" "(c) Ericsson AB 2013 - All Rights Reserved "> n
 "*" > n
 "*" "No part of this material may be reproduced in any form" > n
 "*" "without the written permission of the copyright owner. " > n
 "*" "The contents are subject to revision without notice due" > n
 "*" "to continued progress in methodology, design and manufacturing." > n
 "*" "Ericsson shall have no liability for any error or damage of any" > n
 "*" "kind resulting from the use of these documents." > n
 "*" > n
 "*" "Ericsson is the trademark or registered trademark of" > n
 "*" "Telefonaktiebolaget LM Ericsson. All other trademarks mentioned" > n
 "*" "herein are the property of their respective owners." > n
 "*" "-------------------------------------------------------------------------------" > n
 "*" > n
 "*" "$Id$" > n
 "*" > n
 "*" "/"> n)
 "Default C++-style template for file documentation.")


(provide 'my-doxymacs-settings)
