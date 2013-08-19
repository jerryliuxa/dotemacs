;tramp for windows
(require 'tramp)
(defun my-tramp-settings()
(cond
 ((eq system-type 'windows-nt)
  (setq tramp-default-method "plink"
        tramp-password-end-of-line "\r\n"))
 ((eq system-type 'gnu/linux)
  (setq tramp-default-method "ssh")))
(setq tramp-default-user "jerry"
	 tramp-default-host "192.168.56.99")
(setq password-cache-expiry 36000)

)

(provide 'my-tramp-settings)

