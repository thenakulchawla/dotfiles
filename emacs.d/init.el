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

;; Load theme
(require 'theme)
