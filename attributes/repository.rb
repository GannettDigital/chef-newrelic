#
# Cookbook Name:: newrelic
# Attributes:: repository
#
# Copyright 2012-2015, Escape Studios
#

default['newrelic']['repository']['key'] = 'http://download.newrelic.com/548C16BF.gpg'

case node['platform_family']
when 'debian'
  default['newrelic']['repository']['uri'] = 'http://download.newrelic.com/debian/'
  default['newrelic']['repository']['distribution'] = 'newrelic'
  default['newrelic']['repository']['components'] = ['non-free']
when 'rhel', 'fedora'
  default['newrelic']['repository']['uri'] = 'http://artifactory.gannettdigital.com/artifactory/yum-newrelic/'
end
