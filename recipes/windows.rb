include_recipe 'windows'

windows_package '7-Zip 9.20 (x64 edition)' do
  source 'http://downloads.sourceforge.net/sevenzip/7z920-x64.msi'
  action :install
end

windows_package 'Sublime Text 3' do
  source 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203083%20x64%20Setup.exe'
  action :install
  options '/TASKS="contextentry" /VERYSILENT /NORESTART'
end
