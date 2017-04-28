# Setup the 'sam' user account system do calls.


#files/default/samsDailySnag.service
#files/default/samsDailyMail.service
#files/default/samsGrive.service
#files/default/samsDailySnag.timer
#files/default/samsDailyMail.timer
#files/default/samsGrive.timer
#

directory "/home/sam/.config" do 
  owner 'sam'
  group 'sam'
  mode '0755'
end

directory "/home/sam/.config/systemd" do 
  owner 'sam'
  group 'sam'
  mode '0755'
end

directory "/home/sam/.config/systemd/user" do 
  owner 'sam'
  group 'sam'
  mode '0755'
end

%w{ samsDailySnag.service
    samsDailyMail.service
    samsGrive.service
    samsDailySnag.timer
    samsDailyMail.timer
    samsGrive.timer
}.each do |file|

  cookbook_file "/home/sam/.config/systemd/user/#{file}" do
    source file
    owner 'sam'
    group 'sam'
    mode '0644'
    action :create
  end
end

execute "enable linger for sam" do
  command "loginctl enable-linger sam"
end

# I don't think we can do this until a system reboot?
# 
# %w{ samsDailySnag.timer
#     samsDailyMail.timer
#     samsGrive.timer
# }.each do |file|
#   execute "enable #{file}" do
#     command "systemctl enable --user --now #{file}"
#     user 'sam'
#   end
# end
