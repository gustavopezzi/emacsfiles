;;; green-screen-theme.el

(deftheme green-screen
  "A nice color theme for those who miss green CRTs")

(custom-theme-set-faces
 'green-screen
 '(button ((t (:inherit (link)))))
 '(cursor ((t (:background "#80FF00"))))
 '(escape-glyph ((t (:foreground "#264C00"))))

 '(elfeed-search-date-face ((t (:foreground "#59B200"))))
 '(elfeed-search-feed-face ((t (:foreground "#D8FFB2"))))
 '(elfeed-search-title-face ((t (:foreground "#A6FF4C"))))
 '(elfeed-search-unread-title-face ((t (:foreground "#BFFF7F"))))

 '(font-lock-builtin-face ((t (:foreground "#A6FF4C" :weight semi-bold))))
 '(font-lock-comment-face ((t (:foreground "#407F00" :weight normal))))
 '(font-lock-constant-face ((t (:foreground "#BFFF7F" :weight bold))))
 '(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
 '(font-lock-function-name-face ((t (:foreground "#407F00" :weight normal))))
 '(font-lock-keyword-face ((t (:foreground "#A6FF4C" :weight extra-bold))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#59B200" :weight light))))
 '(font-lock-type-face ((t (:foreground "#c0ff00" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "lawn green" :weight normal))))
 '(font-lock-warning-face ((t (:weight bold :foreground "chartreuse"))))

 '(fringe ((t (:background "black" :foreground "#80FF00"))))

 '(highlight ((t (:background "green3" :foreground "lawn green" :weight normal))))

 '(hl-line ((t (:inherit highlight :background "dark green" :foreground "#80FF00"))))

 '(isearch ((((class color) (min-colors 88) (background light)) (:foreground "lightskyblue1" :background "magenta3")) (((class color) (min-colors 88) (background dark)) (:foreground "brown4" :background "palevioletred2")) (((class color) (min-colors 16)) (:foreground "cyan1" :background "magenta4")) (((class color) (min-colors 8)) (:foreground "cyan1" :background "magenta4")) (t (:inverse-video t))))

 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))

 '(lazy-highlight ((((class color) (min-colors 88) (background light)) (:background "#BFFF7F")) (((class color) (min-colors 88) (background dark)) (:background "paleturquoise4")) (((class color) (min-colors 16)) (:background "#D8FFB2")) (((class color) (min-colors 8)) (:background "#D8FFB2")) (t (:underline (:color foreground-color :style line)))))

 '(link ((t (:foreground "#59B200" :underline t))))
 '(link-visited ((t (:inherit link))))

 '(linum ((t (:height 100 :weight normal :box nil :foreground "#4C9900" :background "#336600" :inherit default))))

 '(markdown-code-face ((t (:foreground "#BFFF7F" :background "#407F00"))))

 '(match ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3")) (((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow")) (((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))

 '(message-header-other ((t (:foreground "#D8FFB2"))))

 '(minibuffer-prompt ((t (:foreground "green3" :weight normal))))

 '(mode-line ((t (:background "#009922" :foreground "#002200" :box (:line-width 1 :color "#009944") :weight normal))))
 '(mode-line-buffer-id ((t (:underline (:color foreground-color :style line)))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((t (:box nil))))
 '(mode-line-inactive ((t (:inherit mode-line :background "#264C00" :foreground "#A6FF4C" :box (:line-width -1 :color "#264C00") :weight light))))

 '(next-error ((t (:inherit (region)))))

 '(query-replace ((t (:inherit (isearch)))))

 '(region ((t (:background "#407F00"))))

 '(secondary-selection ((t (:background "#407F00"))))

 '(shadow ((t (:foreground "#407F00"))))

 '(trailing-whitespace ((t (:background "#BFFF7F" :foreground "black"))))

 '(variable-pitch ((t (:family "Sans Serif"))))

 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "#80ff00" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :width normal :foundry "PfEd"))))
 )

(custom-theme-set-variables 'green-screen
 '(fci-rule-color "dark green"))

(provide-theme 'green-screen)
