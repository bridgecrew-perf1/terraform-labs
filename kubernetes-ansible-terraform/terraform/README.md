# Create Kubernetes Cluster
================================

# Set Kube Config


# Terraform Cleanup
```
rm -Rf .terraform
```

# create backend namespace store
```
KUBECONFIG=~/.kube/config kubectl create ns tf-backend-state
```

# Initialize
```
KUBECONFIG=~/.kube/config terraform init
```

# Validate
```
KUBECONFIG=~/.kube/config terraform validate
```

# Plan
```
KUBECONFIG=~/.kube/config terraform plan
```

# Apply
```
KUBECONFIG=~/.kube/config terraform apply
KUBECONFIG=~/.kube/config terraform apply -auto-approve
```

# Delete
```
KUBECONFIG=~/.kube/config terraform destroy -auto-approve
```
