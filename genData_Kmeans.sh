#!/bin/bash
##
# Use the WIKI dataset, trains and tests a cluster.
# Need HADOOP and MAHOUT
# To prepare and generate data:
# ./genData_Kmeans.sh
# To run:
# ./run_Kmeans.sh
##

echo "Preparing Kmeans data dir"
rm -fr data-Kmeans

echo "print data size GB :"
#read GB
#a=${GB}
a=30
let L=a*115000
./Generating Image_data/color100.txt $L > data-Kmeans

/home/student1/hadoop-2.7.3/bin/hadoop fs -rmr /Spark-Kmeans
/home/student1/hadoop-2.7.3/bin/hadoop fs -mkdir /Spark-Kmeans
/home/student1/hadoop-2.7.3/bin/hadoop fs -copyFromLocal data-Kmeans /Spark-Kmeans
echo "Finished copyFromLocal"


