output deployment {
  value = {
    "name" = vra_deployment.this.name,
    "id"   = vra_deployment.this.id
  }
}

output "machines" {
  value = {
    for k, m in data.vra_machine.all :
    k => {
      id      = m.id
      name    = m.name
      address = m.address
    }
  }
}
