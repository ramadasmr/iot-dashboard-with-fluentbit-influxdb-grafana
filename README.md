# iot-dashboard-with-fluentbit-influxdb-grafana
IOT Dashboard powered by fluentbit , influxdb and Grafana.

###Quick Start Instructions

Install pre-requisites docker , docker-compose , mosquitto-clients ( for sending MQTT msgs).

Clone the repository and execute start script, in the background this will start docker containers.

```
$ git clone https://github.com/ramadasmr/iot-dashboard-with-fluentbit-influxdb-grafana.git
$ cd iot-dashboard-with-fluentbit-influxdb-grafana/
$ chmod a+x start.sh
$ ./start.sh
```

MQTT Server is running on 8884 port. Below command will send a mqtt test msg

```
mosquitto_pub -p8884 -m '{"key1": 123, "key2": 456}' -t test/topic
```

Access Grafana using [http://localhost:3000]:http://localhost:3000
