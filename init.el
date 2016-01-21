
;; setup packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
(package-initialize)

;; magit
(add-to-list 'load-path "~/.emacs.d/lisp/magit/lisp")
(require 'magit)

;; keybindings
(global-set-key [f1] 'shell)
(global-set-key [f10] 'magit-status)
(global-set-key (kbd "M-o") 'other-window)

;; because I'm dumb
(global-set-key (kbd "C-z") 'undo)

(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
	       "~/.emacs.d/lisp/magit/Documentation/"))


;; wind-move
(windmove-default-keybindings)

;; avy
(avy-setup-default)
(global-set-key (kbd "C-c a l") 'avy-goto-line)
(global-set-key (kbd "C-c a c") 'avy-goto-char)
(global-set-key (kbd "C-c a w") 'avy-goto-char)

(add-hook 'prog-mode-hook #'aggressive-indent-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.24)
 '(custom-safe-themes
   (quote
    ("2da65cb7074c176ca0a33f06bcc83ef692c9175e41b6370f5e94eb5811d6ee3a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(load-file "~/.emacs.d/appearance.el")
(load-file "~/.emacs.d/completion.el")
(load-file "~/.emacs.d/pythonconfig.el")
