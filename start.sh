#!/bin/bash
if [ ! -d $PWD/var/lib/influxdb ]; then
   mkdir -p $PWD/var/lib/influxdb
   chmod 777 $PWD/var/lib/influxdb
else
   echo "[`date`] directory $PWD/var/lib/influxdb already exists."
fi
if [ ! -d $PWD/var/lib/grafana ]; then
   mkdir -p $PWD/var/lib/grafana
   chmod 777 $PWD/var/lib/grafana
else
   echo "[`date`] directory $PWD/var/lib/grafana already exists."
fi
echo "[`date`] Starting containers.."
docker-compose up
