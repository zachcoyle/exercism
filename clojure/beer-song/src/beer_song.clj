(ns beer-song)

(use 'clojure.string)

(defn verse-beginning [num-bottles next-num suffix]
  (case num-bottles
    0 "No more bottles of beer on the wall, no more bottles of beer.\n"
    (str num-bottles " bottle" suffix " of beer on the wall, "
    num-bottles " bottle" suffix " of beer.\n")))

(defn verse-ending [num-bottles next-num next-suffix]
  (case num-bottles
    0 "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    (str "Take " (if (= num-bottles 1) "it" "one") " down and pass it around, "
      (if (> next-num 0) next-num "no more") " bottle" next-suffix " of beer on the wall.\n")))

(defn verse [num-bottles]
  (let [suffix (if (= 1 num-bottles) "" "s")
        next-num (- num-bottles 1)
        next-suffix (if (= 1 next-num) "" "s")]
  (str (verse-beginning num-bottles next-num suffix)
    (verse-ending num-bottles next-num next-suffix))))

(defn sing
  ([start] (sing start 0))
  ([start end]
    (join "\n" (map verse (range start (- end 1) -1)))))