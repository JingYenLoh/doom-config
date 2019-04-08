;;; ~/.doom.d/+org.el -*- lexical-binding: t; -*-

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
        org-todo-keywords
        '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
            (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))

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
        :desc "set property" "p" #'org-set-property)

  (set-popup-rules!
    '(("^\\*Org Agenda.*" :slot -1 :size 90 :side right :select t)
      ("^CAPTURE.*\\.org$" :size 90 :side right :quit nil :select t :autosave t))))
