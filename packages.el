;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))
;; (package! builtin-package :disable t)

(package! mixed-pitch :recipe
  (:host gitlab :repo "lohjingyen/mixed-pitch")
  :pin "0128a151d8dd2235f1c6f3bf53c9e28777440008")

;; (package! crux)

;; (package! org-super-agenda)

(package! mips-mode)

(package! modus-operandi-theme)
(package! modus-vivendi-theme)

(package! solaire-mode :disable t)
