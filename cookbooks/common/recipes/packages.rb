
package 'vim'
package 'samba'

service 'sshd' do
	action :enable
end

service 'smb' do
	action :enable
end

service 'nmb' do
	action :enable
end

service 'sshd' do
	action :start
end

service 'smb' do
	action :start
end

service 'nmb' do
	action :start
end

