
(add-to-list 'load-path "~/.emacs.d/color-theme")
(add-to-list 'load-path "~/.emacs.d/color-theme-solarized")
(require 'color-theme)

;;;;;;;;;;;;;;;;;;;;;;;;;  themes
;;(color-theme-zenburn)
;;(color-theme-twilight)
;;(color-theme-robin-hood)
(require 'color-theme-solarized)
(color-theme-solarized-dark)
;;(set-cursor-color "red")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; adding octave mode for all .m files
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))
;; add auto-fill and font-lock
(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))

(add-hook 'inferior-octave-mode-hook
          (lambda ()
            (turn-on-font-lock)
            (define-key inferior-octave-mode-map [up]
              'comint-previous-input)
            (define-key inferior-octave-mode-map [down]
              'comint-next-input)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

(global-linum-mode t)

(defun eshell/clear ()
  "sailor, to clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(setq c-basic-offset 2)
(setq tab-width 2)
(defun eshell/clear ()
  "sailor, to clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(defun my-wrap-mode-on ()
  "Minor mode for making buffer not wrap long lines to next line."
  (interactive)
  (setq truncate-lines nil))

(defun my-wrap-mode-off ()
  "Minor mode for making buffer wrap long lines to next line."
  (interactive)
  (setq truncate-lines t))

(defun my-toggle-wrap-mode ()
  "Switch wrap mode from wrap to non-wrap, or vice-versa."
  (interactive)
  (if (eq truncate-lines nil)
      (my-wrap-mode-off)
    (my-wrap-mode-on)))

