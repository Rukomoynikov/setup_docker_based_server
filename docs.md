**Articles**
2. https://www.ansible.com/blog/developing-and-testing-ansible-roles-with-molecule-and-podman-part-1
2. https://thedatabaseme.de/2022/01/17/automated-testing-your-ansible-role-with-molecule-and-github-actions/

**Commands**
```shell
ansible-playbook -i test/hosts.json test/playbook.yml
ansible-galaxy collection install ~/projects/rukomoynikov/setup_docker_based_server --force
```

docker run --mount type=bind,source=$SSH_AUTH_SOCK,target=/ssh-agent \
--env SSH_AUTH_SOCK=/ssh-agent \
some-image
