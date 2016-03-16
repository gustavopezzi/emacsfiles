;; toggles fullscreen visibility when f11 is pressed
(defun toggle-fullscreen ()
    (interactive)
    (when (eq window-system 'x)
        (set-frame-parameter nil 'fullscreen
            (when (not (frame-parameter nil 'fullscreen)) 'fullboth)))
)
(global-set-key [f11] 'toggle-fullscreen)

;; hides menu bar from the interface
(defun hide-menubar ()
    (tool-bar-mode -1)
    (menu-bar-mode -99)
)

;; requires neotree directory and toggles when f8 is pressed
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(setq neo-window-width 35)
(setq neo-theme 'ascii)
(global-set-key [f8] 'neotree-toggle)

;; defines custom variables
(custom-set-variables
    '(inhibit-startup-screen t)
)

;; hides menu bar on init
(hide-menubar)
;; show line numbers on init
(global-linum-mode t)
;; set fullscreen on init
(toggle-fullscreen)
;; show neotree on init
(neotree-toggle)

;; defines font family and size
(custom-set-faces)(defun fontify-frame (frame)
(set-frame-parameter frame 'font "Hermit-10"))
(fontify-frame nil)
(push 'fontify-frame after-make-frame-functions)

;; define color theme file
(push (substitute-in-file-name "~/.emacs.d/colorthemes/borland-blue-theme/") custom-theme-load-path)
(push (substitute-in-file-name "~/.emacs.d/colorthemes/comidia-theme/") custom-theme-load-path)
(load-theme 'comidia t)

;; defines tab size
(setq default-tab-width 4)