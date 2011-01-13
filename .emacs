(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(c-indent-level 4)
 '(cperl-indent-level 4)
 '(default-input-method "russian-computer")
 '(file-precious-flag t)
 '(grep-find-command "find . -type f -print0 | grep -Ev '.svn|svnroot' | xargs -0 -e grep -nH -e ")
 '(grep-find-template "find . <X> -type f <F> -print0 | grep -Ev '(.svn|svnroot)' | xargs -0 -e grep <C> -nH -e <R>")
 '(indent-tabs-mode nil)
 '(make-backup-files nil)
 '(safe-local-variable-values (quote ((encoding . utf-8))))
 '(show-paren-mode t)
 '(show-trailing-whitespace nil)
 '(speedbar-sort-tags t)
 '(speedbar-tag-hierarchy-method nil)
 '(standard-indent 4)
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120 124 128 132 136 140 144 148 152 156 160 164 168 172 176 180 184 188 192 196)))
 '(tab-width 4)
 '(vc-annotate-background "nil")
 '(version-control (quote never))
 '(write-region-inhibit-fsync t t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background nil :foreground nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))
 '(diff-added ((t (:inherit diff-changed :foreground "blue"))))
 '(diff-changed ((((type tty pc) (class color) (background dark)) (:foreground "green" :slant italic :weight bold))))
 '(diff-file-header ((((class color) (background dark)) (:foreground "magenta" :weight bold))))
 '(diff-header ((((class color) (background dark)) (:foreground "magenta" :weight bold))))
 '(diff-index ((t (:inherit diff-file-header :foreground "magenta"))))
 '(diff-refine-change ((((class color) (background dark)) (:background "*"))))
 '(diff-removed ((t (:inherit diff-changed :foreground "red"))))
 '(ediff-current-diff-A ((t nil)))
 '(ediff-current-diff-B ((((class color)) nil)))
 '(ediff-current-diff-C ((((class color)) (:foreground "cyan3"))))
 '(ediff-fine-diff-B ((((class color)) (:background "cyan" :foreground "white" :weight bold))))
 '(ediff-fine-diff-C ((((class color)) (:background "gray" :foreground "red"))))
 '(font-lock-comment-face ((((class color) (min-colors 8) (background dark)) (:foreground "red1"))))
 '(smerge-markers ((t (:background "gray" :foreground "red"))))
 '(smerge-mine ((((background dark)) nil)))
 '(smerge-other ((((background dark)) nil)))
 '(smerge-refined-change ((t (:background "cyan" :foreground "yellow" :weight bold)))))

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(setq split-width-threshold 1000)

;(set-keyboard-coding-system 'utf-8)
;(set-terminal-coding-system 'utf-8)
;(prefer-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")   

(global-set-key [f11] 'point-stack-push)
(global-set-key [f12] 'point-stack-pop)
(defvar point-stack nil)
(defun point-stack-push ()
  "Push current location and buffer info onto stack."
  (interactive)
  (message "Location marked.")
  (setq point-stack (cons (list (current-buffer) (point)) point-stack)))
(defun point-stack-pop ()
  "Pop a location off the stack and move to buffer"
  (interactive)
  (if (null point-stack)
      (message "Stack is empty.")
    (switch-to-buffer (caar point-stack))
    (goto-char (cadar point-stack))
    (setq point-stack (cdr point-stack))))

;;(defun my-diff-file-next ()
;;  (interactive)
;;  (diff-file-next)
;;  (recenter)
;;)
;;(define-key diff-mode-map (kbd "C-}") 'my-diff-file-next)

(global-set-key [f1] 'man)
(global-set-key [?\C-\M-\t] 'complete-symbol)
(menu-bar-mode 0)

(require 'iswitchb)
(iswitchb-mode 1)

;; (add-to-list 'iswitchb-buffer-ignore "^*")
;; (add-to-list 'iswitchb-buffer-ignore "^[tT][aA][gG][sS]$")

(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\|[tT]\\)\\'" . perl-mode))

(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)

(setq-default indent-tabs-mode nil)

(setq w32-pass-lwindow-to-system nil)
(setq w32-lwindow-modifier 'control)

(setq html-face-tag-alist nil)
(setq html-tag-face-alist nil)

;(setq load-path
;      (append (list nil "~/.emacs.d")
;              load-path))

;;(setq tramp-default-method "plink")

(setq inhibit-splash-screen t)

