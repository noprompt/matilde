{:user {:plugins  [[lein-ring "0.8.2"]
                   [lein-cljsbuild "0.3.0"]
                   [lein-clojars "0.9.1"]
                   [lein-swank "1.4.5"]
                   [lein-kibit "0.0.8"]]
        :dependencies [[javert "0.2.0-SNAPSHOT"]
                       [ritz/ritz-nrepl-middleware "0.7.0"]
                       [org.clojure/tools.namespace "0.2.4"]]
        :repl-options {:nrepl-middleware
                       [inspector.middleware/wrap-inspect
                        ritz.nrepl.middleware.javadoc/wrap-javadoc
                        ritz.nrepl.middleware.apropos/wrap-apropos]}}}
