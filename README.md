# README

- 簡易ECサイト
- 管理者はBasic認証
- 商品の登録、編集、削除は管理者のみが可能
- 購入明細とプロモーションコードの管理は管理者のみが可能
- 画像の保存はActive Storage(S3)を使用
- 購入メールサーバーはGmailを使用

## 前提

- dockerが必要

## setup

```
docker compose build
```

```
docker compose run --rm web bin/setup
```


```
docker compose run --rm web yarn install
```

## run

```
docker compose up
```

http://localhost:3000

## 備考
## rubocop
```
docker compose run --rm web bundle exec rubocop -A
```

## htmlbeautifier
```
docker compose run --rm web bin/htmlbeautifier
```
