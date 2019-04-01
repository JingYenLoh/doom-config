;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;; About me
(setq user-full-name "Jing Yen Loh"
      user-mail-address "lohjingyen@gmail.com")

;; Some basic settings
(setq doom-localleader-key ","
      +default-repeat-keys (cons ";" "'")

      display-line-numbers-type 'relative
      evil-escape-key-sequence "fd"

      evil-snipe-scope 'visible
      evil-snipe-repeat-scope 'visible)

;; Start Emacs maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Org
(setq org-directory "~/Nextcloud/Documents/org/"
      +org-capture-todo-file "Inbox.org"

      org-refile-targets '(("Next.org" :level . 0)
                           ("Someday.org" :level . 0)
                           ("Projects.org" :maxlevel . 9)))
;; Alerts
(load! "+alert") ;; Testing out org-alert

;; Popups
(load! "+popups")
