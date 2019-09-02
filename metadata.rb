# frozen_string_literal: true

name 'chef-upgrade'
maintainer 'Josh Goodall'
maintainer_email 'inopinatus@inopinatus.org'
license 'MIT'
description 'Wraps and stickies a Chef upgrade'
long_description 'Wraps and stickies a Chef upgrade'
version '1.0.0'
source_url 'https://github.com/inopinatus/chef-upgrade'
issues_url 'https://github.com/inopinatus/chef-upgrade/issues'
chef_version '>= 12.14' if respond_to?(:chef_version)

supports 'ubuntu', '>= 18.04'

depends 'chef_client_updater'
