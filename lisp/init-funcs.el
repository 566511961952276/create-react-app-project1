;;; init-funcs.el --- Init some functions here

;;; Commentary:
;;; (c) Cabins, github.com/cabins/.emacs.d

;;; Code:

(defun cabins/open-emacs-init-file ()
  "Open Emacs init config file."
  (interactive)
  (find-file user-init-file))

(global-set-key (kbd "C-c ,") 'cabins/open-emacs-init-file)

(provide 'init-funcs)
;;; init-funcs.el ends here
