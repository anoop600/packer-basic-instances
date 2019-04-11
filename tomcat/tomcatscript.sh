sudo apt update -y
sudo apt install openjdk-8-jdk -y
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
cd /tmp
curl -O http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.39/bin/apache-tomcat-8.5.39.tar.gz
sudo mkdir /opt/tomcat
sudo tar xzvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1
sudo chgrp -R tomcat /opt/tomcat
sudo chmod -R g+r /opt/tomcat/conf
sudo chmod g+x /opt/tomcat/conf
sudo chown -R tomcat /opt/tomcat/webapps/ /opt/tomcat/work/ /opt/tomcat/temp/ /opt/tomcat/logs/
sudo cp /home/ubuntu/tomcat.service /etc/systemd/system/
#sleep 5
#echo "Sleep One"
sudo systemctl daemon-reload
#sleep 5
#echo "Sleep Two"
sudo systemctl start tomcat
#sleep 5
#echo "Sleep Three"
sudo systemctl enable tomcat
sudo ufw allow 8080
sudo sh /opt/tomcat/bin/startup.sh
#sleep 5
#echo "Sleep Four"
