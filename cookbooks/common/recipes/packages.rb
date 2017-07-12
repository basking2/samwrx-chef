
package 'ruby'
package 'vim'
package 'samba'
package 'make'

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


package 'ruby-devel'
package 'libffi-devel'
package 'redhat-rpm-config'
package 'gcc-c++'
package 'zlib-devel'

gem_package 'jekyll'
gem_package 'asciidoctor'
gem_package 'jekyll-paginate'
gem_package 'mechanize'
gem_package 'mp3info'
