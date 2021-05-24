#!/bin/bash
ansible-playbook playbook.yml -k
cd /home/halim/tomcat-ansible
ansible-playbook tomcat-setup.yml -k