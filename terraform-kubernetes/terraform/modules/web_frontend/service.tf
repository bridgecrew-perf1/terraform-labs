resource "kubernetes_service" "nginx" {
  metadata {
    name = "nginx-service"
    namespace = var.web_namespace
  }

  spec {
    selector = {
      App = "${kubernetes_pod.nginx.metadata.0.labels.App}"
    }
    port {
      port = 80
      target_port = 80
    }

    type = "NodePort"
  }
}
