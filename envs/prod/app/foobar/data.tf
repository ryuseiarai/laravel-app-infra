data "aws_caller_identity" "self" {}

data "aws_region" "current" {}

data "terraform_remote_state" "network_main" {
  backend = "s3"

  config = {
    bucket = "common-s3-bucket-tfstate"
    key    = "sandbox/laravel/prod/network/main_v1.0.0.tstate"
    region = "ap-northeast-1"
  }
}

data "terraform_remote_state" "routing_appfoobar_link" {
  backend = "s3"

  config = {
    bucket = "common-s3-bucket-tfstate"
    key    = "sandbox/laravel/prod/routing/appfoobar_v1.0.0.tstate"
    region = "ap-northeast-1"
  }
}

data "terraform_remote_state" "log_app_foobar" {
  backend = "s3"

  config = {
    bucket = "common-s3-bucket-tfstate"
    key    = "sandbox/laravel/prod/log/app_foobar_v1.0.0.tstate"
    region = "ap-northeast-1"
  }
}

data "aws_kms_alias" "ssm" {
  name = "alias/aws/ssm"
}