(ns anagram)

(use 'clojure.string)

(defn is-anagram [raw-word raw-candidate]
  (let [word (lower-case raw-word) candidate (lower-case raw-candidate)]
    (and
      (= (sort word) (sort candidate))
      (not= word candidate))))

(defn anagrams-for [word candidates]
    (filter (partial is-anagram word) candidates))
