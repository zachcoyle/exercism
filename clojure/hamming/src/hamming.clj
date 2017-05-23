(ns hamming)

(defn distance [strand1 strand2]
  (if (not= (count strand1) (count strand2))
    nil
    (count (filter #(not= (first %1) (second %1)) (map vector strand1 strand2)))))