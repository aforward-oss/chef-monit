default[:monit][:version] = "5.5.1"

default[:monit][:notify_email]          = "notify@example.com"
default[:monit][:notify_expr] = "NOT ON { action, instance, pid, ppid }"

default[:monit][:poll_period] = 60
default[:monit][:poll_start_delay] = 1

default[:monit][:mail_format][:subject] = "$SERVICE $EVENT"
default[:monit][:mail_format][:from] = "monit@#{(node['fqdn'] || "localhost")}"
default[:monit][:mail_format][:message] = <<-EOS
Monit $ACTION $SERVICE at $DATE on $HOST: $DESCRIPTION.
Yours sincerely,
monit
EOS


default[:monit][:logfile] = "syslog facility log_daemon"

default[:monit][:mailserver][:host] = "localhost"
default[:monit][:mailserver][:port] = nil
default[:monit][:mailserver][:username] = nil
default[:monit][:mailserver][:password] = nil
default[:monit][:mailserver][:password_suffix] = nil

default[:monit][:port] = 3737
default[:monit][:ssl] = false
default[:monit][:cert] = "/etc/monit/monit.pem"
default[:monit][:confd_dir] = "/etc/monit/conf.d/"
default[:monit][:monitrc_file] = "/etc/monitrc"
default[:monit][:monitdelay_file] = "/etc/monit/monit_delay"
default[:monit][:bin_file] =  "/usr/sbin/monit"

# To enable external http access, update with domain name or IP
default[:monit][:address] = "localhost"

# To enable http access, update with username:password
# (e.g. admin:adm1n )
default[:monit][:allow] = ["localhost"]
