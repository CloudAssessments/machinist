#!/bin/bash

wget https://packages.chef.io/files/stable/chefdk/2.0.28/el/7/chefdk-2.0.28-1.el7.x86_64.rpm
rpm -ivh chefdk-2.0.28-1.el7.x86_64.rpm

cd ~/machinist-cloudconfig/dynamodb-sdk
berks vendor cookbooks -b ~/machinist-cloudconfig/dynamodb-sdk/Berksfile

chef-solo -c ~/machinist-cloudconfig/dynamodb-sdk/solo.rb -j ~/machinist-cloudconfig/dynamodb-sdk/aws.json
