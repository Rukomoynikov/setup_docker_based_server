# Ansible collection to setup a docker based server #
_It means all stuff like databases, web servers, etc. are running in docker containers._

**Contains following roles:**
- Docker (basic one)
- Docker Swarm (cluster mode)
- Portainer (docker management UI)
- Traefik (reverse proxy for application in docker containers)
- Redis (in-memory data structure store)

**How to use:**
- [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- Install collection (for example with help `ansible-galaxy collection install git@github.com:Rukomoynikov/setup_docker_based_server.git`)
- Create an inventory file and playbook where the collection can be used this way:
  ```yaml
    - hosts: all
      collections:
        - rukomoynikov.setup_docker_based_server
      roles:
        - docker
        - swarm
        - portainer
        - postgres
        - redis
  ```

**How to run:**
Here is an example of inventory file in json format:

```json
{
  "all": {
    "hosts": {
      "production": {
        "ansible_host": "0.0.0.0",
        "ansible_user": "root"
      }
    },
    "vars": {
      // Optional only if you want to use traefik
      "traefik": {
        "host": "traefik.example.com",
        "email_for_letsencrypt": "email@email.com"
      },
      // Optional only if you want to use postgres
      "database": {
        "password": "password", // Default is postgres_password1
        "username": "username" // Default is postgres1
      }
    }
  }
}
```