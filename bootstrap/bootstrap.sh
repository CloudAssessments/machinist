#!/bin/bash

cd ~/machinist/bootstrap
berks vendor cookbooks -b ~/machinist/bootstrap/Berksfile

chef-solo -c ~/machinist/bootstrap/solo.rb -j ~/machinist/bootstrap/aws.json
