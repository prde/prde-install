#!/bin/bash

ANSIBLE_PULL=/usr/bin/ansible-pull

[ -x $ANSIBLE_PULL ] || sudo dnf install -y ansible

if [ -x $ANSIBLE_PULL ]
then
    echo "localhost ansible_connection=local" > /tmp/local_node_inventory
    $ANSIBLE_PULL --url=https://github.com/prde/prde-install-fedora.git -K -i /tmp/local_node_inventory
else
    echo "Cannot find or install Ansible. Exiting."
fi
