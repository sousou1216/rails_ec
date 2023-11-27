## 仕様

- 簡易ECサイト
- 管理者はBasic認証
- 商品の登録、編集、削除は管理者のみが可能
- 購入明細とプロモーションコードの管理は管理者のみが可能
- 画像の保存はActive Storage(S3)を使用
- 購入メールサーバーは開発環境はMailCatcher、本番環境はGmailを使用

## 操作手順

- 商品をカートに追加し適当な請求情報を入力して購入する
- 入力したメールアドレスに購入明細が届く
- プロモーションコードを入力すると割引される

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
- 商品の追加
```
docker compose run --rm web bundle exec rails db:seed
```
- プロモーションコードの追加
```
docker compose run --rm web bundle exec rake promotion_code:generate
```
- 管理者設定
```
.envファイルに以下追記
BASIC_AUTH_USER=<任意のユーザー名>
BASIC_AUTH_PASSWORD=<任意のパスワード>
```

## rubocop
```
docker compose run --rm web bundle exec rubocop -A
```

## htmlbeautifier
```
docker compose run --rm web bin/htmlbeautifier
```
