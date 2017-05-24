(ns rna-transcription)

(use 'clojure.string)

(defn transcribe [nucleotide]
  (get {\G \C, \C \G, \T \A, \A \U} nucleotide))

(defn no-nils [coll]
  (every? #(not (nil? %1)) coll))

(defn to-rna [strand]
  (let [transcribed (vec (map transcribe strand))]
    (assert (no-nils transcribed))
    (join transcribed)))
