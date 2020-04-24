#!/bin/bash
echo "number of centers K:"
#read K
echo "max_iterations m:"
#read m
K=3
m=3
/home/student1/spark-2.3.2-bin-hadoop2.7/bin/spark-submit --class cn.ac.ict.bigdatabench.KMeans $JAR_FILE hdfs://127.0.0.1:9000/Spark-Kmeans/data-Kmeans ${K} ${m}
