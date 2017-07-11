#
# Cookbook:: workstation
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

include_recipe 'workstation::packages'
include_recipe 'workstation::user'
include_recipe 'workstation::user_systemd'
include_recipe 'workstation::selinux'
include_recipe 'workstation::firewall'
include_recipe 'workstation::autofs'
