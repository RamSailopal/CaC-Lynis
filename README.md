# Role Name
=========

Ansible role to install Lynis on Ubuntu and configure the server to be as compliant as possible against the Lynis system audit.


# Role Variables
--------------

**rat** - Linus returns a hardened rating once it has run and the rat variable will be compared to this rating to determine a success or failure. For example is the actual hardened rating was 70 and rat was set to 80, there will be a failure. Conversely, if the rating was 70 and rat was set to 60, there would be a success. 

The default for **rat** is 70


    - hosts: servers
      roles: 
        - Cac-Lynis
      vars:
        rat: 60

# License
-------

BSD

# References
------------------

Lynis - https://github.com/CISOfy/lynis

# Author Information
------------------

Raman Sailopal
