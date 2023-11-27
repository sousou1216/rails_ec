# README

- ECサイトです。
- 管理者はBasic認証が必要です。

## 前提

- dockerが必要です。

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
