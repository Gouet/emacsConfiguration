(setq emacs-lisp-dir "~/.emacs.d/"
      my-elmode-dir (concat emacs-lisp-dir "elmodes/"))
(setq load-path
      (append load-path (list my-elmode-dir)))

(add-to-list 'load-path "~/.emacs.d/")

(load "std.el")
(load "std_comment.el")
(if (file-exists-p "~/.myemacs")
    (load-file "~/.myemacs"))

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;begin
(menu-bar-mode 0)

(require 'indent-guide)
(indent-guide-global-mode)

(autoload 'cmake-font-lock-activate "cmake-font-lock" nil t)
(add-hook 'cmake-mode-hook 'cmake-font-lock-activate)

;(global-unset-key (kbd "C-\ "))

;(global-unset-key "C-SPC")
(define-key global-map (kbd "C-c SPC") 'company-manual-begin)


;; LUA
(require 'flymake-lua)
(add-hook 'lua-mode-hook 'flymake-lua-load)

(autoload 'lua-mode "lua-mode" "Lua editing mode" t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; END

(global-linum-mode t)
(setq linum-format "%2d \u2502")

;Rainbow Color
(require 'rainbow-mode)
(global-set-key [f9] 'rainbow-mode)

; fenetre trop style
;(add-to-list 'load-path "~/.emacs.d/plugins/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
;(eval-after-load 'neotree
;(neotree-show))

(display-battery-mode)
(display-time)

;change buffer
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)
(custom-set-variables)

(require 'flycheck)
(global-flycheck-mode)

; auto comple mode
;(global-set-key "C-SPC" 'company-manual-begin)


(add-to-list 'load-path "/home/gouet_v/.emacs.d/themes/")
(require 'tomorrow-night-theme)
(load-theme 'tomorrow-night t)
(color-theme-tomorrow-night)

;(add-hook 'before-save-hook 'flycheck-mode-disable);irony-setup))

;; (eval-after-load 'company
;;   '(add-to-list 'company-backends 'company-irony))

(define-key global-map (kbd "C-c ;") 'iedit-mode)

(define-key global-map (kbd "C-c h") "
#ifndef\n# define\n\n\n#endif")

;(company-mode)
;(require 'company-ycmd)
(global-company-mode)

;(global-set-key (kbd "C-SPC") "toto")

(require 'color)

  (let ((bg (face-attribute 'default :background)))
    (custom-set-faces
     `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 2)))))
     `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 10)))))
     `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 5)))))
     `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
     `(company-tooltip-common ((t (:inherit font-lock-constant-face))))))
(put 'downcase-region 'disabled nil)

;; c++11
;'(flycheck-gcc-args (quote ("-std=c++11")))
;; (add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))
;; (use-package flycheck :init (progn (add-hook 'after-init-hook #'global-flycheck-mode)
;;(add-hook 'c++-mode-hook)
					     ;; (lambda ()
					   ;;     (setq-default flycheck-clang-standard-library "libc++")
;; 					       (setq-default flycheck-clang-language-standard "gnu++11")))))
;; (add-hook 'after-init-hook #'global-flycheck-mode)))
