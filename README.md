# Ansible

Because Ansible.

To build:

```
docker build -f Dockerfile-ansible -t my-ansible:latest .
docker build -f Dockerfile-ansible-playbook -t my-ansible-playbook:latest .
```

After building, these can be executed locally like you see here. This is a bring your own hosts file and main.yml files situation.

```
docker run --rm -it \\
-v /Users/tool/.ssh:/root/.ssh \\
-v $(pwd)/hosts:/etc/ansible/hosts \\
-v $(pwd)/main.yaml:/ansible/main.yaml \\
-w /ansible \\
my-ansible-playbook:latest main.yaml
```
