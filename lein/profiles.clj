{:user {:plugins  [[lein-clojars "0.9.1"]
                   [lein-kibit "0.0.8"]
                   [lein-environ "0.4.0"]
                   [lein-describe "0.2.0"]
                   [lein-try "0.4.1"]]
        :dependencies [[javert "0.2.0-SNAPSHOT"]
                       [clj-stacktrace "0.2.7"]
                       [ritz/ritz-nrepl-middleware "0.7.0"]
                       [org.clojure/tools.namespace "0.2.4"]]
        :injections [(let [orig (ns-resolve (doto 'clojure.stacktrace require)
                                            'print-cause-trace)
                           new (ns-resolve (doto 'clj-stacktrace.repl require)
                                           'pst)]
                       (alter-var-root orig (constantly (deref new))))]
        :repl-options {:nrepl-middleware
                       [inspector.middleware/wrap-inspect
                        ritz.nrepl.middleware.javadoc/wrap-javadoc
                        ritz.nrepl.middleware.apropos/wrap-apropos]}}}
