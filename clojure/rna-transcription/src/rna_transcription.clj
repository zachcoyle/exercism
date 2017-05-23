(ns rna-transcription)

(use 'clojure.string)

(defn only-contains [collection valid-values]
  (filter #(contains? valid-values %1) collection))

(defn to-rna [strand]
  (if (assert (only-contains strand)))