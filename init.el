;;; init.el -*- lexical-binding: t; -*-
;; Copy me to ~/.doom.d/init.el or ~/.config/doom/init.el, then edit me!

(doom! :input
       ;;chinese
       ;;japanese

       :completion
       (company
        +childframe)
       ;;helm
       ;;ido
       ivy

       :ui
       deft
       doom
       doom-dashboard
       ;; doom-quit
       ;;fill-column
       hl-todo
       hydra
       ;;indent-guides
       modeline
       nav-flash
       ;;neotree
       ophints
       (popup
        +all
        +defaults)
       treemacs
       ;;pretty-code
       ;;tabbar
       ;;unicode
       vc-gutter
       vi-tilde-fringe
       window-select
       workspaces

       :editor
       (evil +everywhere)
       file-templates
       fold
       ;;(format +onsave)
       ;;lispy
       multiple-cursors
       ;; objed
       ;;parinfer
       rotate-text
       snippets
       ;; word-wrap

       :emacs
       (dired
       ;;+ranger
       ;;+icons
        )
       electric
       vc

       :term
       ;;eshell
       ;;shell
       term
       vterm

       :tools
       ;;ansible
       ;;debugger
       ;;direnv
       docker
       editorconfig
       ;;ein
       eval
       (flycheck
        +childframe)
       ;;flyspell
       ;;gist
       (lookup
        +docsets)
       lsp
       ;;macos
       magit
       ;;make
       pass
       ;;pdf
       ;;prodigy
       ;;rgb
       ;;terraform
       ;;tmux
       ;;upload
       ;;wakatime

       :lang
       ;;agda
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
        +dragndrop
        +ipython
        +pandoc
        +pomodoro
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
