;;; ~/.doom.d/+org.el -*- lexical-binding: t; -*-


;; Org
(after! org
  (setq +org-capture-todo-file "Inbox.org"
        +org-capture-projects-file "Projects.org"
        +org-capture-journal-file "Reviews.org"

        ;; Refiling
        org-refile-use-outline-path 'file
        org-outline-path-complete-in-steps nil
        org-refile-allow-creating-parent-nodes 'confirm
        org-refile-targets '(("Next.org" :maxlevel . 1)
                             ("Someday.org" :level . 0)
                             ("Projects.org" :maxlevel . 9)
                             ("Repeating.org" :maxlevel . 1))

        ;; Capturing
        org-capture-templates
        `(("i" "Inbox" entry
           (file "~/Nextcloud/Documents/org/Inbox.org")
           "* TODO %?")
          ("w" "Weekly Review" entry
           (file+olp+datetree "~/Nextcloud/Documents/org/Reviews.org")
           (file "~/Nextcloud/Documents/org/templates/WeeklyReview.org"))
          ("c" "org-protocol-capture" entry
           (file "~/Nextcloud/Documents/org/Inbox.org")
           "* TODO [[%:link][%:description]]\n\n %i" :immediate-finish t))
        org-todo-keywords
        '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
            (sequence "WAIT(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))

        ;; Tags
        org-tag-alist '(("@school" . ?s)
                        ("exercise" . ?e)
                        ("learn" . ?l)
                        ("read" . ?r))

        ;; Logging
        org-log-done 'time
        org-log-redeadline 'note
        org-log-reschedule 'note
        org-log-into-drawer t

        ;; UI
        org-superstar-headline-bullets-list '("☰" "☱" "☲" "☳" "☴" "☵" "☶" "☷" "☷" "☷" "☷")
        org-startup-with-inline-images t

        org-highlight-latex-and-related '(latex script entities)
        org-latex-listings 'listings
        org-format-latex-header (concat org-format-latex-header
                                        "\n\\usepackage{stix}"
                                        "\n\\usepackage{tikz}"
                                        "\n\\usetikzlibrary{automata, positioning, arrows}"
                                        "\n\\usepackage{amsthm}"
                                        "\n\\newtheorem{theorem}{Theorem}[section]"
                                        "\n\\newtheorem{corollary}{Corollary}[theorem]"
                                        "\n\\newtheorem{lemma}[theorem]{Lemma}"
                                        "\n\\theoremstyle{definition}"
                                        "\n\\newtheorem{definition}{Definition}[section]"
                                        "\n\\theoremstyle{remark}"
                                        "\n\\newtheorem*{remark}{Remark}"))

  ;; Save org buffers after performing certain actions
  (advice-add #'org-refile :after #'org-save-all-org-buffers)
  (advice-add #'org-agenda-exit :around 'doom-shut-up-a)
  (advice-add #'org-agenda-exit :before #'org-save-all-org-buffers)

  ;; pretty checkboxes
  (appendq! +pretty-code-symbols
            '(:checkbox   "☐"
              :pending    "❍"
              :checkedbox "☑"
              :property   "☸"))
  (set-pretty-symbols! 'org-mode
    :checkbox   "[ ]"
    :pending    "[-]"
    :checkedbox "[X]"
    :property   "#+PROPERTY:")

  (add-to-list 'org-link-abbrev-alist '("books" . "~/Nextcloud/Documents/Books/%s"))
  (add-to-list 'org-link-abbrev-alist '("mods" . "~/Nextcloud/Documents/NUS/Modules/%s"))
  (add-to-list 'org-link-abbrev-alist '("notes" . "~/Nextcloud/Documents/notes/%s"))

  ;; HACK to remain consistent with doom popups, and trigger org-agenda-exit to
  ;; save my buffers
  (map! :map evil-org-agenda-mode-map
        "q" #'org-agenda-exit))

(after! yasnippet
  (add-hook 'org-mode-hook
            #'(lambda () (yas-activate-extra-mode 'latex-mode))))

(setq org-ellipsis " ▾")

(after! evil-org
  (map! :map evil-org-mode-map
      :nv "j" #'evil-next-visual-line
      :nv "k" #'evil-previous-visual-line))

(setq +zen-text-scale 0.6)

(after! mixed-pitch
  (setq var-pitch "SF Pro Display"))


(after! org-roam
  (setq org-roam-directory  "~/Nextcloud/Documents/notes"))

(add-hook 'org-mode-hook #'writeroom-mode)
(add-hook 'writeroom-mode-hook #'+word-wrap-mode)
(add-hook 'writeroom-mode-hook #'+org-pretty-mode)
(add-hook 'writeroom-mode-hook
          (λ! (setq-local line-spacing 0.2)))
(add-hook 'writeroom-mode-hook
          (λ! (hl-line-mode (if writeroom-mode -1 1))))

;; (use-package! org-super-agenda
;;   :after org-agenda
;;   :init
;;   (setq org-agenda-start-day nil
;;         org-agenda-span 1)
;;   (advice-add #'org-super-agenda-mode :around #'doom-shut-up-a)
;;   :config
;;   (setq org-super-agenda-groups
;;         '((:name "Log" :log t)
;;           (:name "Today" :scheduled today)
;;           (:name "Overdue" :deadline past)
;;           (:name "Scheduled earlier" :scheduled past)
;;           (:name "Upcoming" :deadline future)
;;           (:name "Quick tasks" :todo "NEXT")
;;           (:name "Habits" :habit t :time-grid)
;;           (:name "Exercise" :tag "exercise" :order 5 :scheduled t)
;;           (:name "Waiting" :todo "WAITING")))
;;   (org-super-agenda-mode))

(after! smartparens-org
  (sp-local-pair 'org-mode "$" "$"))

(setq org-noter-notes-search-path '("~/Nextcloud/Documents/notes")
      org-noter-always-create-frame nil)


(map! :leader
      :prefix "n"
      :desc "Agenda Files" "-" #'nero/browse-agenda-files)
