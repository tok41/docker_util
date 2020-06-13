# base_experimental_env

- 基本のPython環境を作るためのDockerfile
  - 公開されてるものでも良いけど、練習がてら

## Base Image

```
python:3
```

## install applications
### apt
```
emacs
git
wget
nodejs
```

### pip
```
numpy
scipy
matplotlib
ipython
scikit-learn
pandas
seaborn
jupyterlab
```

## Build

```
docker build -t {image name} {path of Dockerfile}
$ docker build -t jupyterlab:test ./
```

## Run

```
docker run -d -p {host port}:{container port} jupyterlab:test2 /bin/bash -c "jupyter lab --allow-root --ip 0.0.0.0 --NotebookApp.token='{token}'"
```

