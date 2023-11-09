(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(add-to-list 'default-frame-alist
	     '(font . "Comic Code-18"))

(setq inhibit-startup-message t)

(scroll-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)

;; Set up the visible bell
(setq visible-bell t)

;; Line numbers
(column-number-mode)
(global-display-line-numbers-mode t)

;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
		term-mode-hook
		eshell-mode-hook
		vterm-mode-hook
		pdf-view-mode-hook
		dictionary-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Prot's modus vivendi theme
(require-theme 'modus-themes)

;; All customizations here
(setq modus-themes-bold-constructs t
      modus-themes-italic-constructs t)

;; Load the theme of choice (built-in themes are always "safe" so they
;; do not need the `no-require' argument of `load-theme').
(load-theme 'modus-vivendi)

(electric-pair-mode t)

(add-hook 'pdf-view-mode-hook 'pdf-view-themed-minor-mode)
