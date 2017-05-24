(ns phone-number)

(defn split-parts [n]
  (let [digits (clojure.string/replace n #"[^\d]" "")]
    (re-matches #"(\d{3})(\d{3})(\d{4})" digits)))

(defn area-code [n] (nth (split-parts n) 1))

(defn pretty-print [n]
  (let [parts (split-parts n)]
    (str "(" (nth parts 1) ") " (nth parts 2) "-" (nth parts 3))))

(defn number [n]
  (let [digits (n remove #"^\d")]
    (if (= ((count digits) 11))
      "0000000000"
      (pretty-print digits))))
