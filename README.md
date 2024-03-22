# Ansible

Because Ansible.

To build:

```
docker build -f Dockerfile-ansible -t my-ansible:latest .
docker build -f Dockerfile-ansible-playbook -t my-ansible-playbook:latest .
```

After building, these can be executed locally like you see here. This is a bring your own hosts file and main.yml files situation.

To run:

```
docker run --rm -it \
-v /Users/tool/.ssh:/root/.ssh \
-v $(pwd)/hosts:/etc/ansible/hosts \
-v $(pwd)/main.yaml:/ansible/main.yaml \
-w /ansible \
my-ansible-playbook:latest main.yaml
```

---

*20240321* - update dockerfiles and rebuild

To build:

```
docker build -f Dockerfile-ansible -t goatatwork/ansible:alpine-3.19 .
docker build -f Dockerfile-ansible-playbook -t goatatwork/ansible-playbook:alpine-3.19 .
```

To run:

```
docker run --rm -it \
-v /Users/ryan5163/.ssh:/root/.ssh \
-v $(pwd)/hosts:/etc/ansible/hosts \
-v $(pwd)/main.yaml:/ansible/main.yaml \
-w /ansible \
goatatwork/ansible-playbook:alpine-3.19 main.yaml
```

Reformatted as one line:
```
docker run --rm -it -v /Users/ryan5163/.ssh:/root/.ssh -v $(pwd)/hosts:/etc/ansible/hosts -v $(pwd)/main.yml:/ansible/main.yml -w /ansible goatatwork/ansible-playbook:alpine-3.19 main.yml
```
