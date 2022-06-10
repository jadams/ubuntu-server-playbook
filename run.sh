#!/bin/bash
set -euo pipefail

sudo -l | tail -2

if ! which ansible &>/dev/null; then
    sudo apt update
    sudo apt install -y ansible
fi

ansible-galaxy install -r requirements.yml
ansible-playbook main.yml
