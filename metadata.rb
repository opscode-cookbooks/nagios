name             'nagios'
maintainer       'Sous Chefs'
maintainer_email 'help@sous-chefs.org'
license          'Apache-2.0'
description      'Installs and configures Nagios server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '7.2.7'
issues_url       'https://github.com/sous-chefs/nagios/issues'
source_url       'https://github.com/sous-chefs/nagios'
chef_version     '>= 12.1' if respond_to?(:chef_version)

depends 'apache2', '>= 2.0'
depends 'zap', '>= 0.6.0'

depends 'build-essential'
depends 'php'
depends 'chef_nginx'
depends 'nginx_simplecgi'
depends 'yum-epel'
depends 'nrpe'

%w( debian ubuntu redhat centos fedora scientific amazon oracle).each do |os|
  supports os
end
