#!/bin/bash

cd ~/machinist-cloudconfig/db-migration
#cp ~/machinist-cloudconfig/db-migration/aws.json ~/machinist-cloudconfig/db-migration/solo.rb /
#cd /

#chef-solo -c solo.rb -j aws.json
berks vendor cookbooks

chef-solo -c ~/machinist-cloudconfig/db-migration/solo.rb -j ~/machinist-cloudconfig/db-migration/aws.json
