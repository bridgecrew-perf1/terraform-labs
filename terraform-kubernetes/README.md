# Ansible Kubernetes Cluster & Containerd
Ansible Kubernbetes Stack Configs

## Test and Install
```
# Test Ping Cluster Nodes
ansible -m ping kubernetes_stack -v -o

# Install Whole Cluster
ansible-playbook playbooks/main.yml --tags "install"

# Install only master
ansible-playbook playbooks/main.yml --tags "install,master"

# Join Nodes to cluster
ansible-playbook playbooks/main.yml --tags "join"
```

## Test Cluster
```
kubectl get pods -A
kubectl get nodes -o wide
```
