#!/bin/bash

cd ~/machinist/lfcs-install
berks vendor cookbooks -b ~/machinist-cloudconfig/lfcs-install/Berksfile

chef-solo -c ~/machinist-cloudconfig/lfcs-install/solo.rb -j ~/machinist-cloudconfig/lfcs-install/aws.json
