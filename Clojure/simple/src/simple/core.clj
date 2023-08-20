(ns simple.core
  (:gen-class))

(defn haveBirthday [person]
  (update person :age inc))

(defn control-flow []
  ;; 8 loop
  (doseq [i (range 1 5)]
    (println i))
  ;; 9 if
  (if (even? 5)
    (println "sas")
    (println "sus")))


(defn collections []
  (let [list [1 2 3 4]
        updated-list (conj list 5)

        map {:name "Alice" :age 30}
        updated-map (assoc map :city "New York")]
    (println updated-list)
    (println updated-map)))

(defn switch [user]
  (cond
    (= (:kind user) :User) (println (:name user))
    (= (:kind user) :Guest) (println "Hello Guest")
    :else (println "Unknown kind")))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  ;; 3 hello world
  (println "Hello, World!")
  ;; 4 creating object
  (def person {:name "John" :age 30})
  (println person)
  ;; 5 call function
  (def person (haveBirthday person))
  (println person)


  (control-flow)
  (switch {:name "Sas" :kind :User})
  (switch {:kind :Guest})
  (collections)
  )



