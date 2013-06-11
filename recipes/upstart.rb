template "/etc/init/monit.conf" do
  owner "root"
  group "root"
  mode 0700
  source 'monit.conf.erb'
end

service "monit" do
  provider Chef::Provider::Service::Upstart
  supports :status => true, :restart => true, :reload => true
  action [ :enable ]
end