# Overview

This solution demonstrates the use of a batch script `main.py` that is run as a container that calls a flask app and another call to an external service where both are intercepted by mitmproxy.

`main.py` do not need to change the behavior by specifying proxy servers.

In `docker-compose.yml`, **mitmdump** is run as `--mode regular` which means a client needs to explicitly specify the mitmdump as the proxy server.   To achieve that, the python `workflow` container uses the environment variables by injecting the *http_proxy* and *https_proxy* to the mitmproxy server accordingly.  

Also, by volume mapping and the `-w` option, the log file will be written and accessible from the host file system.

### Important
It is noted that the mitm proxy server will take a few seconds before it is ready to accept request.  Hence, the `main.py` is added with a sleep of 10 seconds as allowance.  TODO : This can be replaced with a poll to mitmproxy to check for readiness.

# build
```
docker build . -t tommyli123/workflow1
docker build . -f Dockerfile.web -t tommyli123/webapp
```

# run
```
docker-compose up

# tear down when done
docker-compose down
```
