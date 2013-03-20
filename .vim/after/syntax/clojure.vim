" Credit goes to Filip Wolanski for the original idea of using the lambda
" character for concealing fn, defn, defn-, and letfn.
"
" See: https://github.com/guns/vim-clojure-static/pull/16
" See: https://github.com/fwolanski

if !exists('g:clojure_lambda_conceal') || !has('conceal') || &enc != 'utf-8'
  finish
endif

syntax keyword clojureConcealLambda0 fn            conceal cchar=λ
syntax keyword clojureConcealLambda1 defn defn-    conceal cchar=λ
syntax match   clojureConcealLambda2 /\v#\(/me=e-1 conceal cchar=λ

highlight  link clojureConcealLambda0 clojureSpecial
highlight  link clojureConcealLambda1 clojureDefine
highlight  link clojureConcealLambda2 clojureDispatch

setlocal conceallevel=2
