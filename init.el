;;; init.el -*- lexical-binding: t; -*-
;; Copy me to ~/.doom.d/init.el or ~/.config/doom/init.el, then edit me!

(doom! :feature
       ;;debugger
       eval
       (evil +everywhere)
       file-templates
       (lookup
        +docsets)
       snippets
       workspaces

       :completion
       (company
        +childframe)
       ;;helm
       ;;ido
       ivy

       :ui
       ;;deft
       doom
       doom-dashboard
       ;; doom-quit
       evil-goggles
       ;;fci
       hl-todo
       ;;indent-guides
       modeline
       nav-flash
       ;;neotree
       treemacs
       (popup
        +all
        +defaults)
       ;;pretty-code
       ;;tabbar
       ;;unicode
       vc-gutter
       vi-tilde-fringe
       window-select

       :editor
       fold
       ;;(format +onsave)
       ;;lispy
       multiple-cursors
       ;;parinfer
       rotate-text

       :emacs
       (dired
       ;;+ranger
       ;;+icons
        )
       electric
       ;;eshell
       imenu
       term
       vc

       :tools
       ;;ansible
       docker
       editorconfig
       ;;ein
       (flycheck
        +childframe)
       ;;flyspell
       ;;gist
       lsp
       ;;macos
       magit
       ;;make
       password-store
       ;;pdf
       ;;prodigy
       ;;rgb
       ;;terraform
       ;;tmux
       ;;upload
       ;;wakatime
       vterm

       :lang
       ;;assembly
       (cc +lsp)
       ;;clojure
       ;;common-lisp
       ;;coq
       ;;crystal
       ;;csharp
       data
       ;;erlang
       ;;elixir
       ;;elm
       emacs-lisp
       ;;ess
       go
       (haskell +intero)
       ;;hy
       ;;idris
       ;;(java +meghanada)
       ;;javascript
       ;;julia
       latex
       ;;ledger
       ;;lua
       markdown
       ;;nim
       ;; nix
       ;;ocaml
       (org
        +attach
        +babel
        +capture
        +export
        +present)
       ;;perl
       ;;php
       ;;plantuml
       ;;purescript
       python
       ;;qt
       ;;racket
       ;;rest
       ;;ruby
       (rust +lsp)
       ;;scala
       (sh +fish)
       ;;solidity
       ;;swift
       web
       ;;vala

       ;; Applications are complex and opinionated modules that transform Emacs
       ;; toward a specific purpose. They may have additional dependencies and
       ;; should be loaded late.
       :app
       ;;(email +gmail)
       ;;irc
       ;;(rss +org)
       ;;twitter
       ;;(write
       ;; +wordnut
       ;; +langtool)

       :collab
       ;;floobits
       ;;impatient-mode

       :config
       ;; For literate config users. This will tangle+compile a config.org
       ;; literate config in your `doom-private-dir' whenever it changes.
       ;;literate

       ;; The default module sets reasonable defaults for Emacs. It also
       ;; provides a Spacemacs-inspired keybinding scheme and a smartparens
       ;; config. Use it as a reference for your own modules.
       (default +bindings +smartparens))
