(require-package 'elpy)
(require-package 'flycheck)

(elpy-enable)
(global-flycheck-mode)

;;------------------------------------------------------------
;; init flycheck
;;------------------------------------------------------------
 
(when (require-package 'flycheck nil t)
	(setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
	(add-hook 'elpy-mode-hook 'flycheck-mode))
	
	
(provide 'init-elpy)