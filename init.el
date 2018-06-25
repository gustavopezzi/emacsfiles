;; toggles fullscreen visibility when f11 is pressed
(defun toggle-fullscreen()
  (interactive)
  (when (eq window-system 'x)
    (set-frame-parameter nil 'fullscreen (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))
(global-set-key [f11] 'toggle-fullscreen)
(toggle-fullscreen)

;; hides menubar and scrollbar from the interface
(defun hide-menu-scroll-bar()
  (tool-bar-mode -1)
  (set-fringe-mode 0)
  (menu-bar-mode -99)
  (toggle-scroll-bar -1))

;; defines custom variables
(custom-set-variables '(inhibit-startup-screen t))

;; hides menu bar and scrollbar on init
(hide-menu-scroll-bar)
(scroll-bar-mode -1)

;; set truncate lines off
(set-default 'truncate-lines t)

;; defines font family and size
(custom-set-faces)(defun fontify-frame (frame)
(set-frame-parameter frame 'font "Hermit-12"))
(fontify-frame nil)
(push 'fontify-frame after-make-frame-functions)

;; define color theme files
(push (substitute-in-file-name "~/.emacs.d/colorthemes/borland-blue-theme/") custom-theme-load-path)
(push (substitute-in-file-name "~/.emacs.d/colorthemes/comidia-theme/") custom-theme-load-path)
(push (substitute-in-file-name "~/.emacs.d/colorthemes/green-screen-theme/") custom-theme-load-path)
(load-theme 'green-screen t)

;; show line numbers on init
(global-linum-mode t)

;; set line number color
(setq linum-format "%4d \u2502 ")

;; defines tab size
(setq default-tab-width 4)

;; unset keyboard coding system
(set-keyboard-coding-system nil)

;; stop autosaving and creating backup files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; toggles fullscreen visibility when f11 is pressed
(defun toggle-fullscreen()
  (interactive)
  (when (eq window-system 'x)
    (set-frame-parameter nil 'fullscreen (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))
(global-set-key [f11] 'toggle-fullscreen)
(toggle-fullscreen)

;; hides menubar and scrollbar from the interface
(defun hide-menu-scroll-bar()
  (tool-bar-mode -1)
  (set-fringe-mode 0)
  (menu-bar-mode -99)
  (toggle-scroll-bar -1))

;; requires neotree directory and toggles when f8 is pressed
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(setq neo-window-width 35)
(setq neo-theme 'ascii)
(global-set-key [f8] 'neotree-toggle)

;; defines custom variables
(custom-set-variables
  '(inhibit-startup-screen t))

;; hides menu bar on init
(hide-menu-scroll-bar)
(scroll-bar-mode -1)

;; set truncate lines off
(set-default 'truncate-lines t)

;; defines font family and size
(custom-set-faces)
(defun fontify-frame(frame)
  (set-frame-parameter frame 'font "Hermit-12"))
(fontify-frame nil)
(push 'fontify-frame after-make-frame-functions)

;; define color theme file
(push (substitute-in-file-name "~/.emacs.d/colorthemes/borland-blue-theme/") custom-theme-load-path)
(push (substitute-in-file-name "~/.emacs.d/colorthemes/comidia-theme/") custom-theme-load-path)
(push (substitute-in-file-name "~/.emacs.d/colorthemes/green-screen-theme/") custom-theme-load-path)
(load-theme 'borland-blue t)

;; show line numbers on init
(global-linum-mode t)

;; set line number format
(setq linum-format "%4d \u2502 ")

;; defines tab size
(setq default-tab-width 4)

;; unset keyboard coding system
(set-keyboard-coding-system nil)

;; stop autosaving and creating backup files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; toggles first char and first nonwhite char when C-a is pressed
(defun smarter-move-beginning-of-line (arg)
  (interactive "^p")
  (setq arg (or arg 1))
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))
  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))
(global-set-key [remap move-beginning-of-line] 'smarter-move-beginning-of-line)
