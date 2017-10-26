name 'base-builder'
maintainer 'Travis N. Thomsen'
maintainer_email 'travis@linuxacademy.com'
license 'All Rights Reserved'
description 'Creates a base AMI with everything that is need for a base lab.'
long_description 'Installs/Configures bootstrap'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'sshd'
depends 'cloudcli'
depends 'compat_resource'
