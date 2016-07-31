;; ---------------------------------------------------------------------
;; Rust


;; Packages ------------------------------------------------------------

(package-require 'toml-mode)
(package-require 'rust-mode)
(package-require 'racer)
(package-require 'cargo)


;; Default configuration -----------------------------------------------

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(add-hook 'rust-mode-hook 'eldoc-mode)
(add-hook 'rust-mode-hook 'company-mode)
(add-hook 'rust-mode-hook 'autopair-mode)
(add-hook 'rust-mode-hook 'racer-mode)
(add-hook 'rust-mode-hook 'cargo-minor-mode)


;; Racer configuration -------------------------------------------------

(setq racer-cmd "~/.cargo/bin/racer")
(setq racer-rust-src-path "~/git/rust-lang/rust/src")


(provide 'init-rust)
