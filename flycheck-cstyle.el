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
  :error-patterns ((warning line-start (file-name) ":" line ":" column ":"
                            (message (minimal-match (one-or-more anything)))
                            line-end))
  :modes c-mode c++-mode)

(provide 'flycheck-cstyle)

;;; flycheck-cstyle.el ends here
