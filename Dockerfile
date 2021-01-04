FROM cloudera/quickstart
# https://blog.clairvoyantsoft.com/cloduera-quickstart-vm-using-docker-on-mac-2308acd196f2
# https://docs.cloudera.com/documentation/enterprise/5-6-x/topics/quickstart_docker_container.html
EXPOSE 8888 10000 10020 11000 18080 18081 18088 19888 21000 21050 2181 25000 
EXPOSE 25010 25020 50010 50030 50060 50070 50075 50090 60000 60010 60020 60030 
EXPOSE 7180 7183 7187 8889:80 8020 8032 802:8042 8088 8983 9083
# tutorial http://localhost:8889

# preserve data on HDFS between restarts
VOLUME /var/lib/hadoop-hdfs/cache/hdfs/dfs/name
VOLUME /var/lib/hadoop-hdfs/cache/hdfs/dfs/data
COPY docker-quickstart /usr/bin/docker-quickstart
# start cloudera manager
ENTRYPOINT ["/usr/bin/docker-quickstart"]