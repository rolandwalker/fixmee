
;; requires and setup

(when load-file-name
  (setq package-enable-at-startup nil)
  (setq package-load-list '((button-lock t)
                            (tabulated-list t)))
  (when (fboundp 'package-initialize)
    (package-initialize)))

(require 'button-lock)
(require 'tabulated-list)
(require 'fixmee)

;;; this is a stub - no tests defined

;;; todo - fixmee-refresh-timer-setup (&optional arg)

;;; todo - fixmee-cache-invalidate ()

;;; todo - fixmee-get-buffer-state ()

;;; todo - fixmee-this-buffer-not-pristine-hook (&optional beg end len)

;;; todo - fixmee-buffer-included-p (buf)

;;; todo - fixmee-measure-urgency (str-val)

;;; todo - fixmee-sort-notice-list ()

;;; todo - fixmee-notices-from-pristine-buffers ()

;;; todo - fixmee-notices-from-current-buffer ()

;;; todo - fixmee-locate-all-notices ()

;;; todo - fixmee-inside-notice-p (&optional pos)

;;; todo - fixmee-leave-current-notice (&optional reverse)

;;; todo - fixmee-navigate-to-hit (hit)

;;; todo - fixmee-find-nextmost-urgent (hit)

;;; todo - fixmee-find-prevmost-urgent (hit)

;;; todo - fixmee-find-next-by-position (&optional pos)

;;; todo - fixmee-find-previous-by-position (&optional pos)

;;; todo - fixmee-notice-popup (ev)

;;; todo - fixmee-button-setup (&optional arg)

;;; todo - fixmee--listview-name-sorter (a b)

;;; todo - fixmee--listview-urgency-sorter (a b)

;;; todo - fixmee--listview-context-sorter (a b)

;;; todo - fixmee--listview-max-line-number-width (notice-list)

;;; todo - fixmee--listview-buffer-plus-line-formatted (buf pos len)

;;; todo - fixmee--listview-render-entries (notice-list)

;;; todo - fixmee--listview-find-current-notice ()

;;; todo - fixmee--listview-print-entry-function (id cols)

;;; todo - fixmee--listview-revert-function (&optional _ignore1 _ignore2)

;;; todo - fixmee-maybe-turn-on (&optional arg)

;;; todo - fixmee-mode-maybe-global-teardown ()

;;; todo - fixmee-reload ()

;;; todo - fixmee-goto-nextmost-urgent (&optional arg)

;;; todo - fixmee-goto-prevmost-urgent (&optional arg)

;;; todo - fixmee-goto-next-by-position (&optional arg)

;;; todo - fixmee-goto-previous-by-position (&optional arg)

;;; todo - fixmee-mouse-goto-nextmost-urgent (event)

;;; todo - fixmee-mouse-goto-prevmost-urgent (event)

;;; todo - fixmee-mouse-goto-next-by-position (event)

;;; todo - fixmee-mouse-goto-previous-by-position (event)

;;; todo - fixmee-listview-goto-notice ()

;;; todo - fixmee--listview-next-error-function (&optional arg reset)

;;; todo - fixmee-listview-view-notice ()

;;; todo - fixmee-show-listview (&optional arg)

;;; todo - fixmee-listview-toggle-local-only ()

;;; todo - fixmee-listview-previous-error (&optional arg)

;;; todo - fixmee-listview-next-buffer (&optional arg)

;;; todo - fixmee-listview-previous-buffer (&optional arg)

;;; todo - fixmee-listview-mouse-goto-notice (event)

;;; todo - fixmee-listview-quit (&optional buf)


;;; fixmee-mode

(ert-deftest fixmee-mode-01 nil
  :tags '(:interactive)
  (with-temp-buffer
    (rename-buffer "fixmee-mode-test-01" t)
    (emacs-lisp-mode)
    (fixmee-mode 1)
    (should fixmee-mode)
    (fixmee-mode -1)
    (should-not fixmee-mode)))


;;; global-fixmee-mode

(ert-deftest global-fixmee-mode-01 nil
  (global-fixmee-mode 1)
  (should global-fixmee-mode)
  (global-fixmee-mode -1)
  (should-not global-fixmee-mode))


;;
;; Emacs
;;
;; Local Variables:
;; indent-tabs-mode: nil
;; mangle-whitespace: t
;; require-final-newline: t
;; coding: utf-8
;; byte-compile-warnings: (not cl-functions)
;; End:
;;

;;; fixmee-test.el ends here
