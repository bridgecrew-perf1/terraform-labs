# Kubernetes Provider Version
* [Terraform Provider Kubernetes](https://github.com/hashicorp/terraform-provider-kubernetes)
* [Latest Provider Docs](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs)
```
terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}
```


# Create Kubernetes Cluster
================================

# Set Kube Config


# Terraform Cleanup
```
rm -Rf .terraform
```

# create backend namespace store
```
KUBE_CONFIG_PATHS=~/.kube/config kubectl create ns tf-backend-state
```

# Initialize
```
KUBE_CONFIG_PATHS=~/.kube/config terraform init
```

# Validate
```
KUBE_CONFIG_PATHS=~/.kube/config terraform validate
```

# Plan
```
KUBE_CONFIG_PATHS=~/.kube/config terraform plan
```

# Apply
```
KUBE_CONFIG_PATHS=~/.kube/config terraform apply
KUBE_CONFIG_PATHS=~/.kube/config terraform apply -auto-approve
```

# Delete
```
KUBE_CONFIG_PATHS=~/.kube/config terraform destroy -auto-approve
```
