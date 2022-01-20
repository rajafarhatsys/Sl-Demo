terraform {
  backend "s3" {
    bucket = "node-aws-artifact"
    key = "node-aws-artifact.tfstate"
    region = "us-west-2"
  }
}