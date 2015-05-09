users = data_bag('users')

users.each do |user, details|
  user user do
    comment details['comment']
    uid details['uid']
    gid details['groups']
    home "/home/#{user}"
    shell details['shell'] ||= '/bin/bash'
    supports manage_home: true
    action details['action'].to_sym
  end

  git "/home/#{user}/.bash_it" do
    repository 'https://github.com/Bash-it/bash-it.git'
    revision '829716276bfd4582feb363f8838e4809c9e7ba1c'
  end

  file "/home/#{user}/.bashrc" do
    source 'bashrc'
  end

  directory "/home/#{user}/.extras" do
    owner user
    group user
    mode '0750'
  end
end
