#! /bin/bash

ansible-playbook "$HOME"/scripts/ansible/playbook.yaml -e @"$HOME"/scripts/ansible/vars.yaml --ask-become-pass
