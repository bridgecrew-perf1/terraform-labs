
# Create Kubernetes Cluster
================================

# Set Kube Config
================================

# Terraform Updates
================================
rm -Rf .terraform

# create backend namespace store
---------------------------------
KUBECONFIG=~/.kube/config terraform init

KUBECONFIG=~/.kube/config terraform init




terraform validate
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve
terraform state pull




KUBECONFIG=~/.kube/config terraform init
