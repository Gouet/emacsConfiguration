;;; cmake-font-lock-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (cmake-font-lock-activate) "cmake-font-lock" "cmake-font-lock.el"
;;;;;;  (22322 65141 562806 516000))
;;; Generated autoloads from cmake-font-lock.el

(autoload 'cmake-font-lock-activate "cmake-font-lock" "\
Activate advanced CMake colorization.

To activate this every time a CMake file is opened, use the following:

    (add-hook 'cmake-mode-hook 'cmake-font-lock-activate)

\(fn)" t nil)
(add-hook 'cmake-mode-hook 'cmake-font-lock-activate)

;;;***

;;;### (autoloads nil nil ("cmake-font-lock-pkg.el") (22322 65141
;;;;;;  672406 14000))

;;;***

(provide 'cmake-font-lock-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cmake-font-lock-autoloads.el ends here
