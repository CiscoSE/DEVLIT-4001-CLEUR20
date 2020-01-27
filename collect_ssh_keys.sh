#!/bin/bash
#
#  Brute force collection of SSH host keys from Sandbox.
#
#  More elegant approach (root level, overwrites entire file):
#  https://blog.ipspace.net/2017/09/collect-ssh-keys-with-ansible.html
#

/usr/bin/sed -i -e 's/10.60.66.*//' ${HOME}/.ssh/known_hosts

for i in 111 112 121 122; do \
   ssh-keyscan 10.60.66.${i} 2>/dev/null >> ${HOME}/.ssh/known_hosts; \
done
