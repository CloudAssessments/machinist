#!/bin/bash

cd ~/machinist/lfcs
berks vendor cookbooks -b ~/machinist-cloudconfig/dynamodb-sdk/Berksfile

chef-solo -c ~/machinist-cloudconfig/dynamodb-sdk/solo.rb -j ~/machinist/dynamodb-sdk/aws.json
