;;; flycheck-cstyle.el --- Integrate cstyle with flycheck

;;; Commentary:
;;

;;; Code:
(require 'flycheck)

(defcustom flycheck-cstyle-config
  "~/.cstyle"
  "Configuration to use with cstyle.")

(flycheck-define-checker cstyle
  "A checker using cstyle.

See `https://github.com/alexmurray/cstyle/'."
  :command ("cstyle"
            (eval (list "--config" (expand-file-name flycheck-cstyle-config)))
            source)
  :error-patterns ((info line-start (file-name) ":" line ":" column ":"
                         (message (minimal-match (one-or-more anything)))
                         line-end))
  :modes c-mode c++-mode)

;;;###autoload
(defun flycheck-cstyle-setup ()
  "Setup flycheck-cstyle.

Add `cstyle' to `flycheck-checkers'."
  (interactive)
  (add-to-list 'flycheck-checkers 'cstyle))

(provide 'flycheck-cstyle)

;;; flycheck-cstyle.el ends here
