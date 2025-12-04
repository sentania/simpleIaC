variable "project_name" {
}
variable "description" {
}

variable "catalog_item_name" {

}
variable "catalog_item_version" {
}
variable "deployment_name" {
}
variable "inputs" {
  description = "Arbitrary inputs to pass to the blueprint"
  type        = map(any)
  default     = {}
}
