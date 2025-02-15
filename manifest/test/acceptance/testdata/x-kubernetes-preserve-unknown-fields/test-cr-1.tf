resource "kubernetes_manifest" "test" {
  manifest = {
    apiVersion = var.group_version
    kind = var.kind
    metadata = {
      name = var.name
      namespace = var.namespace
    }
    spec = {
        count = 100
        resources = {
            foo = "bar"
        }
    }
  }
}
