;;; ~/.doom.d/+popups.el -*- lexical-binding: t; -*-

;; Org
(after! org
  (set-popup-rules!
    '(("^\\*Org Agenda.*" :slot -1 :size 90 :side right :select t)
      ("^CAPTURE.*\\.org$" :size 80 :side right :quit nil :select t :autosave t))))

;; Pass
(after! pass
  (set-popup-rule! "^\\*Password-Store" :side left :size 80 :quit nil))
(set-popup-rule! "^\\*Customize.*" :slot 2 :side 'right :modeline nil :select t :quit t)

;; Help
(set-popup-rule! "^\\*info.*" :size 82 :side 'right :ttl t :select t :quit t)
(set-popup-rule! "^\\*Man.*" :size 82 :side 'right :ttl t :select t :quit t)
(set-popup-rule! "^\\*tldr\\*" :size 82 :side 'right :select t :quit t)
(set-popup-rule! "^\\*helpful.*" :size 82 :side 'right :select t :quit t)
(set-popup-rule! "^\\*Help.*" :size 82 :height 0.6 :side 'right :select t :quit t)
(set-popup-rule! "^ \\*Metahelp.*" :size 82 :side 'right :select t :quit t)
(set-popup-rule! "^\\*Apropos.*" :size 82 :height 0.6 :side 'right :select t :quit t)
