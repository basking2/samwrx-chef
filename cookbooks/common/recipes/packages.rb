
package 'ruby'
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


gem_package 'jekyll'
gem_package 'asciidoctor'
gem_package 'jekyll-paginate'
gem_package 'mechanize'
gem_package 'mp3info'
