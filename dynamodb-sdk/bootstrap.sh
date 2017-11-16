#!/bin/bash

cd ~/machinist/lfcs
berks vendor cookbooks -b ~/machinist/lfcs/Berksfile

chef-solo -c ~/machinist/lfcs/solo.rb -j ~/machinist/lfcs/aws.json
