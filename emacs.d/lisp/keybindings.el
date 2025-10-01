;;; keybindings.el --- Custom keybindings

;; Window management
(global-set-key (kbd "C-x |") 'split-window-right)
(global-set-key (kbd "C-x -") 'split-window-below)

;; Better window switching
(global-set-key (kbd "M-o") 'other-window)

;; Duplicate line
(defun duplicate-line ()
  (interactive)
  (save-excursion
    (let ((line (thing-at-point 'line)))
      (end-of-line)
      (newline)
      (insert line))))
(global-set-key (kbd "C-c d") 'duplicate-line)

;; Copy lines
(defun copy-lines (arg)
  "Copy ARG lines starting from current line."
  (interactive "p")
  (save-excursion
    (let ((start (line-beginning-position)))
      (forward-line arg)
      (kill-ring-save start (point)))))
(global-set-key (kbd "C-c y") 'copy-lines)

(provide 'keybindings)
