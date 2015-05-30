This repository holds a variety of Ansible playbooks that I have created for deploying various types of servers. They generally also work for managing state, but I primarily use them for deployment.

These playbooks are largely a work in progress, and they don't do anything particularly crazy with Ansible. The most common task accomplished is installation of dependencies for various web applications.

This repository assumes that you follow the directory structure specified in the [Ansible best practices](http://docs.ansible.com/playbooks_best_practices.html)

I hope to make these more advanced over time. For now, they meet most of my simple needs. Note that these playbooks build upon each other, although I have not yet implemented role dependencies.

Be sure to review the README for each respective role for any specifics regarding each role. The README will briefly explain the purpose of each role. The easiest way to understand the specific tasks accomplished by the role is to review the tasks/main.yml file. That's the beauty of Ansible: it's easy to define your infrastructure in plain English!

These playbooks have been tested on CentOS 6.6 and, in some cases, 6.5.
