(import [flask [Flask]])
(import sys)

(setv sys.executable "hy")

(def app (Flask __name__))
(setv app.debug True)

(with-decorator (app.route "/")
    (defn get-index []
        (str "Hello World!")))

(app.run)
