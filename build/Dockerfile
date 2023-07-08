# goバージョン
FROM golang:1.19.1-alpine
# アップデートとgitのインストール
RUN apk update && apk add git
# boiler-plateディレクトリの作成
RUN mkdir -p /go/src/github.com/boiler-plate
# ワーキングディレクトリの設定
WORKDIR /go/src/github.com/boiler-plate
# コンテナ起動時にgoを起動
CMD ["go", "run", "main.go"]
