
package 'Git' do
	case node[:platform]
	when 'debian'
		package_name 'git'
	else
		package_name 'git'
	end
end

package 'vlc'
package 'gvim'
package 'firefox'
package 'thunderbird'
package 'thunderbird-enigmail'
package 'gnupg'
package 'ruby'
package 'gradle'
package 'maven'
package 'scala'
package 'gnome-vfs2-smb'
package 'gvfs-smb'
