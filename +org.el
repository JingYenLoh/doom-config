;;; ~/.doom.d/+org.el -*- lexical-binding: t; -*-


;; Org
(after! org
  (setq +org-capture-todo-file "Inbox.org"
        ;; org-agenda-files (list "~/Nextcloud/Documents/org")

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
        org-log-into-drawer t

        ;; UI
        org-tags-column 80
        org-agenda-tags-column 80)

  (map! :map evil-org-mode-map
        :localleader
        :desc "Archive" "a" #'org-archive-subtree-default-with-confirmation

        :prefix "i"
        :desc "set property" "p" #'org-set-property

        :prefix "e"
        "e" #'org-export-dispatch)

  (when (featurep! :app write +wordnut)
    (map! :map evil-org-mode-map
          :localleader
          :prefix "w"
          "t" #'synosaurus-lookup
          "w" #'wordnut-search))

  (set-popup-rules!
    '(("^\\*Org Links" :slot -1 :vslot -1 :size 2 :ttl 0)
      ("^\\*\\(?:Agenda Com\\|Calendar\\|Org \\(?:Export Dispatcher\\|Select\\)\\)"
       :slot -1 :vslot -1 :size #'+popup-shrink-to-fit :ttl 0)
      ("^\\*Org Agenda"    :size 90 :side right :select t :ttl nil)
      ("^\\*Org Src"       :size 0.4 :quit nil :select t :autosave t :ttl nil)
      ("^CAPTURE.*\\.org$" :size 90 :side right :quit nil :select t :autosave t))))

(advice-add #'org-agenda-quit :before #'org-save-all-org-buffers)
(advice-add 'org-deadline :after 'org-save-all-org-buffers)
