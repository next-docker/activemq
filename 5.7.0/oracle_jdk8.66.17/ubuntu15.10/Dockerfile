FROM ping2ravi/jdk:oracle_jdk8.66.17_ubuntu.15.10


MAINTAINER Ravi Sharma


# Ubuntu 15.10
# Java Version oracle_jdk8 update 66
# ActiveMQ Version 5.7.0
#     http://activemq.apache.org/download-archives.html


ENV ACTIVEMQ_VERSION 5.7.0
ENV ACTIVEMQ_HOME /opt/activemq/activemq-${ACTIVEMQ_VERSION}
ENV ACTIVEMQ_FILE_NAME apache-activemq-${ACTIVEMQ_VERSION}

RUN  wget -O ${ACTIVEMQ_FILE_NAME}-bin.tar.gz http://mirror.ox.ac.uk/sites/rsync.apache.org/activemq//${ACTIVEMQ_FILE_NAME}-bin.tar.gz;gunzip ${ACTIVEMQ_FILE_NAME}-bin.tar.gz; tar -xvf ${ACTIVEMQ_FILE_NAME}-bin.tar; mkdir -p ${ACTIVEMQ_HOME};mv ${ACTIVEMQ_FILE_NAME}/* ${ACTIVEMQ_HOME}; rm ${ACTIVEMQ_FILE_NAME}-bin.tar; rm -fR ${ACTIVEMQ_FILE_NAME}


ENV PATH ${PATH}:${ACTIVEMQ_HOME}/bin


CMD activemq console
# Expose all port
EXPOSE 8161
EXPOSE 61616
EXPOSE 5672
EXPOSE 61613
EXPOSE 1883
EXPOSE 61614
