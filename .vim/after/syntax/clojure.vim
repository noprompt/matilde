" Credit goes to Filip Wolanski for the original idea of using the lambda
" character for concealing fn, defn, defn-, and letfn. I've extended the idea
" to for, and, or, and not and reworked some of the highlight links to suit my
" needs.
"
" See: https://github.com/guns/vim-clojure-static/pull/16
" See: https://github.com/fwolanski

if !exists('g:clojure_lambda_conceal') || !has('conceal') || &enc != 'utf-8'
  finish
endif

syntax keyword clojureConcealLambda0 fn            conceal cchar=λ
syntax keyword clojureConcealLambda1 defn defn-    conceal cchar=λ
syntax keyword clojureConcealLambda2 letfn         conceal cchar=λ
syntax match   clojureConcealLambda3 /\v#\(/me=e-1 conceal cchar=λ
syntax keyword clojureConcealFor for conceal cchar=∀
syntax keyword clojureConcealAnd and conceal cchar=∧
syntax keyword clojureConcealOr  or  conceal cchar=∨
syntax keyword clojureConcealNot not conceal cchar=¬

highlight  link clojureConcealLambda0 clojureSpecial
highlight  link clojureConcealLambda1 clojureDefine
highlight  link clojureConcealLambda2 clojureMacro
highlight  link clojureConcealLambda3 clojureDispatch
highlight  link clojureConcealFor     clojureRepeat
highlight  link clojureConcealAnd     clojureMacro
highlight  link clojureConcealOr      clojureMacro
highlight  link clojureConcealNot     clojureFunc

setlocal conceallevel=2
