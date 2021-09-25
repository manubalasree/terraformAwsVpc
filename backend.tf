# create backedn confoguration https://www.padok.fr/en/blog/terraform-s3-bucket-aws

terraform {
  backend "s3" {
    bucket         = "tfs3backend-639232547460"
    key            = "terraformawsvpc/terraform.tfstate"
    region         = "us-east-2"
    encrypt        =  true
    kms_key_id     = "19f4ef43-74a8-4d23-82e3-2e4f2936a948"
  }
}