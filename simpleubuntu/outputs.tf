output deployment {
  value = {
    "name" = vra_deployment.this.name,
    "id"   = vra_deployment.this.id,
    "ipaddress" = data.vra_machine.this.address
  }
}
