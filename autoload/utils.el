;;; ~/.doom.d/autoloads/utils.el -*- lexical-binding: t; -*-

;;;###autoload
(defun nero/open-modules ()
  "Opens a dired buffer in my Nextcloud Modules folder."
  (interactive)
  (dired "~/Nextcloud/Documents/NUS/Modules"))

;;;###autoload
(defun nero/open-books ()
  "Opens a dired buffer in my Nextcloud Books folder."
  (interactive)
  (dired "~/Nextcloud/Documents/Books"))

;;;###autoload
(defun nero/open-documents ()
  "Opens a dired buffer in my Nextcloud Documents folder."
  (interactive)
  (dired "~/Nextcloud/Documents"))

;;;###autoload
(defun nero/browse-modules ()
  "Browse the files in my Nextcloud Modules folder."
  (interactive)
  (doom-project-browse (expand-file-name "~/Nextcloud/Documents/NUS/Modules")))

;;;###autoload
(defun nero/insert-word-count-region (start end &optional _)
  "Inserts the word count of a region below it in the format of (%d words)."
  (interactive (if current-prefix-arg
       (list nil nil current-prefix-arg)
     (list (region-beginning) (region-end) nil)))
  (let ((word-count (count-words start end)))
    (progn
      (deactivate-mark)
      (goto-char end)
      (move-end-of-line nil)
      (open-line 2)
      (forward-line 2)
      (evil-insert-state)
      (insert (format "(%d words)" word-count))
      (evil-normal-state))))


;; Foo bar baz

;; chicken wings
