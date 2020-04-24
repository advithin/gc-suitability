#!/usr/bin/env bash
#rm -rf /home/student1/logs_sem8_v1/BD/g1
#mkdir /home/student1/logs_sem8_v1/BD/g1
#mkdir /home/user/logs_sem7_v3/BD/cms/wordcount
#mkdir /home/user/logs_sem7_v4_30GB/BD/parallel/wordcount
#mkdir /home/student1/logs_sem8_v1/BD/g1/pr
#mkdir /home/user/logs_sem7_v4_30GB/BD/parallel/pr
cd /home/student1/BigDataBench_V3.1.5_Spark/MicroBenchmarks
#for((i=1;i<=$1;i++))
#do
#        echo "running for grep"
#	time ./run_MicroBenchmarks.sh 2 1>/home/student1/logs_sem8_v1/visualvm/BD/cms/grep/testhd_12$i.log;
#	sleep 5;
#done

#for((i=1;i<=$1;i++))
#do
#       echo "running for wordcount"
#	time ./run_MicroBenchmarks.sh 3 1>/home/student1/logs_sem8_v1/visualvm/BD/parallel/wc/testhd_12$i.log;
#	sleep 5;
#done

#for((i=1;i<=$1;i++))
#do
#       echo "running for sort"
#	time ./run_MicroBenchmarks.sh 1 1>/home/student1/logs_sem8_v1/visualvm/BD/cms/sort/testcmsjmap_12$i.log;
#	sleep 5;
#done

#cd ../SearchEngine/Pagerank
#for(( i=1; i<=$1; i++))
#do
#      echo "running for pagerank"
#	time ./run_Pagerank.sh 1>/home/student1/logs_sem8_v1/visualvm/BD/parallel/pr/testhd$i.log;
#	sleep 5;
#done

#cd ../SNS/Connected_Components

#for((i=1;i<=$1;i++))
#do
#	echo "running for concom"
#	time ./run_connectComponents.sh 1>/home/student1/logs_sem8_v1/visualvm/BD/parallel/concom/testhd$i.log;
#	sleep 5;
#done

cd ../SNS/Kmeans

for((i=1;i<=$1;i++))
do
        echo "running for kmeans"
        time ./run_Kmeans.sh 1>/home/student1/logs_sem8_v1/visualvm/BD/g1/kmeans/testhd$i.log;
        sleep 5;
done

