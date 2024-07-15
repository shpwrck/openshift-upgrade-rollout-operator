Role Name
=========

This role blocks node upgrades until a set of defined 

Requirements
------------

This role leverages 'json_query' and thus requires 'jmespath' be installed on the running system.
This role leverages the following collections beyond what the Operator-SDK installs by default:
- 'awx.awx' 

Role Variables
--------------

TBD

Dependencies
------------

This role does not depend on any other role.

Example Playbook
----------------

This role is strictly intended to be run as an Operator-SDK operator. Running this role with a standalone playbook will not be supported.

License
-------

BSD

Author Information
------------------

This role was created in 2024 by Jason Skrzypek.
