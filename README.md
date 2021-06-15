# py 勉強用環境構築

## General

- cgi の扱いだけさらっと実装して、軽量な環境構築手順を展開

## Usage

1. Dockerfile

```
FROM python:alpine
WORKDIR /app
COPY . /app
EXPOSE 8888
CMD ["python","-m","http.server","8888","--cgi"]
```

2. exec

```
$ docker build -t test-py .
$ docker run -d --rm -p 8888:8888 -v ${PWD}:/app --name test-py-cgi test-py
```

3. serve

- localhost:8888

## Reference

- [Dockerfile を極めて、Docker マスターになろう！](https://qiita.com/soushiy/items/0945bcbc7ecce4822985)
- [Docker で Python を実行するコンテナを作る](https://gray-code.com/blog/python-on-docker/)
- [Python で HTML フォームのデータを受信し表示する](https://qiita.com/maec_lamar/items/42162640cd8819fab663)
