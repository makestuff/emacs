(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq c-basic-offset 2)
(setq default-tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default show-trailing-whitespace t)
(global-auto-revert-mode 1)
;;(windmove-default-keybindings)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(icomplete-mode 1)

; force new frames into existing window
(setq ns-pop-up-frames nil)

;;disable splash screen and startup message
(setq inhibit-startup-message t)

;; Default font is Deja Vu Sans Mono, 18pt.
(if (string-equal system-type "gnu/linux")
    (set-default-font "-unknown-DejaVu Sans Mono-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")
  (set-default-font "-apple-menlo-medium-r-normal--14-140-72-72-m-140-iso10646-1"))

(require 'color-theme)
(setq color-theme-is-global t)
(load-file "~/.emacs.d/themes/color-theme-solarized.el")
(color-theme-solarized-dark)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
'(blink-cursor-mode t)
'(column-number-mode t)
'(show-paren-mode t))

(setq font-lock-global-modes '(not magit-mode w3m-mode))

; pretty diff-mode
(custom-set-faces
 '(diff-added ((t (:foreground "#559944"))))
 '(diff-context ((t nil)))
 '(diff-file-header ((((class color) (min-colors 88) (background dark)) (:foreground "RoyalBlue1"))))
 '(diff-function ((t (:foreground "#00bbdd"))))
 '(diff-header ((((class color) (min-colors 88) (background dark)) (:foreground "RoyalBlue1"))))
 '(diff-hunk-header ((t (:foreground "#fbde2d"))))
 '(diff-nonexistent ((t (:inherit diff-file-header :strike-through nil))))
 '(diff-refine-change ((((class color) (min-colors 88) (background dark)) (:background "#182042"))))
 '(diff-removed ((t (:foreground "#de1923")))))

; pretty magit diffs (based on colors for diff-mode above)
(set-face-attribute 'magit-diff-add nil :foreground "#008838" :background "#ddffdd")
(set-face-attribute 'magit-diff-del nil :foreground "#c0002b" :background "#ffeeee")
(set-face-attribute 'magit-diff-file-header nil :foreground "RoyalBlue1")
(set-face-attribute 'magit-diff-hunk-header nil :foreground "RoyalBlue1")
(set-face-attribute 'magit-item-highlight nil :background "#eeeeee")

(setq-default line-spacing 2)
