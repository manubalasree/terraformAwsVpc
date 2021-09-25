# create backedn confoguration https://www.padok.fr/en/blog/terraform-s3-bucket-aws
# sticking to partial config expect vars to be passed on init
terraform {
  backend "s3" {}
}