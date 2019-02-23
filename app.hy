(import [flask [Flask render_template request]])
(import [mysql.connector [connection]])
(import sys)
(import os)

(setv sys.executable "hy")

(def app
  (Flask __name__
         :static_folder (+ (os.getcwd) "/public")
         :template_folder (+ (os.getcwd) "/templates")))

(setv app.debug True)

(setv conn
      (connection.MySQLConnection
        :user "root"
        :password "passwd"
        :host "127.0.0.1"
        :database "site"))

(setv list-up-query
      "select comment_content, user_name, created_at from comments order by created_at desc")

(defn list-up-comments []
  (let [[cursor (conn.cursor)]
        [_ (cursor.execute list-up-query)]
        [result (cursor.fetchall)]
        [_ (cursor.close)]]
    result))

(with-decorator (app.route "/")
  (defn get-index []
    (let [[comments (list-up-comments)]]
      (print comments)
      (render_template "./index.html" :result comments))))

(with-decorator (app.route "/comment" :methods ["POST"])
  (defn post-comment []
    (let [method])
    (render_template "./index.html")))

(app.run)
