(color-theme-zenburn)
(require 'haml-mode)
(require 'rinari)
(require 'erc)
;;(autoload "gyach" "gyach" "Autoload for El-Gyach")
(require 'rsense)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
(require 'psvn)
;;(require 'save-visited-files)
;;(turn-on-save-visited-files-mode) 


(defun eshell/clear ()
  "sailor, to clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))