(ns grade-school)

(defn add [db student grade]
  (merge db [grade (concat (get db grade []) [student])]))

(defn grade [db grade-num] (get db grade-num []))

(defn sorted-entry [entry]
  (let [grade (first entry) students (second entry)]
    [grade (sort students)]))

(defn sorted [db] (into (sorted-map) (map sorted-entry db)))
