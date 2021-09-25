vpc_name = "demo-vpc"
aws_region = "us-east-2"
cidr       = "10.0.0.0/16"
azs        = ["eu-west-1a", "eu-west-1b"]
public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets = ["10.0.11.0/24", "10.0.12.0/24"]
vpc_tags = {
  "Terraform" = "true"
  Environment = "Dev"
}