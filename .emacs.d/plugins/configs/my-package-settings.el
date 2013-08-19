(require 'package)

(defun my-package-settings
  (add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (package-initialize)
)

(provide 'my-package-settings)
