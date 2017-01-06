# Maven-with-Proxy
Docker Image that support Maven's proxy configuration over environment variables.

This image extends `maven:3.3.9-jdk-8-alpine` to allow configuration of proxy for maven. Following environment variables are supported:

Variable Name| Description | Example
--- | --- | ---
PROXY_HOST | Hostname without the protocol | localproxy
PROXY_PORT | Port number of the proxy | 8080
PROXY_PROTOCOL | The protocol | http
PROXY_USER | Proxy Username | max
PROXY_PASS | Proxy Password | secret
NO_PROXY | List of hosts accessible outside proxy | localhost,127.0.0.1

Here is a sample command to start the image
```console
$ docker run -it -e "PROXY_HOST=localproxy" -e "PROXY_PORT=8080" alirizasaral/maven-with-proxy:latest bash
```
