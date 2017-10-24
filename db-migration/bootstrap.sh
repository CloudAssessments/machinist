#!/bin/bash

cd ~/machinist/db-migration
#cp ~/machinist/db-migration/aws.json ~/machinist/db-migration/solo.rb /
#cd /

#chef-solo -c solo.rb -j aws.json
berks vendor cookbooks

chef-solo -c ~/machinist/db-migration/solo.rb -j ~/machinist/db-migration/aws.json
