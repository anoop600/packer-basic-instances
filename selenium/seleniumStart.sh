cd /opt/selenium
xvfb-run java -Dwebdriver.chrome.driver=/usr/bin/chromedriver -jar selenium-server-standalone.jar
chromedriver --url-base=/wd/hub
