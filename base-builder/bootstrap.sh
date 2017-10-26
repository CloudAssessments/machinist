#!/bin/bash

cd ~/machinist/base-builder
berks vendor cookbooks -b ~/machinist/base-builder/Berksfile

chef-solo -c ~/machinist/base-builder/solo.rb -j ~/machinist/base-builder/aws.json
