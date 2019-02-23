# crud app by hylang/Flask

## run

* init docker (mysql)
```
$ cd db
$ docker build -t crud-by-hy-db .
```

* run docker
```
$ docker run -p 3306:3306 crud-by-hy-db
```

* invoke app
```
$ hy app.hy
```
