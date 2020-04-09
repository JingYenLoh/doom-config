;;; ~/.doom.d/+popups.el -*- lexical-binding: t; -*-

(set-popup-rule! "^\\*Customize.*" :slot 2 :side 'right :size 82 :modeline nil :select t :quit t)

;; Help
(set-popup-rule! "^\\*info.*" :size 82 :side 'right :ttl t :select t :quit t)
(set-popup-rule! "^\\*Man.*" :size 82 :side 'right :ttl t :select t :quit t)
(set-popup-rule! "^\\*tldr\\*" :size 82 :side 'right :select t :quit t)
(set-popup-rule! "^\\*helpful.*" :size 82 :side 'right :select t :quit t)
(set-popup-rule! "^\\*Help.*" :size 82 :height 0.6 :side 'right :select t :quit t)
(set-popup-rule! "^ \\*Metahelp.*" :size 82 :side 'right :select t :quit t)
(set-popup-rule! "^\\*Apropos.*" :size 82 :height 0.6 :side 'right :select t :quit t)
(set-popup-rule! "^\\*WordNut.*" :size 82 :height 0.6 :side 'right :select t :quit t)
(set-popup-rule! "^\\*WordNet.*" :size 82 :height 0.6 :side 'right :select t :quit t)
(set-popup-rule! "^\\*Synonyms List.*" :size 82 :height 0.6 :side 'right :select t :quit t)
(set-popup-rule! "^\\*lsp-help.*" :size 82 :height 0.6 :side 'right :select t :quit t)
(set-popup-rule! "^\\*Outline*" :size 82 :side 'right :select t)

(after! pdf-tools
  (set-popup-rule! "^\\*Outline*" :size 82 :side 'right :select t))
