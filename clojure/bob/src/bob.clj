(ns bob)

(use 'clojure.string)

(defn has-alpha? [s] (< 0 (count (filter (fn [x] (Character/isLetter x)) s))))

(defn response-for [sentence]
  (cond
    (blank? sentence) "Fine. Be that way!"
    (and (has-alpha? sentence) (= sentence (upper-case sentence))) "Whoa, chill out!"
    (ends-with? sentence "?") "Sure."
    :else "Whatever."))
