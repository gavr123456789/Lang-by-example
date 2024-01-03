(ns http-server.core
  (:gen-class)
  (:require [org.httpkit.server :as hk-server]
            [compojure.core :refer :all]
            [compojure.route :as route]
            [clojure.data.json :as json]))

(defn req-json [body]
  {:status  200
   :headers {"Content-Type" "application/json"}
   :body    body})

(defn handle-post [request]
  (let [json-body (:body request)]
    (println "Received POST request with name:" (-> json-body slurp json/read-json :name))
    "hello"))

(defroutes all-routes
  (GET "/" [] "<h1>Hello World</h1>")
  (GET "/json" [] (req-json (json/write-str {:a 1 :b 2})))
  (POST "/post" request (handle-post request))
  (route/not-found "<h1>Page not found</h1>"))

(def my-server (hk-server/run-server all-routes {:port 8080})) ; Start server

(defn -main [& args]
  (println "server started"))

