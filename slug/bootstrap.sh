#!/bin/bash

cd ~/machinist-cloudconfig/<slug>
berks vendor cookbooks -b ~/machinist-cloudconfig/<slug>/Berksfile

chef-solo -c ~/machinist-cloudconfig/<slug>/solo.rb -j ~/machinist-cloudconfig/<slug>/aws.json
