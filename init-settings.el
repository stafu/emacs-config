;;
;; File: init-settings.el
;; Various small customisations, mostly editing related.

;; Default directory
(setq default-directory "~")

;; Set home dir
(cd (expand-file-name "~/"))

;; Indentation (C-modes)
(setq c-default-style "bsd"
      c-basic-offset 4)

;; Tabs => Spaces (4)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Enable backspace and overwrite on region
(delete-selection-mode 1)

;; Enable downcase/upcase region
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; Enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; Keep backups in a separate directory
(defun make-backup-file-name (file)
  (concat "~/.emacs.d/cache/backups" (file-name-nondirectory file) "~"))

;; Change auto-save-list directory.
(setq auto-save-list-file-prefix "~/.emacs.d/cache/auto-save-list/.saves-")

;; Change eshell directory.
(setq eshell-directory-name "~/.emacs.d/cache/eshell")

(provide 'init-settings)
