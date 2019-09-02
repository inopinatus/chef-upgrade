# Cookbook Name:: chef-upgrade
# Recipe:: debian_downgrade_protection
#
# Copyright 2019, Josh Goodall

prepend_hook_directory = '/opt/aws/opsworks/current/plugins'

directory prepend_hook_directory do
  owner 'root'
  group 'aws'
  mode '0755'
end

cookbook_file "#{prepend_hook_directory}/debian_downgrade_protection.rb" do
  source 'debian_downgrade_protection.rb'
  owner 'root'
  group 'aws'
  mode '0644'
end
