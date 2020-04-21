;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Some basic settings
(setq doom-localleader-key ","
      +evil-repeat-keys (cons ";" "'")

      doom-theme 'doom-palenight
      doom-font (font-spec :family "SF Mono" :size 16)
      doom-variable-pitch-font (font-spec :family "SF Pro Display")
      doom-serif-font (font-spec :family "Libre Baskerville")

      ;; +doom-dashboard-banner-file (concat doom-private-dir "takagi-san.jpg")
      frame-title-format '("%b – Emacs")

      display-line-numbers-type nil
      evil-escape-key-sequence "fd"

      evil-snipe-scope 'visible
      evil-snipe-repeat-scope 'visible)

(def-modeline-var! +modeline-pdf-page
  '((:eval
     (propertize
      (format "%d/%d"
              (eval `(pdf-view-current-page))
              (pdf-cache-number-of-pages))
      'face (if (+modeline-active) 'mode-line 'mode-line-inactive))))
  "Displays the current page against the total number of pages in the PDF document.")

(def-modeline! 'pdf
  `(" " +modeline-matches
    " " +modeline-buffer-identification
    " " +modeline-pdf-page)
  '(" " +modeline-modes))

(set-modeline-hook! 'pdf-view-change-page-hook 'pdf)

(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-footer)

;; (setq +pretty-code-enabled-modes '(org-mode markdown-mode))
(setq +format-on-save-enabled-modes
      '(not emacs-lisp-mode  ; elisp's mechanisms are good enough
            sql-mode         ; sqlformat is currently broken
            tex-mode         ; latexindent is broken
            java-mode        ; let LSP handle it
            latex-mode))

;; Start Emacs maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Popups
(load! "+popups")

(setq org-directory "~/Nextcloud/Documents/org/")
(load! "+org")

;; Web
(after! web-mode
  (setq web-mode-indent-style 2
        web-mode-markup-indent-offset 2
        web-mode-code-indent-offset 2
        css-indent-offset 2

        web-mode-auto-close-style 1))

(after! js2-mode
  (setq js-indent-level 2
        sgml-basic-offset 2))

;; Use // single line comments instead of /*
(add-hook 'c-mode-hook (λ! (c-toggle-comment-style -1)))

(map! :leader
      :prefix "o"
      "c" #'calc)

(setq rustic-lsp-server 'rust-analyzer)

;; VSCode style
(map! "C-S-p" #'counsel-M-x)

(map! "C-c o" #'nero/open-with)

(map! :leader
      :prefix "g"
      (:desc "Magit Push" "P"#'magit-push))

(add-to-list 'auto-mode-alist '("\\PKGBUILD\\'" . sh-mode))

(map! :leader
      :prefix "d"
      :desc "Books Folder" "b" #'nero/open-books
      :desc "Documents Folder" "d" #'nero/open-documents
      :desc "Modules Folder" "m" #'nero/open-modules)

(after! lsp-java
  (setq lsp-java-format-settings-url
        (concat "https://gist.githubusercontent.com/"
                "JingYenLoh/"
                "e094be6e46cf8f69322e2a6ed7f5faf0/"
                "raw/"
                "37e9324777c31688430ae42ec1821e76d0e28b35/"
                "eclipse-java-formatter.xml")))

(use-package! mips-mode
  :defer t
  :mode "\\.mips$")
