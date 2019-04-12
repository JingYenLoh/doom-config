;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; About me
(setq user-full-name "Jing Yen Loh"
      user-mail-address "lohjingyen@gmail.com")

;; Some basic settings
(setq doom-localleader-key ","
      +default-repeat-keys (cons ";" "'")

      doom-theme 'doom-peacock
      doom-modeline-buffer-file-name-style 'relative-from-project

      display-line-numbers-type 'relative
      evil-escape-key-sequence "fd"

      evil-snipe-scope 'visible
      evil-snipe-repeat-scope 'visible)

;; Start Emacs maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Popups
(load! "+popups")
(load! "+org")

;; Web
(setq web-mode-indent-style 2
      web-mode-css-indent-offset 2
      web-mode-markup-indent-offset 2
      web-mode-code-indent-offset 2
      css-indent-offset 2

      web-mode-auto-close-style 1)

