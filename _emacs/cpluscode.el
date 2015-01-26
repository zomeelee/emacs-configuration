;;===============================
;;cpluscode.el
;;set c/c++ dev environment
;;===============================


;;set gdb-ui
(add-to-list 'load-path "~/install/gdb")
(setq gdb-many-windows t)
(load-library "multi-gud.el")
(load-library "multi-gdb-ui.el")


;;===============================
;;set cedet
(add-to-list 'load-path "~/install/cedet-1.1")
(add-to-list 'load-path "~/install/cedet-1.1/speedbar")
(add-to-list 'load-path "~/install/cedet-1.1/eieio")
(add-to-list 'load-path "~/install/cedet-1.1/semantic")
(add-to-list 'load-path "~/install/cedet-1.1/common")
(add-to-list 'load-path "~/install/cedet-1.1/contrib")
(require 'cedet)
(require 'semantic-ia)

;;enable ede (project management) features
(global-ede-mode 1)

;;enable prototype help and smart completion
(semantic-load-enable-code-helpers)
;;enable template insertion menu
(global-srecode-minor-mode 1)

(require 'semantic-tag-folding nil 'noerror)
(global-semantic-tag-folding-mode 1)


;;fold/unfold all buffers's code
(define-key semantic-tag-folding-mode-map (kbd "C--") 'semantic-tag-folding-fold-all)
(define-key semantic-tag-folding-mode-map (kbd "C-=") 'semantic-tag-folding-show-all)
;;fold/unfold single buffer's code
(define-key semantic-tag-folding-mode-map (kbd "C-_") 'semantic-tag-folding-fold-block)
(define-key semantic-tag-folding-mode-map (kbd "C-+") 'semantic-tag-folding-show-block)


;;===============================
;;set ecb
(add-to-list 'load-path "~/install/ecb-2.40")

(require 'ecb-autoloads)
(setq ecb-tip-of-the-day nil)
