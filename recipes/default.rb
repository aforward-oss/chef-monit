
include_recipe "monit::package"

if platform?("ubuntu")
  cookbook_file "/etc/default/monit" do
    source "monit.default"
    owner "root"
    group "root"
    mode 0644
  end
end

include_recipe "monit::upstart"
include_recipe "monit::configs"
