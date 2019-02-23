(import [flask [Flask render_template request]])
(import sys)
(import os)

(setv sys.executable "hy")

(def app
  (Flask __name__
         :static_folder (+ (os.getcwd) "/public")
         :template_folder (+ (os.getcwd) "/templates")))

(setv app.debug True)

(with-decorator (app.route "/")
  (defn get-index []
    (render_template "./index.html")))

(app.run)
