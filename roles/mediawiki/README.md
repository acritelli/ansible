This playbook prepares a webserver for a Mediawiki installation.

## Tasks

This playbook accomplishes the following:

* Installs certain dependencies that are used for Mediawiki
* Sets PHP Suhosin parameters to those recommended by Mediawiki

## Setup

This playbook should work as is. Note that it assumes an existing webserver running PHP Suhosin. The playbook does **not** install Mediawiki, but rather adds some configuration for a server that will have Mediawiki installed.
