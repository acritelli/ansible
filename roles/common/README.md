This playbook sets up a basic server with useful programs and configuration files.

## Tasks

This playbook accomplishes the following:

* Sets the server hostname.

* Program installations
  * Updates all packages on the server, adds the EPEL repository, and installs several programs that I like to have on all of my servers.

* Disables SELinux. This is a temporary action, as I commonly use this to deploy test servers and don't feel like dealing with SELinux in my lab environment. You should remove this for any production servers that you seek to deploy.

* Places several important configuration files. You should replace these files with templates that you typically use in your infrastructure. All files are located in the files directory, as per Ansible best practices.
  * clamscan and freshclam cron jobs
  * sudoers **Note** The included sudoers file allows the ansible user to execute any command without a password. This is for the purpose of allowing ansible to perform actions while logged in with an SSH key and without using a password. You may prefer a different setup.
  * sshd_config
  * SSH Banner
  * Adds a regular user and sets up an SSH key.

* Sets up iptables with a script from the files directory.

* Enables and starts various services.

## Setup

There are a few things that you'll need to do before running this playbook:

1. Specify the necessary variables
  * hostname - used to set the hostname of the host (surprise!)
  * regular_user - the script ensures that this user is present on the host
2. Replaces all configuration files with your preferred versions
  * The playbook places several configuration files from the files directory for the role. The included samples may not be to your liking and should be replaced with your preferred configurations.
3. Place your desired ssh keys into files/ssh and set the SSH users in the vars/main.yml file
  * The vars/main.yml file specifies users who will have their SSH keys placed on the host. Be sure to set up any users here.
  * The files/ssh/ directory contains public keys for SSH users that will be placed into each user's authorized_keys file on the host. Be sure to add any desired SSH public keys to this directory.
