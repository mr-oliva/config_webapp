# ReadMe
---
## some-webのほうで最初にやること

```
$ a2enmod rewrite
```
もしrestartするように言われたら

```
$ service apache2 restart
```

```
$ ping $HOSTNAME
```
これを試してsome-webコンテナのip addressをメモっとく.

## some-dbのほうで最初にやること
```
$ mysql -u root -p
```
gitで落としてきたままだとパスワードはcurry

```
mysql > GRANT ALL ON *.* to root@'さっきメモったip address' IDENTIFIED BY 'mysqlのパスワード';
mysql > FLUSH PRIVILEGES;
```

```
$ env
```
ホスト名を確認しておく

## some-webに戻る
cakephpフォルダ内のdatabase.phpのホストを変更

ローカルのブラウザで localhostにアクセス！！