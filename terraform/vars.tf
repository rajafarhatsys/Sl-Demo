variable "RDS_PASSWORD" {
  default = "123321"
}

variable "API_PORT" {
  default = "5432"
}

variable "WEB_PORT" {
  default =  "8080"
}

variable "AWS_REGION" {
  default = "us-west-2"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}


variable "AMIS" {
  type = map
  default = {
    us-west-2="ami-0892d3c7ee96c0bf7"
  }
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}