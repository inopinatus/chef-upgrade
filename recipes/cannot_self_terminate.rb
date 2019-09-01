# Cookbook Name:: chef-upgrade
# Recipe:: cannot_self_terminate
#
# Copyright 2019, Josh Goodall

# Do not allow the Chef updater to override our preference for exec
update_provider = Chef.provider_handler_map.get(node, :chef_client_updater)
update_provider.prepend(CannotSelfTerminate)
