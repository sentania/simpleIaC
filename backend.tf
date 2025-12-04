terraform {
  backend "pg" {
    table_name = "tf_state_deployments"
  }
}
