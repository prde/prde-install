#!/bin/bash

sudo dnf install -y ansible
ansible-pull --url=https://github.com/prde/prde-install-fedora.git -K -i <(echo localhost ansible_connection=local)
