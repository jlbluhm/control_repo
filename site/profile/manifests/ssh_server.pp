class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC37q8g3J8AV5cKFgcbr+enGtQUJ/LICkL61H5K+fVaMRotsWbh43aKCk7GVxvoF23kfNnykihjhGq8H9kD6LUDhjUHaEl5e1BNYnuEd0a3CLjBjW0Xy+x5sqTKfCF7Zdjy6ZcMBY5NgIZP2tVUX7M2qN31l+ETLQt7mUDELWCkfebyuo+zNXXBE5u88N5Z/F6xW8mSnDddKVeC8wQL9VJTOaEjnq6Ye8a8ZcGoFB3jleWzoZsAJv69ahdyIEQYdh3i0e7/CBgdAo7+dbMqIj+jl2xsO1RGhyMeD5DKgBA31zABNOHxh2SxJmBR8V8/OuOtdZfHJrAJR5Pkhtfxpj/l',
	}  
}
