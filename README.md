# Ansible Collection - rukomoynikov.setup_docker_based_server

Heya.

This is stupidily simple ansible collection to setup a server with docker and launch several container that can be useful for web services.

*Database*
Last version of PostgreSQL. Credentials should be provided by variables. Data directory is mapped to `/mnt/postgres`.


1. ansible-playbook -i test/hosts.json test/playbook.yml
2. ansible-galaxy collection install ~/projects/rukomoynikov/setup_docker_based_server --force
# setup_docker_based_server
