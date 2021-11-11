terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.6.1"
    }
  }
  backend "kubernetes" {
    namespace = "tf-backend-state"
    secret_suffix = "state"
    load_config_file = true
  }
}


module "nginx" {
   source          = "./modules/web_frontend"
   web_namespace   = var.web_namespace
   nginx_version   = var.nginx_version
}
