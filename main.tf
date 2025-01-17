module vpc {
  source  = "terraform-aws-modules/vpc/aws"
  version = "v3.7.0"

  
  name            = var.vpc_name
  cidr            = var.cidr 
  azs             = var.azs
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  # Have one NAT Gateway per AZ to give private subnets access to the external internet
  enable_nat_gateway     = true
  single_nat_gateway     = false
  one_nat_gateway_per_az = true

  # Support VPC Flow Logs
  enable_flow_log                      = true
  create_flow_log_cloudwatch_log_group = true
  create_flow_log_cloudwatch_iam_role  = true
  flow_log_max_aggregation_interval    = 60

  tags = var.vpc_tags
}