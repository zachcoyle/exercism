(ns nucleotide-count)

(defn nucleotide-counts [nucleotides]
  (merge {\A 0 \T 0 \C 0 \G 0} (frequencies nucleotides)))

(defn count [nucleotide nucleotides]
  (let [result (get (nucleotide-counts nucleotides) nucleotide)]
    (assert (not= result nil))
    result))
