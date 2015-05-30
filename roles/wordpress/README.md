This playbook prepares a webserver for a Wordpress installation.

## Tasks

This playbook accomplishes the following:

* Adds fail2ban rules for protecting Wordpress brute-force login attempts.

## Setup

This playbook should work as is. Note that it assumes an existing webserver with fail2ban installed. The playbook does **not** install Wordpress, but rather adds some configuration for a server that will have Wordpress installed.
