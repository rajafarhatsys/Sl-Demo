set +x
cd terraform
aws s3 cp s3://node-aws-artifact/amivar_api.tf amivar_api.tf
aws s3 cp s3://node-aws-artifact/amivar_web.tf amivar_web.tf

terraform init
terraform apply -auto-approve -var RDS_PASSWORD=$RDS_PASSWORD