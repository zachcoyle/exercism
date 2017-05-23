(ns rna-transcription)

(use 'clojure.string)

(defn transcribe [n]
  (case n
    \G \C
    \C \G
    \T \A
    \A \U))

(defn valid-n [n] (includes? "ATCG" n))

(defn to-rna [strand]
  (println strand)
  (if (assert (< 0 (count (filter valid-n (str strand)))))
    (apply str (map transcribe strand))))