(ns word-count)

(use 'clojure.string)

(defn word-count [sentence]
  (let [normalized (lower-case sentence)]
    (frequencies
      (split
        (replace normalized #"[^a-zA-Z0-9\s]" "") #"\s+"))))
