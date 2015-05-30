This playbook sets up a LAMP stack.

## Tasks

This playbook accomplishes the following:

* Installs, enables, and starts software required for a LAMP stack.
* Adds iptables rules for HTTP and HTTPS.
* Enables PHP Suhosin
  * **Note:** This playbook does not install PHP Suhosin. You will still need to install Suhosin after running this playbook, as it needs to be built from source. This is an easy process, so please consult the [Suhosin documentation.](https://suhosin.org/stories/install.html)

## Setup

This playbook should work as is.
