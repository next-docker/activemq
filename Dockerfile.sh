PARAM_UBUNTU_VERSION=$1
PARAM_JDK_VERSION=$2
PARAM_ACTIVEMQ_VERSION=$3

OIFS=$IFS
IFS='.' read -ra JDK_VERSION_ARRAY <<< "$PARAM_JDK_VERSION"

echo "FROM ping2ravi/jdk:${PARAM_JDK_VERSION}_ubuntu.${PARAM_UBUNTU_VERSION}"
echo ""
echo ""

echo "MAINTAINER Ravi Sharma"

echo ""
echo ""
echo "# Ubuntu ${PARAM_UBUNTU_VERSION}"
echo "# Java Version ${JDK_VERSION_ARRAY[0]} update ${JDK_VERSION_ARRAY[1]}"
echo "# ActiveMQ Version ${PARAM_ACTIVEMQ_VERSION}" 
echo "#     http://activemq.apache.org/download-archives.html"

echo ""
echo ""
echo "ENV ACTIVEMQ_VERSION $PARAM_ACTIVEMQ_VERSION"

echo "ENV ACTIVEMQ_HOME /opt/activemq/activemq-\${ACTIVEMQ_VERSION}"
echo "ENV ACTIVEMQ_FILE_NAME apache-activemq-\${ACTIVEMQ_VERSION}"

echo ""
echo "RUN  wget -O \${ACTIVEMQ_FILE_NAME}-bin.tar.gz http://mirror.ox.ac.uk/sites/rsync.apache.org/activemq/${ACTIVEMQ_VERSION}/\${ACTIVEMQ_FILE_NAME}-bin.tar.gz;gunzip \${ACTIVEMQ_FILE_NAME}-bin.tar.gz; tar -xvf \${ACTIVEMQ_FILE_NAME}-bin.tar; mkdir -p \${ACTIVEMQ_HOME};mv \${ACTIVEMQ_FILE_NAME}/* \${ACTIVEMQ_HOME}; rm \${ACTIVEMQ_FILE_NAME}-bin.tar; rm -fR \${ACTIVEMQ_FILE_NAME}"

echo ""
echo ""
echo "ENV PATH \${PATH}:\${ACTIVEMQ_HOME}/bin"
echo ""
echo ""
echo "CMD activemq console" 

echo "# Expose all port" 
echo "EXPOSE 8161" 
echo "EXPOSE 61616" 
echo "EXPOSE 5672" 
echo "EXPOSE 61613" 
echo "EXPOSE 1883" 
echo "EXPOSE 61614"
IFS=$OIFS
