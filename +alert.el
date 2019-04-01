;;; ~/.doom.d/+alert.el -*- lexical-binding: t; -*-

(def-package! org-alert
  :after (org)
  :init
  (setq alert-default-style 'libnotify
        alert-fade-time 10
        org-alert-notification-title "Todo")
  :config
  (org-alert-enable))
