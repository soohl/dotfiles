;;Custom Var
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) (:foreground "#cccccc" :background "#2d2d2d"))))
 '(ivy-subdir ((t (:foreground "#00FF00")))))

;;Package installer (melpa)
(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Keybindings
(global-set-key (kbd "M-j") 'join-line)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-a") 'back-to-indentation)
(global-set-key (kbd "<s-return>") 'toggle-frame-maximized) ;; To full screen
(global-set-key (kbd "<C-return>") 'set-mark-command)

;;Theme and font setting
(add-to-list 'custom-theme-load-path "~/.emacs.d/Themes")
(add-to-list 'load-path "~/.emacs.d/Themes")
(require 'color-theme-sanityinc-tomorrow)
(color-theme-sanityinc-tomorrow--define-theme eighties)
(set-frame-font "Bitstream Vera Sans Mono 13" nil t)

;;Default Setting
(set-face-attribute 'default nil :height 140)
(setq-default indent-tabs-mode nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default show-paren-mode 1)
(if window-system (tool-bar-mode 0))
(if (boundp 'aquamacs-version) (tabbar-mode 0))
(set-scroll-bar-mode 'right)
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)
(setq-default visual-line-fringe-indicators '(nil nil))
(setq-default word-wrap t)
(setq-default column-number-mode t)
(setq default-fill-column 80)
(delete-selection-mode 1)
(setq ring-bell-function 'ignore)
(setq inhibit-startup-screen t )
(setq initial-scratch-message "Welcome Back to Emacs~!")

;; UTF-8 everywhere
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; linum-mode everywhere, except where it doesn't belong
(require 'linum)
(setq-default linum-format "%4d ")
(setq linum-disabled-modes-list '(eshell-mode
                                  wl-summary-mode
                                  compilation-mode
                                  dired-mode
                                  speedbar-mode
                                  doc-view-mode))
(defun linum-on ()
  (unless (or (minibufferp)
              (member major-mode linum-disabled-modes-list)
            (and (not (eq (buffer-name) "*scratch*"))
                 (string-match "*" (buffer-name))))
    (linum-mode 1)))
 (global-linum-mode 1)
(setq linum-eager nil)

;;Smooth Scrolling
(setq-default mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq-default mouse-wheel-progressive-speed nil)
(setq-default mouse-wheel-follow-mouse 't)
(setq-default scroll-step 1)

;;Turn off backup and lockfiles creation
(setq backup-inhibited t)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

;;Autocomplete
(electric-pair-mode 1)

(ivy-mode 1)

(setq sml/theme 'powerline)
(sml/setup)
