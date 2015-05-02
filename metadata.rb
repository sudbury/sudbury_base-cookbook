name             'sudbury_base'
maintainer       'Town of Sudbury'
maintainer_email 'hurtige@sudbury.ma.us'
license          'apache2'
description      'Installs/Configures sudbury_base'
long_description 'Installs/Configures sudbury_base'
version          '0.0.1'

supports 'ubuntu', '>= 12.04'

%w(
  apt
  chef_handler
  yum
  sudo
  build-essential
  vim
  logrotate
  git
  network_interfaces
  resolver
  windows
  chef-sugar
).each do |cookbook|
  depends cookbook
end

depends 'chef-client', '~> 4.0'
depends 'et_hostname', '~> 1.0'
depends 'unattended-upgrades', '~> 0.1'
depends 'ssh_known_hosts', '~> 2.0'
depends 'users', '~> 1.0'
