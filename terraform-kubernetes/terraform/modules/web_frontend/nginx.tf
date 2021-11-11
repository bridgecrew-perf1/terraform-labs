resource "kubernetes_namespace" "nginx" {
  metadata {
    name = var.web_namespace
  }
}


resource "kubernetes_pod" "nginx" {
  metadata {
    name = "nginx-pod"
    namespace = var.web_namespace
    labels = {
      App = "nginx"
    }
  }

  spec {
    container {
      image = "nginx:${var.nginx_version}"
      name  = "nginx"

      port {
        container_port = 80
      }
    }
  }
}
