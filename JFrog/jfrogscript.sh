sudo apt-get update && sudo apt-get install unzip
mkdir /opt/jfrog
cd /opt/jfrog
curl -LO https://api.bintray.com/content/jfrog/artifactory/jfrog-artifactory-oss-$latest.zip;bt_package=jfrog-artifactory-oss-zip

