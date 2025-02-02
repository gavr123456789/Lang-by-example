(ns simple.core
  (:gen-class))

(defn haveBirthday [person]
  (update person :age inc))

(defn control-flow []
  ;; 8 loop
  (doseq [i (range 1 5)]
    (prn i))
  ;; 9 if
  (if (even? 5)
    (prn "sas")
    (prn "sus")))


(defn collections []
  (let [list [1 2 3 4]
        updated-list (conj list 5)

        map {:name "Alice" :age 30}
        updated-map (assoc map :city "New York")]
    (prn updated-list)
    (prn updated-map))
  (let))

(defn switch [user]
  (cond
    (= (:kind user) :User) (prn (:name user))
    (= (:kind user) :Guest) (prn "Hello Guest")
    :else (prn "Unknown kind")))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  ;; 3 hello world
  (prn "Hello, World!")
  ;; 4 creating object
  (def person {:name "John" :age 30})
  (prn person)
  ;; 5 call function
  (def person (haveBirthday person))
  (prn person)

  (control-flow)
  (switch {:name "Sas" :kind :User})
  (switch {:kind :Guest})
  (collections))



