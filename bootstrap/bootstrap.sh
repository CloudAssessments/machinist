#!/bin/bash

cd ~/machinist/bootstrap
berks vendor cookbooks

chef-solo -c ~/machinist/bootstrap/solo.rb -j ~/machinist/bootstrap/aws.json
