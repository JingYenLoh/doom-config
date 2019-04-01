;;; ~/.doom.d/+popups.el -*- lexical-binding: t; -*-

(after! org
  (set-popup-rules!
    '(("^\\*Org Agenda.*" :slot -1 :size 90 :side right :select t)
      ("^CAPTURE.*\\.org$" :size 80 :side right :quit nil :select t :autosave t)))
  )
(after! pass
  (set-popup-rule! "^\\*Password-Store" :side left :size 80 :quit nil))
(set-popup-rule! "^\\*Customize.*" :slot 2 :side 'right :modeline nil :select t :quit t)
