(global-font-lock-mode 1)
(setq truncate-partial-width-windows nil)

(setq inhibit-startup-message t)

(setq-default indent-tabs-mode nil)
(column-number-mode 1)
(tool-bar-mode 0)

;(set-default-font "9x15")

(add-to-list 'load-path "~/.emacs.d/")
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(autoload 'js2-mode "js2-mode" nil t)
(require 'yaml-mode)

(load "ruby-mode")
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rabl$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rjs$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.builder$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.html\\.erb$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

(add-hook 'js2-mode-hook '(lambda ()
                            (setq indent-tabs-mode t)
                            (setq tab-width 4)))

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(setq html-indent-level 2)
(setq scss-compile-at-save nil)

;(setq emerge-diff-options "--ignore-all-space")

(require 'git)
(add-to-list 'vc-handled-backends 'GIT)
(autoload 'git-status "git" "Entry point into git-status mode." t)
(autoload 'git-blame-mode "git-blame"
  "Minor mode for incremental blame for Git." t)

;keybindindings for git
(global-set-key "\C-xgs" 'git-status)

(require 'rdebug)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ns-alternate-modifier (quote super))
 '(ns-command-modifier (quote meta)))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#111111" :foreground "floralwhite" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "apple" :family "Monaco")))))
