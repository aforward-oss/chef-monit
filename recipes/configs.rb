
directory node[:monit][:confd_dir] do
  owner  'root'
  group 'root'
  mode 0755
  action :create
  recursive true
end

template node[:monit][:monitrc_file] do
  owner "root"
  group "root"
  mode 0700
  source 'monitrc.erb'
  notifies :restart, resources(:service => "monit"), :delayed
end

