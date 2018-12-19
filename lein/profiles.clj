{:user

 {#_:signing
  #_{:gpg-key "cjholdbrooks@gmail.com"}
  :dependencies [[pjstadig/humane-test-output "0.8.1"]]

  :injections [(require 'pjstadig.humane-test-output)
               (pjstadig.humane-test-output/activate!)]

  :plugins
  [[lein-clojars "0.9.1"]
   [lein-describe "0.2.0"]
   [lein-try "0.4.1"]
   [com.jakemccrary/lein-test-refresh "0.11.0"]]}

 :repl
 {:dependencies
  [[org.clojure/tools.namespace "0.2.4"]]
  :plugins
  [[cider/cider-nrepl "0.19.0-SNAPSHOT"]]}}
