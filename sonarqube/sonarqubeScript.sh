sudo apt update -y
sudo apt install openjdk-8-jdk -y

echo "JAVA is Installed"

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password minduser'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password minduser'
sudo apt-get -y install mysql-server
cat /home/ubuntu/database.sql | mysql -u username -p
sudo adduser --system --no-create-home --group --disabled-login sonarqube
sudo mkdir /opt/sonarqube
sudo chown -R sonarqube:sonarqube /opt/sonarqube
sudo apt-get install unzip -y
cd /opt/sonarqube
sudo wget https://s3-ap-southeast-1.amazonaws.com/jfrog-zip/sonarqube-7.7.zip
sudo unzip sonarqube-7.7.zip
sudo rm sonarqube-7.7.zip
sudo cp /home/ubuntu/sonar.properties /opt/sonarqube/sonarqube-7.7/conf/
sudo cp /home/ubuntu/sonarqube.service /etc/systemd/system/sonarqube.service
sudo service sonarqube start
sudo systemctl enable sonarqube
