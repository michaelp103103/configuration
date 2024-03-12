(require 'package)
;; (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ; see remark below
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (proof-general))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; turn on electric pair mode
(electric-pair-mode 1)

;; enable line numbers
(global-linum-mode)

;; set keybinding for ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; set up half-page scrolling
(require 'viper)
(global-set-key (kbd "C-v") 'viper-scroll-up)
(global-set-key (kbd "M-v") 'viper-scroll-down)

;; buffer will be refreshed whenever the file changes on disk
(global-auto-revert-mode t)

;;; Proof General QoL (Disables startup screen and ensures the Coq buffers are on the "right")
(setq proof-splash-enable nil)
(setq proof-three-window-mode-policy 'hybrid)
