#!/bin/bash

#install node, git, npm
yum update -y
sudo yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
sudo yum install -y nodejs npm
sudo yum install git -y

#create the project directory, clone it, then start the app
cd ~
git clone https://github.com/timmyb824/weather-app.git
cd weather-app/
npm install
sudo npm install pm2 -g
pm2 start server.js


#install new relic infra agent
#curl -s https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg | sudo apt-key add - && 
#echo "license_key: <ENTER LICENSE KEY HERE>" | sudo tee -a /etc/newrelic-infra.yml && 
#printf "deb [arch=amd64] https://download.newrelic.com/infrastructure_agent/linux/apt focal main" | sudo tee -a /etc/apt/sources.list.d/newrelic-infra.list && 
#sudo apt-get update && 
#sudo apt-get install newrelic-infra -y

#install datadog infra agent
#DD_AGENT_MAJOR_VERSION=7 DD_API_KEY=<ENTER API KEY HERE> DD_SITE="datadoghq.com" bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script.sh)"