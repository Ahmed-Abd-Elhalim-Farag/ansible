#!/bin/bash
ansible-playbook -i hosts copytomandjava.yml
ansible-playbook -i hosts tomcat-setup.yml --ask-become
#ansible-playbook -i hosts copywar.yml