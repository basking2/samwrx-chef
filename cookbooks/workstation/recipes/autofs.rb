package 'autofs'

cookbook_file '/etc/auto.master.d/sam.autofs' do
  source 'etc/auto.master.d/sam.autofs'
  owner 'root'
  group 'root'
  mode '0644'
end

cookbook_file '/etc/auto.master.d/green-drive.map' do
    source 'etc/auto.master.d/green-drive.map'
    owner 'root'
    group 'root'
    mode '0644'
end

#directory '/mnt/greendrive-data'

cookbook_file '/etc/auto.master.d/pi3.map' do
    source 'etc/auto.master.d/pi3.map'
    owner 'root'
    group 'root'
    mode '0644'
end

#directory '/mnt/pi3'

service 'autofs' do
  action  [:enable, :restart]
end
