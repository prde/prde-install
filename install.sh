#!/bin/bash

ANSIBLE_PULL=/usr/bin/ansible-pull

[ -x $ANSIBLE_PULL ] || sudo dnf install -y ansible

if [ -x $ANSIBLE_PULL ]
then
    $ANSIBLE_PULL --url=https://github.com/prde/prde-install-fedora.git \
                  -K -i <(echo localhost ansible_connection=local)
else
    echo "Cannot find or install Ansible. Exiting."
fi
