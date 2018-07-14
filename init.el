;; unset keyboard coding system
(set-keyboard-coding-system nil)

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

;; hides menu bar and scrollbar on init
(hide-menu-scroll-bar)
(scroll-bar-mode -1)

;; set truncate lines off
(set-default 'truncate-lines t)

;; define color theme files
(push (substitute-in-file-name "~/.emacs.d/colorthemes/borland-blue-theme/") custom-theme-load-path)
(push (substitute-in-file-name "~/.emacs.d/colorthemes/comidia-theme/") custom-theme-load-path)
(push (substitute-in-file-name "~/.emacs.d/colorthemes/green-screen-theme/") custom-theme-load-path)
(load-theme 'borland-blue t)

;; toggles linum mode when f6 is pressed
(global-set-key [f6] 'linum-mode)

;; defines linum format and border
(setq linum-format "%4d \u2502 ")

;; defines indentation size
(setq default-tab-width 4)

;; use spaces instead of tabs when indenting
(setq-default indent-tabs-mode nil)

;; toggles whitespace mode when f9 is pressed
(global-set-key [f9] 'whitespace-mode)

;; defines custom variables
(custom-set-variables
  '(inhibit-startup-screen t))

;; defines font family and size
(custom-set-faces)
(defun fontify-frame(frame)
  (set-frame-parameter frame 'font "Perfect DOS VGA 437-12"))
(fontify-frame nil)
(push 'fontify-frame after-make-frame-functions)

;; toggles first char and first nonwhite char when C-a is pressed
(defun smarter-move-beginning-of-line(arg)
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

;; indent code right or left using C-Shift-right and C-Shift-left
(defun shift-region (distance)
  (let ((mark (mark)))
    (save-excursion
      (indent-rigidly (region-beginning) (region-end) distance)
      (push-mark mark t t)
      (setq deactivate-mark nil))))
(defun shift-right ()
  (interactive)
  (shift-region 1))
(defun shift-left ()
  (interactive)
  (shift-region -1))
(global-set-key [C-S-right] 'shift-right)
(global-set-key [C-S-left] 'shift-left)

;; stop autosaving and creating backup files
(setq make-backup-files nil)
(setq auto-save-default nil)
