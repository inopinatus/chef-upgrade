# Cookbook Name:: chef-upgrade
# Recipe:: setup
#
# Copyright 2019, Josh Goodall

include_recipe 'chef-upgrade::cannot_self_terminate'
include_recipe 'chef_client_updater::default'
include_recipe 'chef-upgrade::debian_downgrade_protection'
