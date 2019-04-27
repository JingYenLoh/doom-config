;;; ~/.doom.d/+popups.el -*- lexical-binding: t; -*-

;; Pass
(after! pass
  (set-popup-rule! "^\\*Password-Store" :side left :size 80 :quit nil))
(set-popup-rule! "^\\*Customize.*" :slot 2 :side 'right :size 82 :modeline nil :select t :quit t)

;; Help
(set-popup-rule! "^\\*info.*" :size 82 :side 'right :ttl t :select t :quit t)
(set-popup-rule! "^\\*Man.*" :size 82 :side 'right :ttl t :select t :quit t)
(set-popup-rule! "^\\*tldr\\*" :size 82 :side 'right :select t :quit t)
(set-popup-rule! "^\\*helpful.*" :size 82 :side 'right :select t :quit t)
(set-popup-rule! "^\\*Help.*" :size 82 :height 0.6 :side 'right :select t :quit t)
(set-popup-rule! "^ \\*Metahelp.*" :size 82 :side 'right :select t :quit t)
(set-popup-rule! "^\\*Apropos.*" :size 82 :height 0.6 :side 'right :select t :quit t)
