UBUNTU_VERSIONS=(14.04 15.04 15.10)
JDK_VERSIONS=(oracle_jdk7.80.15 oracle_jdk8.66.17)
ACTIVEMQ_VERSIONS=(5.9.1 5.9.0 5.8.0 5.7.0 5.6.0 5.5.1 5.5.0 5.4.3 5.4.2 5.4.1 5.4.0 5.3.2 5.3.1 5.3.0)


echo ${UBUNTU_VERSIONS[@]}
for UBUNTU_VERSION in "${UBUNTU_VERSIONS[@]}"
   do
   for JDK_VERSION in "${JDK_VERSIONS[@]}"
      do
      for ACTIVEMQ_VERSION in "${ACTIVEMQ_VERSIONS[@]}"
         do
         echo "$ACTIVEMQ_VERSION/$JDK_VERSION/ubuntu$UBUNTU_VERSION" 
         mkdir -p $ACTIVEMQ_VERSION/$JDK_VERSION/ubuntu$UBUNTU_VERSION
         ./Dockerfile.sh $UBUNTU_VERSION $JDK_VERSION $ACTIVEMQ_VERSION > $ACTIVEMQ_VERSION/$JDK_VERSION/ubuntu$UBUNTU_VERSION/Dockerfile
         done
      done 
   done



