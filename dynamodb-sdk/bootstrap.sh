#!/bin/bash

cd ~/machinist-cloudconfig/dynamodb-sdk
berks vendor cookbooks -b ~/machinist-cloudconfig/dynamodb-sdk/Berksfile

chef-solo -c ~/machinist-cloudconfig/dynamodb-sdk/solo.rb -j ~/machinist-cloudconfig/dynamodb-sdk/aws.json
