#
# Cookbook Name:: iptables
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/etc/sysconfig/iptables" do
  source "iptables.erb"
  owner "root"
  group "root"
  mode 0644
end

service "iptables" do
  action [ :enable, :start ]
  supports :status => true, :restart => true
end
