(ns nucleotide-count)

(defn count [nucleotide] (identity nucleotide))

(defn nucleotide-counts [nucleotides]
  (frequencies nucleotides))