;;; init.el -*- lexical-binding: t; -*-
;; Copy me to ~/.doom.d/init.el or ~/.config/doom/init.el, then edit me!

(defvar nero/documents-directory "~/Nextcloud/Documents"
  "My documents directory.")

;; About me
(setq user-full-name "Jing Yen Loh"
      user-mail-address "lohjingyen@gmail.com"
      documents-directory nero/documents-directory)

(setq langtool-bin "/usr/bin/languagetool"
      TeX-engine 'xetex
      org-list-allow-alphabetical t)

(setq read-process-output-max (* 1024 1024))

(doom! :input
       ;;chinese
       ;;japanese

       :checkers
       ;;grammar
       ;;spell
       (syntax +childframe)

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
       ;;doom-quit
       ;;fill-column
       hl-todo
       hydra
       ;;indent-guides
       (modeline +light)
       nav-flash
       ;;neotree
       ophints
       (popup
        +all
        +defaults)
       treemacs
       pretty-code
       ;;tabs
       ;;unicode
       vc-gutter
       ;;vi-tilde-fringe
       window-select
       workspaces
       zen

       :editor
       (evil +everywhere)
       file-templates
       fold
       (format +onsave)
       ;;lispy
       multiple-cursors
       ;;objed
       ;;parinfer
       rotate-text
       snippets
       word-wrap

       :emacs
       (dired
        ;;+ranger
        ;;+icons
        )
       electric
       ;;ibuffer
       undo
       vc

       :term
       ;;eshell
       ;;shell
       ;;term
       vterm

       :tools
       ;;ansible
       debugger
       (debugger +lsp)
       ;;direnv
       ;;docker
       editorconfig
       ;;ein
       (eval +overlay)
       ;;gist
       (lookup
        +dictionary)
       (lsp +peek)
       ;;macos
       magit
       ;;make
       ;;pass
       pdf
       ;;prodigy
       ;;rgb
       ;;terraform
       ;;tmux
       ;;upload

       :lang
       ;;agda
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
       ;; (haskell +intero)
       ;;go
       ;;hy
       ;;idris
       ;;(java +lsp)
       (javascript +lsp)
       ;;julia
       latex
       lua
       ;;ledger
       markdown
       ;;nim
       ;;nix
       ;;ocaml
       (org
        +dragndrop
        ;; +jupyter
        ;;+gnuplot
        +noter
        +pandoc
        +pomodoro
        ;;+present
        +roam)
       ;;perl
       ;;php
       ;;plantuml
       ;;purescript
       (python
        +lsp
        +pyenv)
       ;;qt
       ;;racket
       ;;rest
       ;;ruby
       (rust +lsp)
       ;;scala
       sh
       ;;solidity
       ;;swift
       web

       :email
       ;;(mu4e +gmail)
       ;;notmuch
       ;;(wanderlust +gmail)

       :app
       ;;calendar
       ;;irc
       ;;(rss +org)
       ;;twitter

       :config
       ;;literate
       (default +bindings +smartparens))
