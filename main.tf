resource "aws_elasticache_replication_group" "redis_cluster" {
  count           = "${length(var.elastic-clusters)}"

  replication_group_id = "${lookup(var.elastic-clusters[count.index], "cluster_id")}"
  replication_group_description = "${lookup(var.elastic-clusters[count.index], "cluster_description")}"
  node_type = "${lookup(var.elastic-clusters[count.index], "node_type")}"
  port = 6379
  parameter_group_name = "${lookup(var.elastic-clusters[count.index], "parameter_group_name")}"
  automatic_failover_enabled = true
  availability_zones = ["${var.availability_zones}"]
  security_group_ids = ["${lookup(var.elastic-clusters[count.index], "securiy_group_id")}"]
  number_cache_clusters = "${lookup(var.elastic-clusters[count.index], "num_cache_nodes")}"
  snapshot_retention_limit = "${lookup(var.elastic-clusters[count.index], "snapshot_retention_limit")}"
  engine_version = "${lookup(var.elastic-clusters[count.index], "engine_version")}"
  subnet_group_name = "${lookup(var.elastic-clusters[count.index], "subnet_group_name")}"
}
