# aws-terraform-nodejs-app-sample

This will spin up an ec2 instace in an AWS Account and install a simple node application. It can also install either a New Relic or Data Dog APM agent by uncommenting out the commands in the shell script. In order for this to work you need to use your IAM user and have its credentials stored locally on your system. 

**Please remember to update the varibales.tf file with your sso and the shell script with your respective key(s) when installing one of the agents.


