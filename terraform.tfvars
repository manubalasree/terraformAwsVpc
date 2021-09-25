vpc_name = "demo-vpc"
aws_region = "us-east-2"
cidr       = "10.0.0.0/16"
azs        = ["eu-east-2a", "eu-east-2b", "us-east-2c"]
public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.2.0/24"]
private_subnets = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
vpc_tags = {
  "Terraform" = "true"
  Environment = "Dev"
}