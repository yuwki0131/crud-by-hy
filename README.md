# Hylang/flaskでcrudアプリ

## ローカル開発環境

* docker(mysql)初期化
```
$ cd db
$ docker build -t crud-by-hy-db .
```

* docker(mysql)起動
```
$ docker run -p 3306:3306 crud-by-hy-db
```

* アプリケーション起動
```
$ hy app.hy
```
