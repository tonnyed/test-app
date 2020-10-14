#!/bin/bash
# Needed to allow ansible-remote provisioner to work
sed -i.bak -e '/Defaults.*requiretty/s/^/#/' /etc/sudoers
