# Cookbook Name:: chef-upgrade
# Recipe:: cannot_self_terminate
#
# Copyright 2019, Josh Goodall

# The Chef updater will try to kill its own process. This causes setup failure.
# We force it to accept our "exec" configuration by monkey-patching the LWRP.
update_provider = Chef.provider_handler_map.get(node, :chef_client_updater)
update_provider.prepend(CannotSelfTerminate)
