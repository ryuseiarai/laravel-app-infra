data "aws_region" "current" {}

data "aws_vpc_endpoint_service" "ecr_dkr" {
  service = "ecr.dkr"
}

data "aws_vpc_endpoint_service" "ecr_api" {
  service = "ecr.api"
}

data "aws_vpc_endpoint_service" "logs" {
  service = "logs"
}

data "aws_vpc_endpoint_service" "s3" {
  service      = "s3"
  service_type = "Gateway"
}

data "aws_vpc_endpoint_service" "ssm" {
  service = "ssm"
}

data "aws_vpc_endpoint_service" "ssmmessages" {
  service = "ssmmessages"
}