variable "elastic-clusters" {
  type = "list"
  default = [""]
}

variable "cluster_id" {}

variable "cluster_description" {}

variable "node_type" {
  default = "cache.m3.medium"
}

variable "num_cache_nodes" {
  default = 3
}

variable "parameter_group_name" {
  default = "default.redis4.0"
}

variable "engine_version" {
  default = 4.0
}

variable "subnet_group_name" {}
variable "vpc_id" {}

variable "availability_zones" {
  type = "list"
}


variable "snapshot_retention_limit" {
  default = 0
}