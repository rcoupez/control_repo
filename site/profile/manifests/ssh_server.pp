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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDXHQlCfs9qW99Bp1E9aUx/KeP5LLzD6KW8SmZrmQtw4zZWcSt6kCBpP9g/6dPulxKsSZOOVb0bLsQqb40yknFeTmogpcApbYY3FwhxH3BwkNHvZSgyoryGSz/XsImPzekjdUTNTUNiqFPM9o+YA3nNrXOIz4WezenAF+TWKRm/0B2zmPIrHxY0IEX+vBkYd+WGe1piEm8tYgq2Q/36K/MYVh4vNyBNIP/A51oUCH65CJRFKXiU+vh6CDUoWp/Nku+YoqQxbJjbaouNrtYpQxQU70i+zVgS6bZO+8jzM/ONA65RKaDhFTJ7Gs97mqkRi2iXZnX+RhMBTvSgAynLA7sf',
	}  
}
