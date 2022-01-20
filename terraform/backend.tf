terraform {
  backend "s3" {
    bucket = "node-aws-artifact"
    key = "node-aws-artifact.tfstate"
    access_key = "AKIAVSRNOMAYZ4DG5UXI"
    secret_key = "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"
    region = "us-west-2"
  }
}