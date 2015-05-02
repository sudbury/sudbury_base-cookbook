%w(
  apt
  chef_handler
  yum
  sudo
  build-essential
  vim
  logrotate
  unattended-upgrades
  ssh_known_hosts
  users
  network_interfaces
  resolver
).each do |cookbook|
  include_recipe cookbook
end

network_interfaces 'eth0' do
  target node['sudbury_base']['net']['primary']['ip']
  mask node['sudbury_base']['net']['primary']['mask']
  gateway node['sudbury_base']['net']['primary']['gateway']
  broadcast node['sudbury_base']['net']['primary']['broadcast']
  network node['sudbury_base']['net']['primary']['network']
  only_if node['sudbury_base']['net']['primary']['ip']
end
