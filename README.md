# Ansible

Because Ansible.

After building, these can be executed locally like you see here. This is a bring your own hosts file and main.yml files situation.

Example build:

```
docker build -f Dockerfile-ansible -t goatatwork/ansible:alpine-3.19 .
docker build -f Dockerfile-ansible-playbook -t goatatwork/ansible-playbook:alpine-3.19 .
```

Example run:

```
docker run --rm -it \
-v ~/.ssh:/root/.ssh \
-v $(pwd)/hosts:/etc/ansible/hosts \
-v $(pwd):/ansible \
-w /ansible \
goatatwork/ansible-playbook:alpine-3.19 main.yaml
```

Example run reformatted as single line:
```
docker run --rm -it -v ~/.ssh:/root/.ssh -v $(pwd)/hosts:/etc/ansible/hosts -v $(pwd):/ansible -w /ansible goatatwork/ansible-playbook:alpine-3.19 main.yml
```
