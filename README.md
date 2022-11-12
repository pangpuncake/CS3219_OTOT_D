# OTOT Task D

## Setup Cluster

`docker compose up`

## Create and describe topic

`./d_cmds.sh`

Or you can specify it manually.

Create topic:
`docker exec kafka-1 kafka-topics --bootstrap-server kafka-1:9092 --create --replication-factor 2 --partitions 2 --topic test`

Describe topic:
`docker exec kafka-1 kafka-topics --bootstrap-server kafka-1:9092 --describe --topic test`

## Write to topic

`docker exec -ti kafka-1 /bin/kafka-console-producer --bootstrap-server kafka-1:9092 --topic test`

## Read from topic

`docker exec -ti kafka-1 /bin/kafka-console-consumer --bootstrap-server kafka-1:9092 --topic test --from-beginning`
