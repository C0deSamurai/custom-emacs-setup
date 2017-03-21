(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; this is now managed by a Python shell commandd
;; on startup, read in a file for what to do
;; it will change automatically

;; ;; this is the cool bit--change themes on time of days
;; ;; other main locale: Andover, MA, 42.65 N, -71.13 E
;; ;; Charlotte NC is 35.22 N, -80.84 E
;; (setq calendar-current-location-name "Andover MA")
;; (setq calendar-longitude -71.13)
;; (setq calendar-latitude 42.65)
;; (require 'theme-changer)
;; (change-theme 'material-light 'material)

(defun get-string-from-file (filePath)
  "Return filePath's file content."
  (with-temp-buffer
    (insert-file-contents filePath)
    (buffer-string)))

(load-theme (intern (substring (get-string-from-file "/home/nicholasm/.emacs.d/curr_theme") 0 -1)))

;; font
(set-face-attribute 'default nil :font "DejaVu Sans Mono 14")
(setq line-spacing .15)

(use-package spaceline-config
  :config
  (spaceline-spacemacs-theme)
  (spaceline-helm-mode)
  (setq powerline-active1 "#923232")
  (setq powerline-active2 "#38535b")
  (setq mode-line "#394939")
  )

(highlight-indentation-mode 0)

;; pretty symbols in LaTeX
(defvar pretty-alist
  (cl-pairlis '("alpha" "beta" "gamma" "delta" "epsilon" "zeta" "eta"
                "theta" "iota" "kappa" "lambda" "mu" "nu" "xi"
                "omicron" "pi" "rho" "sigma_final" "sigma" "tau"
                "upsilon" "phi" "chi" "psi" "omega")
              (mapcar
               (lambda (x) (make-char 'greek-iso8859-7 x))
               (number-sequence 97 121))))
(add-to-list 'pretty-alist '("rangle" . ?\⟩))
(defun pretty-things ()
  (mapc
   (lambda (x)
     (let ((word (car x))
           (char (cdr x)))
       (font-lock-add-keywords
        nil
        `((,(concat "\\(^\\|[^a-zA-Z0-9]\\)\\(" word "\\)[a-zA-Z]")
            (0 (progn
                 (decompose-region (match-beginning 2) (match-end 2))
                 nil)))))
       (font-lock-add-keywords
        nil
        `((,(concat "\\(^\\|[^a-zA-Z0-9]\\)\\(" word "\\)[^a-zA-Z]")
            (0 (progn
                 (compose-region (1- (match-beginning 2)) (match-end 2)
                  ,char)
                 nil)))))))
   pretty-alist))
(add-hook 'LaTeX-mode-hook 'pretty-things)

;; more pretty symbols
(add-hook 'prog-mode-hook
	  (lambda ()
	    (push '("<=" . ?≤) prettify-symbols-alist)
	    (push '(">=" . ?≥) prettify-symbols-alist)
	    (push '("!=" . ?≠) prettify-symbols-alist)
	    (push '("neq" . ?≠) prettify-symbols-alist)
	    (push '("\infty" . ?∞) prettify-symbols-alist)
	    (push '("<-" . ?←) prettify-symbols-alist)
	    (push '("->" . ?→) prettify-symbols-alist)
	    (push '("<==" . ?⇐) prettify-symbols-alist)
	    (push '("==>" . ?⇒) prettify-symbols-alist)
	    ))
	    
(global-prettify-symbols-mode +1)

(define-globalized-minor-mode my-global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))

(my-global-rainbow-mode 1)

(smooth-scrolling-mode)

;; prompts
(fset 'yes-or-no-p 'y-or-n-p)
(setq confirm-nonexistent-file-or-buffer nil)
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(setq kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
	kill-buffer-query-functions))


;; tooltips
(tooltip-mode -1)

(use-package typo
  :init
  (typo-global-mode 1)
  (add-hook 'text-mode-hook 'typo-mode))

(use-package pretty-mode
  :init
  (global-pretty-mode t))

;; (use-package focus
;;   :init
;;   (add-hook 'prog-mode-hook 'focus-mode)
;;   :bind ("C-c c f" . focus-mode)
;;   )

(add-hook 'prog-mode-hook 'linum-mode)

;; rainbow-delimiters config
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
