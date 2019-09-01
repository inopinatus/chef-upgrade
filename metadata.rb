name 'chef-upgrade'
maintainer 'Josh Goodall'
maintainer_email 'inopinatus@inopinatus.org'
license 'MIT'
description 'Wraps and manages a Chef upgrade'
long_description 'Wraps and manages a Chef upgrade'
version '0.0.1'
chef_version '>= 12.14' if respond_to?(:chef_version)

depends 'chef_client_updater'
