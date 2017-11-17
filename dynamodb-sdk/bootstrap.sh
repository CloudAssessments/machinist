#!/bin/bash

cd ~/machinist/lfcs
berks vendor cookbooks -b ~/machinist/dynamodb-sdk/Berksfile

chef-solo -c ~/machinist/dynamodb-sdk/solo.rb -j ~/machinist/dynamodb-sdk/aws.json
