data "aws_alb_target_group" "alb_target_group_lookup" {
  for_each = var.alb_target_group_lookup

  arn                               = each.value.arn
  load_balancing_anomaly_mitigation = each.value.load_balancing_anomaly_mitigation
  name                              = each.value.name
  region                            = each.value.region
  tags                              = each.value.tags
}

