#!/bin/bash
${HADOOP_HOME}/bin/hadoop fs -rmr /spark-pagerank-result
#echo "Internation I:"
#read I
I=25
/home/student1/spark-2.3.2-bin-hadoop2.7/bin/spark-submit --class cn.ac.ict.bigdatabench.PageRank $JAR_FILE hdfs://127.0.0.1:9000/data-PageRank/Google_genGraph_$I.txt $I hdfs://127.0.0.1:9000/spark-pagerank-result
