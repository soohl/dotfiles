;;Package installer
(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Keybindings
(global-set-key (kbd "M-j") 'join-line)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-a") 'back-to-indentation)

(add-to-list 'custom-theme-load-path "~/.emacs.d/Themes")
(add-to-list 'load-path "~/.emacs.d/Themes")
(require 'color-theme-tomorrow)
(color-theme-tomorrow--define-theme night-eighties)

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
(delete-selection-mode 1)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

(electric-pair-mode 1)

(global-set-key (kbd "<s-return>") 'toggle-frame-maximized)

(set-frame-font "Bitstream Vera Sans Mono 13" nil t)


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
(setq-default mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq-default mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq-default scroll-step 1) ;; keyboard scroll one line at a time


(setq backup-directory-alist `(("." . "~/.saves")))
(setq create-lockfiles nil)

(global-set-key (kbd "C-<return>") 'set-mark-command)
