# 基本環境のDockerfile

- 基本となる環境を作るためのDockerfile

## 準備
- 必要ファイルのコピー等
```
$ bash preparation.sh
```

## Build
- 以下のコマンド
```
docker build -t {image name} {path of Dockerfile}
$ docker build -t tok-base-emacs ./
```

## ToDo
### Emacs
- emacsのライブラリをコピーしているがバージョンの違いやコンパイル環境が違うのでコピーしてきても使えない
  - ADDコマンドを削除して手でインストールするように変更する(ライブラリをすぐに使えるようにするのは諦める)

### jupyter
- nbextensionの有効化ができていない
  - 以下のコマンドを実行する
```
jupyter contrib nbextension install --user
jupyter nbextensions_configurator enable --user
```
- jupyterのconfig作成と設定
  - 作成
  ```
  jupyter notebook --generate-config
  ```
  - ipをアドホックに全てのip受け入れる
  ```
  c.NotebookApp.ip = '0.0.0.0'
  ```
  - portを48888に変更する
  ```
  c.NotebookApp.port = 48888
  ```
  - suでの実行を許可
  ```
  c.NotebookApp.allow_root = True
  ```
  - login tokenを入力しない
  ```
  c.NotebookApp.token = ''
  ```

### jupyter lab
- 拡張機能をインストールするために、node.jsの導入が必要
```
apt-get update
apt-get install nodejs
apt-get install npm
npm cache clean
npm install n -g
n stable
ln -sf /usr/local/bin/node /usr/bin/node
```
#### 欲しい拡張機能
- Table of Contents
  - https://github.com/jupyterlab/jupyterlab-toc
  ```
  jupyter labextension install @jupyterlab/toc
  ```
