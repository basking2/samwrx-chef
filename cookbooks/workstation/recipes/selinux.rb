cookbook_file '/etc/selinux/config' do
    source 'etc_selinux_config'
    owner 'root'
    group 'root'
    mode '0644'
end
