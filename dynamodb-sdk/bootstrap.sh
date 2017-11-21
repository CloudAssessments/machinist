#!/bin/bash

cd ~/machinist-cloudconfig/dynamodb-sdk
HOME=/root berks vendor cookbooks -b ~/machinist-cloudconfig/dynamodb-sdk/Berksfile

chef-solo -c ~/machinist-cloudconfig/dynamodb-sdk/solo.rb -j ~/machinist-cloudconfig/dynamodb-sdk/aws.json

/usr/local/bin/npm install aws-sdk

cp ~/machinist-cloudconfig/dynamodb-sdk/files/* /home/cloud_user/
