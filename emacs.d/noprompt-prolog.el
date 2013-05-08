(add-to-list 'auto-mode-alist '("\\.pl$" . prolog-mode))

(setq prolog-system 'swi)

(setq prolog-program-name
      '(((getenv "EPROLOG")
         (eval
          (getenv "EPROLOG")))
        (eclipse "eclipse")
        (mercury nil)
        (sicstus "sicstus")
        (swi "/usr/local/bin/swipl")
        (gnu "gprolog")
        (t "gprolog")))

(provide 'noprompt-prolog)
