# Code Execution
1. Connect to server
2. Set properties in spark conf file:
Example Command:
spark.driver.extraJavaOptions -Xms1g -XX:+UseG1GC
-XX:+PrintGCDetails -XX:-UseGCOverheadLimit
-Xloggc:/home/student1/logs_sem8_v1/visualvm/BD/g1/jmapg1kmeans.log
-Dcom.sun.management.jmxremote
-Dcom.sun.management.jmxremote.port=9010
-Dcom.sun.management.jmxremote.authenticate=false
-Dcom.sun.management.jmxremote.ssl=false
-Djava.rmi.server.hostname=10.10.1.202
3. Generate Data for workload:
cd /home/student1/BigDataBench_V3.1.5_Spark/SNS/Kmeans
./genData_Kmeans.sh
4. Run Script to generate logs:
nohup bash ./rungc.sh 1><file_path_to store_process logs>
2><file_path_to_store_error_logs> 1 &
5. Generate Heap dump:
jmap -dump:format=b, file= <file_name>.bin 
