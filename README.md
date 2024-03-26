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

To create a VM:
```shell
virt-install \
  --name rgray-ubuntu01 \
  --memory 4096 \
  --vcpus 2 \
  --disk path=/var/lib/libvirt/images/rgray-ubuntu01.qcow2,size=20,backing_store=/var/lib/libvirt/boot/jammy-server-cloudimg-arm64.img,format=qcow2 \
  --os-type linux \
  --os-variant ubuntu24.04 \
  --network network=default,model=virtio \
  --graphics none \
  --console pty,target_type=serial \
  --import
```
