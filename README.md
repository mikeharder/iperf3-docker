# iperf3-docker

```
docker build -t iperf3 .
docker run -i --rm -p 5201:5201 --name iperf3 iperf3
docker kill iperf3
```
