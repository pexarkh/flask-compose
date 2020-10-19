# most minimal flask app to debug in pycharm / intellij ultimate

starting points:

- https://blog.jetbrains.com/pycharm/2017/03/docker-compose-getting-flask-up-and-running
- https://www.jetbrains.com/help/pycharm/using-docker-compose-as-a-remote-interpreter.html
- https://www.jetbrains.com/help/pycharm/remote-debugging-with-product.html#remote-debug-config

## for python 2

replace `FROM python:3` with `FROM python:2` in `Dockerfile`

## command line

```
export FLASK_APP=flask-compose.py
flask run --host=0.0.0.0
```

## docker

```
docker build -t flask-compose:latest .
docker run -it -p 5000:5000 flask-compose
```
## docker compose

```docker-compose up```

## idea / pycharm

general setup: https://www.jetbrains.com/help/pycharm/using-docker-compose-as-a-remote-interpreter.html

Flask Server configuration: `pycharm-run-config/Flask flask-compose.py.run.xml`
