# reverse-proxy
![picture-reverse-proxy](https://miro.medium.com/max/1400/1*Hc5YCJO1r3h4TYdJYQiGkA.png)
A forward proxy, often called a proxy, proxy server, or web proxy, is a server that sits in front of a group of client machines. When those computers make requests to sites and services on the Internet, the proxy server intercepts those requests and then communicates with web servers on behalf of those clients, like a middleman.

## ZUUL
* Spring REST with a Zuul Proxy [link to guide](https://www.baeldung.com/spring-rest-with-zuul-proxy)
* Advance ZUUL configurations [Link to advance zuul guide](https://dzone.com/articles/dynamic-routing-through-zuul-with-rest-api-spring)
## Docs
[Support Https](https://medium.com/@iroshan.du/ssl-configure-in-zuul-in-spring-boot-micro-services-for-localhost-3b933504277f)



```
docker run \
  --name reverse-proxy \
  -d \
  --restart always  \
  -e URL=<url here> \
  -v <path on server where keystore located>:/keystore \
  -e KEY_STORE_PATH=<this is the keystore path> \
  -e KEY_STORE_PASS=<this is the keystore pass> \
  -e KEY_STORE_TYPE=<default: JKS> \
  -e PORT=8443 \
  -p 8443:8443 \
  itayess/reverse-proxy
```