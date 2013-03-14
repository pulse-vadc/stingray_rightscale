#
# Cookbook Name:: lb_stingray
# Recipe:: default
#
# Copyright 2012, Riverbed Technology
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin

class Chef::Recipe
   include RightScale::App::Helper
end

log "Override load balancer to use Stingray."
node[:lb][:service][:provider] = "lb_stingray"

rightscale_marker :end
