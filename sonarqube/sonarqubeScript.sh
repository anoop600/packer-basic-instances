udo apt update -y
sudo apt install openjdk-8-jdk -y

echo "JAVA is Installed"

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password minduser'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password minduser'
sudo apt-get -y install mysql-server
echo minduser | mysql -u root -p sonarqube < /home/ubuntu/database.sql
sudo adduser --system --no-create-home --group --disabled-login sonarqube
sudo mkdir /opt/sonarqube
sudo chown -R sonarqube:sonarqube /opt/sonarqube
sudo apt-get install -y unzip
cd /opt/sonarqube
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.7.zip
sudo unzip sonarqube-7.7.zip
sudo rm sonarqube-7.7.zip
sudo cp /home/ubuntu/sonar.properties /opt/sonarqube/sonarqube-7.7/conf/
sudo cp /home/ubuntu/sonarqube.service /etc/systemd/system/sonarqube.service
sudo service sonarqube start
sudo systemctl enable sonarqube

