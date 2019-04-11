sudo apt-get update && sudo apt-get install unzip
mkdir /opt/jfrog
cd /opt/jfrog
wget https://s3-ap-southeast-1.amazonaws.com/jfrog-zip/jfrog-artifactory-oss-6.9.1.zip
unzip jfrog-artifactory-oss-6.9.1.zip
cd artifactory-oss-6.9.1/bin/
nohup sh artifactory.sh &
