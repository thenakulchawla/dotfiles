;; Start with scratch buffer instead of startup screen
(setq inhibit-startup-screen t)

;; Package management setup
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; Install use-package if not already installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Add base config directory to load path
(add-to-list 'load-path "~/.emacs.d/lisp/")

(use-package treemacs
  :ensure t
  :bind (("C-c t" . treemacs))
  :config
  (setq treemacs-persist-file nil)  ; Don't remember projects between sessions
  (treemacs-follow-mode t))          ; Auto-follow current file

;; Load theme
(require 'theme)
;; Load keybindings
(require 'keybindings)
;; UI improvements
(setq inhibit-startup-screen t)           ; No startup screen
(tool-bar-mode -1)                        ; No toolbar
(menu-bar-mode -1)                        ; No menu bar (optional)
(scroll-bar-mode -1)                      ; No scroll bar
(setq ring-bell-function 'ignore)         ; No annoying bell

;; Better defaults
(setq-default indent-tabs-mode nil)       ; Use spaces, not tabs
(setq-default tab-width 4)                ; Tab width
(delete-selection-mode 1)                 ; Replace selection when typing
(global-auto-revert-mode 1)               ; Auto-reload files changed on disk
(save-place-mode 1)                       ; Remember cursor position in files
(setq make-backup-files nil)              ; Stop creating backup~ files
(setq auto-save-default nil)              ; Stop creating #autosave# files

;; Show line numbers
(global-display-line-numbers-mode 1)

;; Better completions
(ido-mode 1)                              ; Better file/buffer switching
(setq ido-enable-flex-matching t)         ; Fuzzy matching
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(solarized-theme treemacs)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
