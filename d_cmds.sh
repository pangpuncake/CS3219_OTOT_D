echo "====== CREATING TOPIC ======";
docker exec kafka-1 kafka-topics --bootstrap-server kafka-1:9092 --create --replication-factor 2 --partitions 2 --topic test;
sleep 2;

echo "====== DESCRIBE TOPIC ======";
docker exec kafka-1 kafka-topics --bootstrap-server kafka-1:9092 --describe --topic test;
sleep 2;


# WRITE TO TOPIC
# docker exec -ti kafka-1
# kafka-console-producer --bootstrap-server kafka-1:9092 --topic test


# READ FROM TOPIC
# docker exec -ti kafka-1
# kafka-console-consumer --bootstrap-server kafka-1:9092 --topic test --from-beginning
