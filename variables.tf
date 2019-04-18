variable "elastic-clusters" {
  type = "list"
  default = [""]
}

variable "vpc_id" {}

variable "availability_zones" {
  type = "list"
}
variable "securiy_group_id" {}
