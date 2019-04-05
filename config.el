;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

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
(after! org
  (setq org-directory "~/Nextcloud/Documents/org/")
  (setq +org-capture-todo-file "Inbox.org"
        org-agenda-files (list "~/Nextcloud/Documents/org")

        ;; Refiling
        org-refile-use-outline-path 'file
        org-outline-path-complete-in-steps nil
        org-refile-allow-creating-parent-nodes 'confirm
        org-refile-targets '(("Next.org" :level . 0)
                             ("Someday.org" :level . 0)
                             ("Projects.org" :maxlevel . 9))

        ;; Capturing
        org-capture-templates
        `(("i" "Inbox" entry
           (file "~/Nextcloud/Documents/org/Inbox.org")
           "* TODO %?")
          ("w" "Weekly Review" entry
           (file+olp+datetree "~/Nextcloud/Documents/org/Reviews.org")
           (file "~/Nextcloud/Documents/org/templates/WeeklyReview.org")))

        ;; Logging
        org-log-done 'time
        org-log-redeadline 'note
        org-log-reschedule 'note
        org-log-into-drawer t)

  (map! :map evil-org-mode-map
        :localleader
        :desc "Archive"  "a" #'org-archive-subtree-default-with-confirmation
        :desc "Refile"   "r" #'org-refile
        :desc "Schedule" "s" #'org-schedule

        :prefix "i"
        :desc "set property" "p" #'org-set-property))


;; Alerts
(load! "+alert") ;; Testing out org-alert

;; Popups
(load! "+popups")

;; Calendar
(setq org-caldav-url "https://cloud.nigelhao.me/remote.php/dav/calendars/francis"
      org-caldav-calendar-id "org"
      org-caldav-inbox "~/Nextcloud/Documents/org/Calendar.org"
      org-caldav-files '("~/Nextcloud/Documents/org/Projects.org"
                         "~/Nextcloud/Documents/org/Next.org")
      org-caldav-skip-conditions '(nottimestamp)
      org-icalendar-timezone "Asia/Singapore")
